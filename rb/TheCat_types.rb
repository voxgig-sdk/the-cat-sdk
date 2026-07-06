# frozen_string_literal: true

# Typed models for the TheCat SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Breed entity data model.
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] life_span
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] origin
#   @return [String, nil]
#
# @!attribute [rw] temperament
#   @return [String, nil]
#
# @!attribute [rw] weight
#   @return [Hash, nil]
#
# @!attribute [rw] wikipedia_url
#   @return [String, nil]
Breed = Struct.new(
  :description,
  :id,
  :life_span,
  :name,
  :origin,
  :temperament,
  :weight,
  :wikipedia_url,
  keyword_init: true
)

# Request payload for Breed#list.
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] life_span
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] origin
#   @return [String, nil]
#
# @!attribute [rw] temperament
#   @return [String, nil]
#
# @!attribute [rw] weight
#   @return [Hash, nil]
#
# @!attribute [rw] wikipedia_url
#   @return [String, nil]
BreedListMatch = Struct.new(
  :description,
  :id,
  :life_span,
  :name,
  :origin,
  :temperament,
  :weight,
  :wikipedia_url,
  keyword_init: true
)

# Search entity data model.
#
# @!attribute [rw] breed
#   @return [Array, nil]
#
# @!attribute [rw] category
#   @return [Array, nil]
#
# @!attribute [rw] height
#   @return [Integer, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
#
# @!attribute [rw] width
#   @return [Integer, nil]
Search = Struct.new(
  :breed,
  :category,
  :height,
  :id,
  :url,
  :width,
  keyword_init: true
)

# Request payload for Search#list.
#
# @!attribute [rw] breed
#   @return [Array, nil]
#
# @!attribute [rw] category
#   @return [Array, nil]
#
# @!attribute [rw] height
#   @return [Integer, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
#
# @!attribute [rw] width
#   @return [Integer, nil]
SearchListMatch = Struct.new(
  :breed,
  :category,
  :height,
  :id,
  :url,
  :width,
  keyword_init: true
)

