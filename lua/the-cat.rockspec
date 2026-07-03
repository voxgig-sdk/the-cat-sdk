package = "voxgig-sdk-the-cat"
version = "0.0.1-1"
source = {
  -- git+https (GitHub dropped git:// in 2022); pin the install to the release
  -- tag pushed by `make publish`, and point at the lua/ subdir of the monorepo.
  url = "git+https://github.com/voxgig-sdk/the-cat-sdk.git",
  tag = "lua/v0.0.1",
  dir = "the-cat-sdk/lua"
}
description = {
  summary = "Unofficial generated Lua SDK for the The Cat public API. Not affiliated with or endorsed by the upstream API provider.",
  homepage = "https://github.com/voxgig-sdk/the-cat-sdk",
  issues_url = "https://github.com/voxgig-sdk/the-cat-sdk/issues",
  license = "MIT",
  labels = { "voxgig", "sdk", "generated-sdk", "openapi", "api-client", "the-cat" }
}
dependencies = {
  "lua >= 5.3",
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
