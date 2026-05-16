package = "voxgig-sdk-the-cat"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/the-cat-sdk.git"
}
description = {
  summary = "TheCat SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["the-cat_sdk"] = "the-cat_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
