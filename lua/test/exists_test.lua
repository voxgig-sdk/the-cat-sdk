-- TheCat SDK exists test

local sdk = require("the-cat_sdk")

describe("TheCatSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
