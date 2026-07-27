import 'package:json_schema/json_schema.dart';
import 'package:test/test.dart';

/// Regression tests for `$dynamicRef` dynamic-scope handling.
///
/// The official draft2020-12 suite (`dynamicRef.json`) only exercises dynamic
/// references whose resolved target is reached lexically from the originating
/// scope. These tests cover the case the suite misses: a `$dynamicRef` that
/// resolves into a *separate* schema resource which itself contains a nested
/// `$dynamicRef`. That nested reference must still resolve against the dynamic
/// anchor from the originating scope, which only works if the validator threads
/// the dynamic parent through each `$dynamicRef` hop.
void main() {
  group('\$dynamicRef dynamic-scope threading', () {
    test('nested \$dynamicRef in a referenced resource uses the originating scope', () {
      final refProvider = RefProvider.sync((String ref) {
        if (ref == 'https://ex/gen') {
          return {
            '\$id': 'https://ex/gen',
            '\$schema': 'https://json-schema.org/draft/2020-12/schema',
            '\$dynamicAnchor': 'gen',
            'type': 'object',
            'properties': {
              'data': {'\$dynamicRef': '#item'}
            },
            // Permissive default; the entry schema tightens this.
            '\$defs': {
              'item': {'\$dynamicAnchor': 'item'}
            }
          };
        }
        return null;
      });

      final schema = JsonSchema.create(
        {
          '\$id': 'https://ex/strict',
          '\$schema': 'https://json-schema.org/draft/2020-12/schema',
          '\$dynamicRef': 'https://ex/gen#gen',
          '\$defs': {
            'item': {'\$dynamicAnchor': 'item', 'type': 'integer'}
          }
        },
        refProvider: refProvider,
      );

      expect(schema.validate({'data': 5}).isValid, isTrue);
      // Without dynamic-scope threading, `data` resolves to the generic
      // (permissive) `item` anchor and this wrongly validates.
      expect(schema.validate({'data': 'not an integer'}).isValid, isFalse);
    });

    test('\$dynamicRef chained across resources resolves to the outermost anchor', () {
      final refProvider = RefProvider.sync((String ref) {
        switch (ref) {
          case 'https://ex/middle':
            return {
              '\$id': 'https://ex/middle',
              '\$schema': 'https://json-schema.org/draft/2020-12/schema',
              '\$dynamicAnchor': 'mid',
              '\$dynamicRef': 'https://ex/gen#gen',
              // A less-strict `item`; the outermost scope must still win.
              '\$defs': {
                'item': {'\$dynamicAnchor': 'item', 'type': 'number'}
              }
            };
          case 'https://ex/gen':
            return {
              '\$id': 'https://ex/gen',
              '\$schema': 'https://json-schema.org/draft/2020-12/schema',
              '\$dynamicAnchor': 'gen',
              'type': 'object',
              'properties': {
                'data': {'\$dynamicRef': '#item'}
              },
              '\$defs': {
                'item': {'\$dynamicAnchor': 'item'}
              }
            };
          default:
            return null;
        }
      });

      final schema = JsonSchema.create(
        {
          '\$id': 'https://ex/strict',
          '\$schema': 'https://json-schema.org/draft/2020-12/schema',
          '\$dynamicRef': 'https://ex/middle#mid',
          '\$defs': {
            'item': {'\$dynamicAnchor': 'item', 'type': 'integer'}
          }
        },
        refProvider: refProvider,
      );

      expect(schema.validate({'data': 3}).isValid, isTrue);
      // The outermost (integer) anchor must survive two `$dynamicRef` hops, so
      // a non-integer number is rejected even though the middle resource allows
      // numbers.
      expect(schema.validate({'data': 1.5}).isValid, isFalse);
      expect(schema.validate({'data': 'x'}).isValid, isFalse);
    });
  });
}
