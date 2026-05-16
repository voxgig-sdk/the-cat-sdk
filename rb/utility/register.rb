# TheCat SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

TheCatUtility.registrar = ->(u) {
  u.clean = TheCatUtilities::Clean
  u.done = TheCatUtilities::Done
  u.make_error = TheCatUtilities::MakeError
  u.feature_add = TheCatUtilities::FeatureAdd
  u.feature_hook = TheCatUtilities::FeatureHook
  u.feature_init = TheCatUtilities::FeatureInit
  u.fetcher = TheCatUtilities::Fetcher
  u.make_fetch_def = TheCatUtilities::MakeFetchDef
  u.make_context = TheCatUtilities::MakeContext
  u.make_options = TheCatUtilities::MakeOptions
  u.make_request = TheCatUtilities::MakeRequest
  u.make_response = TheCatUtilities::MakeResponse
  u.make_result = TheCatUtilities::MakeResult
  u.make_point = TheCatUtilities::MakePoint
  u.make_spec = TheCatUtilities::MakeSpec
  u.make_url = TheCatUtilities::MakeUrl
  u.param = TheCatUtilities::Param
  u.prepare_auth = TheCatUtilities::PrepareAuth
  u.prepare_body = TheCatUtilities::PrepareBody
  u.prepare_headers = TheCatUtilities::PrepareHeaders
  u.prepare_method = TheCatUtilities::PrepareMethod
  u.prepare_params = TheCatUtilities::PrepareParams
  u.prepare_path = TheCatUtilities::PreparePath
  u.prepare_query = TheCatUtilities::PrepareQuery
  u.result_basic = TheCatUtilities::ResultBasic
  u.result_body = TheCatUtilities::ResultBody
  u.result_headers = TheCatUtilities::ResultHeaders
  u.transform_request = TheCatUtilities::TransformRequest
  u.transform_response = TheCatUtilities::TransformResponse
}
