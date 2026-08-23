
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  hasFeature(this: any, fn: string) {
    return null != FEATURE_CLASS[fn]
  }


  main = {
    name: 'TheCat',
        slug: "the-cat",
    version: "0.0.1",
    target: "ts",

  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
    },

  }


  options = {
    base: "https://api.thecatapi.com/v1",

    auth: {
      prefix: '',
    },

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      breed: {
      },

      search: {
      },

    }
  }


  entity = {
    "breed": {
      "fields": [
        {
          "name": "description",
          "short": "Description of the breed",
          "type": "`$STRING`"
        },
        {
          "name": "id",
          "short": "Unique identifier for the breed",
          "type": "`$STRING`"
        },
        {
          "name": "life_span",
          "short": "Average life span of the breed",
          "type": "`$STRING`"
        },
        {
          "name": "name",
          "short": "Name of the breed",
          "type": "`$STRING`"
        },
        {
          "name": "origin",
          "short": "Country or region of origin",
          "type": "`$STRING`"
        },
        {
          "name": "temperament",
          "short": "Temperament characteristics of the breed",
          "type": "`$STRING`"
        },
        {
          "name": "weight",
          "type": "`$OBJECT`"
        },
        {
          "name": "wikipedia_url",
          "short": "Wikipedia URL for the breed",
          "type": "`$STRING`"
        }
      ],
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
                    "type": "`$INTEGER`"
                  },
                  {
                    "example": 0,
                    "kind": "query",
                    "name": "page",
                    "orig": "page",
                    "type": "`$INTEGER`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/breeds",
              "parts": [
                "breeds"
              ],
              "select": {
                "exist": [
                  "limit",
                  "page"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "search": {
      "fields": [
        {
          "name": "breeds",
          "short": "Array of breed information if available",
          "type": "`$ARRAY`"
        },
        {
          "name": "categories",
          "short": "Array of categories the image belongs to",
          "type": "`$ARRAY`"
        },
        {
          "name": "height",
          "short": "Height of the image in pixels",
          "type": "`$INTEGER`"
        },
        {
          "name": "id",
          "short": "Unique identifier for the image",
          "type": "`$STRING`"
        },
        {
          "name": "url",
          "short": "URL of the cat image",
          "type": "`$STRING`"
        },
        {
          "name": "width",
          "short": "Width of the image in pixels",
          "type": "`$INTEGER`"
        }
      ],
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
                    "type": "`$STRING`"
                  },
                  {
                    "kind": "query",
                    "name": "category_id",
                    "orig": "category_id",
                    "type": "`$STRING`"
                  },
                  {
                    "example": 1,
                    "kind": "query",
                    "name": "limit",
                    "orig": "limit",
                    "type": "`$INTEGER`"
                  },
                  {
                    "example": "jpg,png",
                    "kind": "query",
                    "name": "mime_type",
                    "orig": "mime_type",
                    "type": "`$STRING`"
                  },
                  {
                    "example": "RANDOM",
                    "kind": "query",
                    "name": "order",
                    "orig": "order",
                    "type": "`$STRING`"
                  },
                  {
                    "example": 0,
                    "kind": "query",
                    "name": "page",
                    "orig": "page",
                    "type": "`$INTEGER`"
                  },
                  {
                    "example": "med",
                    "kind": "query",
                    "name": "size",
                    "orig": "size",
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/images/search",
              "parts": [
                "images",
                "search"
              ],
              "select": {
                "exist": [
                  "breed_id",
                  "category_id",
                  "limit",
                  "mime_type",
                  "order",
                  "page",
                  "size"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}

