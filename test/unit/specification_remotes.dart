// GENERATED CODE - DO NOT MODIFY BY HAND
Map<String, String> specificationRemotes = {
  "http://localhost:1234/baseUriChange/folderInteger.json": r"""{
    "type": "integer"
}
""",
  "http://localhost:1234/baseUriChangeFolder/folderInteger.json": r"""{
    "type": "integer"
}
""",
  "http://localhost:1234/baseUriChangeFolderInSubschema/folderInteger.json": r"""{
    "type": "integer"
}
""",
  "http://localhost:1234/draft-next/format-assertion-false.json": r"""{
    "$id": "http://localhost:1234/draft-next/format-assertion-false.json",
    "$schema": "https://json-schema.org/draft/next/schema",
    "$vocabulary": {
        "https://json-schema.org/draft/next/vocab/core": true,
        "https://json-schema.org/draft/next/vocab/format-assertion": false
    },
    "allOf": [
        { "$ref": "https://json-schema.org/draft/next/schema/meta/core" },
        { "$ref": "https://json-schema.org/draft/next/schema/meta/format-assertion" }
    ]
}
""",
  "http://localhost:1234/draft-next/format-assertion-true.json": r"""{
    "$id": "http://localhost:1234/draft-next/format-assertion-true.json",
    "$schema": "https://json-schema.org/draft/next/schema",
    "$vocabulary": {
        "https://json-schema.org/draft/next/vocab/core": true,
        "https://json-schema.org/draft/next/vocab/format-assertion": true
    },
    "allOf": [
        { "$ref": "https://json-schema.org/draft/next/schema/meta/core" },
        { "$ref": "https://json-schema.org/draft/next/schema/meta/format-assertion" }
    ]
}
""",
  "http://localhost:1234/draft-next/metaschema-no-validation.json": r"""{
    "$id": "http://localhost:1234/draft-next/metaschema-no-validation.json",
    "$vocabulary": {
        "https://json-schema.org/draft/next/vocab/applicator": true,
        "https://json-schema.org/draft/next/vocab/core": true
    },
    "allOf": [
        { "$ref": "https://json-schema.org/draft/next/meta/applicator" },
        { "$ref": "https://json-schema.org/draft/next/meta/core" }
    ]
}
""",
  "http://localhost:1234/draft2019-09/ignore-prefixItems.json": r"""{
    "$id": "http://localhost:1234/draft2019-09/ignore-prefixItems.json",
    "$schema": "https://json-schema.org/draft/2019-09/schema",
    "prefixItems": [
        {"type": "string"}
    ]
}
""",
  "http://localhost:1234/draft2019-09/metaschema-no-validation.json": r"""{
    "$id": "http://localhost:1234/draft2019-09/metaschema-no-validation.json",
    "$vocabulary": {
        "https://json-schema.org/draft/2019-09/vocab/applicator": true,
        "https://json-schema.org/draft/2019-09/vocab/core": true
    },
    "allOf": [
        { "$ref": "https://json-schema.org/draft/2019-09/meta/applicator" },
        { "$ref": "https://json-schema.org/draft/2019-09/meta/core" }
    ]
}
""",
  "http://localhost:1234/draft2020-12/baseUriChange/folderInteger.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "type": "integer"
}
""",
  "http://localhost:1234/draft2020-12/baseUriChangeFolder/folderInteger.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "type": "integer"
}
""",
  "http://localhost:1234/draft2020-12/baseUriChangeFolderInSubschema/folderInteger.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "type": "integer"
}
""",
  "http://localhost:1234/draft2020-12/detached-dynamicref.json": r"""{
  "$id": "http://localhost:1234/draft2020-12/detached-dynamicref.json",
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$defs": {
    "foo": {
      "$dynamicRef": "#detached"
    },
    "detached": {
      "$dynamicAnchor": "detached",
      "type": "integer"
    }
  }
}""",
  "http://localhost:1234/draft2020-12/detached-ref.json": r"""{
  "$id": "http://localhost:1234/draft2020-12/detached-ref.json",
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$defs": {
    "foo": {
      "$ref": "#detached"
    },
    "detached": {
      "$anchor": "detached",
      "type": "integer"
    }
  }
}""",
  "http://localhost:1234/draft2020-12/different-id-ref-string.json": r"""{
    "$id": "http://localhost:1234/draft2020-12/real-id-ref-string.json",
    "$defs": {"bar": {"type": "string"}},
    "$ref": "#/$defs/bar"
}
""",
  "http://localhost:1234/draft2020-12/extendible-dynamic-ref.json": r"""{
    "description": "extendible array",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$id": "http://localhost:1234/draft2020-12/extendible-dynamic-ref.json",
    "type": "object",
    "properties": {
        "elements": {
            "type": "array",
            "items": {
                "$dynamicRef": "#elements"
            }
        }
    },
    "required": ["elements"],
    "additionalProperties": false,
    "$defs": {
        "elements": {
            "$dynamicAnchor": "elements"
        }
    }
}
""",
  "http://localhost:1234/draft2020-12/format-assertion-false.json": r"""{
    "$id": "http://localhost:1234/draft2020-12/format-assertion-false.json",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$vocabulary": {
        "https://json-schema.org/draft/2020-12/vocab/core": true,
        "https://json-schema.org/draft/2020-12/vocab/format-assertion": false
    },
    "$dynamicAnchor": "meta",
    "allOf": [
        { "$ref": "https://json-schema.org/draft/2020-12/meta/core" },
        { "$ref": "https://json-schema.org/draft/2020-12/meta/format-assertion" }
    ]
}
""",
  "http://localhost:1234/draft2020-12/format-assertion-true.json": r"""{
    "$id": "http://localhost:1234/draft2020-12/format-assertion-true.json",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$vocabulary": {
        "https://json-schema.org/draft/2020-12/vocab/core": true,
        "https://json-schema.org/draft/2020-12/vocab/format-assertion": true
    },
    "$dynamicAnchor": "meta",
    "allOf": [
        { "$ref": "https://json-schema.org/draft/2020-12/meta/core" },
        { "$ref": "https://json-schema.org/draft/2020-12/meta/format-assertion" }
    ]
}
""",
  "http://localhost:1234/draft2020-12/integer.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "type": "integer"
}
""",
  "http://localhost:1234/draft2020-12/locationIndependentIdentifier.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$defs": {
        "refToInteger": {
            "$ref": "#foo"
        },
        "A": {
            "$anchor": "foo",
            "type": "integer"
        }
    }
}
""",
  "http://localhost:1234/draft2020-12/metaschema-no-validation.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$id": "http://localhost:1234/draft2020-12/metaschema-no-validation.json",
    "$vocabulary": {
        "https://json-schema.org/draft/2020-12/vocab/applicator": true,
        "https://json-schema.org/draft/2020-12/vocab/core": true
    },
    "$dynamicAnchor": "meta",
    "allOf": [
        { "$ref": "https://json-schema.org/draft/2020-12/meta/applicator" },
        { "$ref": "https://json-schema.org/draft/2020-12/meta/core" }
    ]
}
""",
  "http://localhost:1234/draft2020-12/metaschema-optional-vocabulary.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$id": "http://localhost:1234/draft2020-12/metaschema-optional-vocabulary.json",
    "$vocabulary": {
        "https://json-schema.org/draft/2020-12/vocab/validation": true,
        "https://json-schema.org/draft/2020-12/vocab/core": true,
        "http://localhost:1234/draft/2020-12/vocab/custom": false
    },
    "$dynamicAnchor": "meta",
    "allOf": [
        { "$ref": "https://json-schema.org/draft/2020-12/meta/validation" },
        { "$ref": "https://json-schema.org/draft/2020-12/meta/core" }
    ]
}
""",
  "http://localhost:1234/draft2020-12/name-defs.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$defs": {
        "orNull": {
            "anyOf": [
                {
                    "type": "null"
                },
                {
                    "$ref": "#"
                }
            ]
        }
    },
    "type": "string"
}
""",
  "http://localhost:1234/draft2020-12/nested-absolute-ref-to-string.json": r"""{
    "$defs": {
        "bar": {
            "$id": "http://localhost:1234/draft2020-12/the-nested-id.json",
            "type": "string"
        }
    },
    "$ref": "http://localhost:1234/draft2020-12/the-nested-id.json"
}
""",
  "http://localhost:1234/draft2020-12/nested/foo-ref-string.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "type": "object",
    "properties": {
        "foo": {"$ref": "string.json"}
    }
}
""",
  "http://localhost:1234/draft2020-12/nested/string.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "type": "string"
}
""",
  "http://localhost:1234/draft2020-12/prefixItems.json": r"""{
    "$id": "http://localhost:1234/draft2020-12/prefixItems.json",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "prefixItems": [
        {"type": "string"}
    ]
}
""",
  "http://localhost:1234/draft2020-12/ref-and-defs.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$id": "http://localhost:1234/draft2020-12/ref-and-defs.json",
    "$defs": {
        "inner": {
            "properties": {
                "bar": { "type": "string" }
            }
        }
    },
    "$ref": "#/$defs/inner"
}
""",
  "http://localhost:1234/draft2020-12/subSchemas.json": r"""{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$defs": {
        "integer": {
            "type": "integer"
        },
        "refToInteger": {
            "$ref": "#/$defs/integer"
        }
    }
}
""",
  "http://localhost:1234/draft2020-12/tree.json": r"""{
    "description": "tree schema, extensible",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$id": "http://localhost:1234/draft2020-12/tree.json",
    "$dynamicAnchor": "node",

    "type": "object",
    "properties": {
        "data": true,
        "children": {
            "type": "array",
            "items": {
                "$dynamicRef": "#node"
            }
        }
    }
}
""",
  "http://localhost:1234/draft2020-12/urn-ref-string.json": r"""{
    "$id": "urn:uuid:feebdaed-ffff-0000-2020-1200deadbeef",
    "$defs": {"bar": {"type": "string"}},
    "$ref": "#/$defs/bar"
}
""",
  "http://localhost:1234/extendible-dynamic-ref.json": r"""{
    "description": "extendible array",
    "$id": "http://localhost:1234/extendible-dynamic-ref.json",
    "type": "object",
    "properties": {
        "elements": {
            "type": "array",
            "items": {
                "$dynamicRef": "#elements"
            }
        }
    },
    "required": ["elements"],
    "additionalProperties": false,
    "$defs": {
        "elements": {
            "$dynamicAnchor": "elements"
        }
    }
}
""",
  "http://localhost:1234/integer.json": r"""{
    "type": "integer"
}
""",
  "http://localhost:1234/name-defs.json": r"""{
    "$defs": {
        "orNull": {
            "anyOf": [
                {
                    "type": "null"
                },
                {
                    "$ref": "#"
                }
            ]
        }
    },
    "type": "string"
}
""",
  "http://localhost:1234/name.json": r"""{
    "definitions": {
        "orNull": {
            "anyOf": [
                {
                    "type": "null"
                },
                {
                    "$ref": "#"
                }
            ]
        }
    },
    "type": "string"
}
""",
  "http://localhost:1234/ref-and-definitions.json": r"""{
    "$id": "http://localhost:1234/ref-and-definitions.json",
    "definitions": {
        "inner": {
            "properties": {
                "bar": { "type": "string" }
            }
        }
    },
    "allOf": [ { "$ref": "#/definitions/inner" } ]
}
""",
  "http://localhost:1234/ref-and-defs.json": r"""{
    "$id": "http://localhost:1234/ref-and-defs.json",
    "$defs": {
        "inner": {
            "properties": {
                "bar": { "type": "string" }
            }
        }
    },
    "$ref": "#/$defs/inner"
}
""",
  "http://localhost:1234/subSchemas-defs.json": r"""{
    "$defs": {
        "integer": {
            "type": "integer"
        },
        "refToInteger": {
            "$ref": "#/$defs/integer"
        }
    }
}
""",
  "http://localhost:1234/subSchemas.json": r"""{
    "integer": {
        "type": "integer"
    },
    "refToInteger": {
        "$ref": "#/integer"
    }
}
""",
  "http://localhost:1234/tree.json": r"""{
    "description": "tree schema, extensible",
    "$id": "http://localhost:1234/tree.json",
    "$dynamicAnchor": "node",

    "type": "object",
    "properties": {
        "data": true,
        "children": {
            "type": "array",
            "items": {
                "$dynamicRef": "#node"
            }
        }
    }
}
"""
};
