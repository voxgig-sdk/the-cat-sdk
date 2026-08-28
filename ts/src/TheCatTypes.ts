// Typed models for the TheCat SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Breed {
  description?: string
  id?: string
  life_span?: string
  name?: string
  origin?: string
  temperament?: string
  weight?: Record<string, any>
  wikipedia_url?: string
}

export interface BreedListMatch {
  limit?: number
  page?: number
}

export interface Search {
  breeds?: any[]
  categories?: any[]
  height?: number
  id?: string
  url?: string
  width?: number
}

export interface SearchListMatch {
  breed_id?: string
  category_id?: string
  limit?: number
  mime_type?: string
  order?: string
  page?: number
  size?: string
}

