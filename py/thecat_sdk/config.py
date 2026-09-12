# TheCat SDK configuration


# The sekreto plugin DEFINITIONS the model selected per feature, imported
# above by name from the modules the catalogue's active `plugin.def`
# entries declare. Handed to each feature (secrets builds its Sekreto
# with them): a provider kind not listed here is unknown to that SDK.
FEATURE_PLUGINS = {
}


_shared_config = None


def shared_config():
    """Return the process-wide config, built once on first use.

    The SDK reads the config on every request and never writes to it, so one
    instance is shared by every client rather than rebuilt per client.

    The returned dict is shared: treat it as read-only. Callers that need to
    mutate should use make_config, which always returns a fresh copy.
    """
    global _shared_config
    if _shared_config is None:
        _shared_config = make_config()
    return _shared_config


def make_config():
    """Build a fresh, fully materialised config dict.

    Every call rebuilds the whole structure, so prefer shared_config unless
    you need a private copy you intend to mutate.
    """
    return {
        "main": {
            "name": "TheCat",
            "slug": "the-cat",
            "version": "0.0.1",
            "target": "py",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
        "transport": "base",
      },
        },
        "options": {
            "base": "https://api.thecatapi.com/v1",
            "auth": {
                "prefix": "",
            },
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "breed": {},
                "search": {},
            },
        },
        "entity": {
      "breed": {
        "fields": [
          {
            "name": "description",
            "short": "Description of the breed",
            "type": "`$STRING`",
          },
          {
            "name": "id",
            "short": "Unique identifier for the breed",
            "type": "`$STRING`",
          },
          {
            "name": "life_span",
            "short": "Average life span of the breed",
            "type": "`$STRING`",
          },
          {
            "name": "name",
            "short": "Name of the breed",
            "type": "`$STRING`",
          },
          {
            "name": "origin",
            "short": "Country or region of origin",
            "type": "`$STRING`",
          },
          {
            "name": "temperament",
            "short": "Temperament characteristics of the breed",
            "type": "`$STRING`",
          },
          {
            "name": "weight",
            "type": "`$OBJECT`",
          },
          {
            "format": "uri",
            "name": "wikipedia_url",
            "short": "Wikipedia URL for the breed",
            "type": "`$STRING`",
          },
        ],
        "id": {
          "field": "id",
          "name": "id",
        },
        "name": "breed",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "args": {
                  "query": [
                    {
                      "example": 10,
                      "kind": "query",
                      "name": "limit",
                      "orig": "limit",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": 0,
                      "kind": "query",
                      "name": "page",
                      "orig": "page",
                      "type": "`$INTEGER`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/breeds",
                "segments": [
                  {
                    "lit": "breeds",
                  },
                ],
                "select": {
                  "exist": [
                    "limit",
                    "page",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "parts": [
                  "breeds",
                ],
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "search": {
        "fields": [
          {
            "name": "breeds",
            "short": "Array of breed information if available",
            "type": "`$ARRAY`",
          },
          {
            "name": "categories",
            "short": "Array of categories the image belongs to",
            "type": "`$ARRAY`",
          },
          {
            "name": "height",
            "short": "Height of the image in pixels",
            "type": "`$INTEGER`",
          },
          {
            "name": "id",
            "short": "Unique identifier for the image",
            "type": "`$STRING`",
          },
          {
            "format": "uri",
            "name": "url",
            "short": "URL of the cat image",
            "type": "`$STRING`",
          },
          {
            "name": "width",
            "short": "Width of the image in pixels",
            "type": "`$INTEGER`",
          },
        ],
        "id": {
          "field": "id",
          "name": "id",
        },
        "name": "search",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "args": {
                  "query": [
                    {
                      "kind": "query",
                      "name": "breed_id",
                      "orig": "breed_id",
                      "type": "`$STRING`",
                    },
                    {
                      "kind": "query",
                      "name": "category_id",
                      "orig": "category_id",
                      "type": "`$STRING`",
                    },
                    {
                      "example": 1,
                      "kind": "query",
                      "name": "limit",
                      "orig": "limit",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": "jpg,png",
                      "kind": "query",
                      "name": "mime_type",
                      "orig": "mime_type",
                      "type": "`$STRING`",
                    },
                    {
                      "example": "RANDOM",
                      "kind": "query",
                      "name": "order",
                      "orig": "order",
                      "type": "`$STRING`",
                    },
                    {
                      "example": 0,
                      "kind": "query",
                      "name": "page",
                      "orig": "page",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": "med",
                      "kind": "query",
                      "name": "size",
                      "orig": "size",
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/images/search",
                "segments": [
                  {
                    "lit": "images",
                  },
                  {
                    "lit": "search",
                  },
                ],
                "select": {
                  "exist": [
                    "breed_id",
                    "category_id",
                    "limit",
                    "mime_type",
                    "order",
                    "page",
                    "size",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "parts": [
                  "images",
                  "search",
                ],
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
