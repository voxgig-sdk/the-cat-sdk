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
# @!attribute [rw] limit
#   @return [Integer, nil]
#
# @!attribute [rw] page
#   @return [Integer, nil]
BreedListMatch = Struct.new(
  :limit,
  :page,
  keyword_init: true
)

# Search entity data model.
#
# @!attribute [rw] breeds
#   @return [Array, nil]
#
# @!attribute [rw] categories
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
  :breeds,
  :categories,
  :height,
  :id,
  :url,
  :width,
  keyword_init: true
)

# Request payload for Search#list.
#
# @!attribute [rw] breed_id
#   @return [String, nil]
#
# @!attribute [rw] category_id
#   @return [String, nil]
#
# @!attribute [rw] limit
#   @return [Integer, nil]
#
# @!attribute [rw] mime_type
#   @return [String, nil]
#
# @!attribute [rw] order
#   @return [String, nil]
#
# @!attribute [rw] page
#   @return [Integer, nil]
#
# @!attribute [rw] size
#   @return [String, nil]
SearchListMatch = Struct.new(
  :breed_id,
  :category_id,
  :limit,
  :mime_type,
  :order,
  :page,
  :size,
  keyword_init: true
)

