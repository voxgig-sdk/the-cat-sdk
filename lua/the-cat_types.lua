-- Typed models for the TheCat SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Breed
---@field description? string
---@field id? string
---@field life_span? string
---@field name? string
---@field origin? string
---@field temperament? string
---@field weight? table
---@field wikipedia_url? string

---@class BreedListMatch

---@class Search
---@field breed? table
---@field category? table
---@field height? number
---@field id? string
---@field url? string
---@field width? number

---@class SearchListMatch

local M = {}

return M
