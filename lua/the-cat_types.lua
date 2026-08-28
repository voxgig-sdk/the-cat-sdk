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
---@field limit? number
---@field page? number

---@class Search
---@field breeds? table
---@field categories? table
---@field height? number
---@field id? string
---@field url? string
---@field width? number

---@class SearchListMatch
---@field breed_id? string
---@field category_id? string
---@field limit? number
---@field mime_type? string
---@field order? string
---@field page? number
---@field size? string

local M = {}

return M
