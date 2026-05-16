<?php
declare(strict_types=1);

// TheCat SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

TheCatUtility::setRegistrar(function (TheCatUtility $u): void {
    $u->clean = [TheCatClean::class, 'call'];
    $u->done = [TheCatDone::class, 'call'];
    $u->make_error = [TheCatMakeError::class, 'call'];
    $u->feature_add = [TheCatFeatureAdd::class, 'call'];
    $u->feature_hook = [TheCatFeatureHook::class, 'call'];
    $u->feature_init = [TheCatFeatureInit::class, 'call'];
    $u->fetcher = [TheCatFetcher::class, 'call'];
    $u->make_fetch_def = [TheCatMakeFetchDef::class, 'call'];
    $u->make_context = [TheCatMakeContext::class, 'call'];
    $u->make_options = [TheCatMakeOptions::class, 'call'];
    $u->make_request = [TheCatMakeRequest::class, 'call'];
    $u->make_response = [TheCatMakeResponse::class, 'call'];
    $u->make_result = [TheCatMakeResult::class, 'call'];
    $u->make_point = [TheCatMakePoint::class, 'call'];
    $u->make_spec = [TheCatMakeSpec::class, 'call'];
    $u->make_url = [TheCatMakeUrl::class, 'call'];
    $u->param = [TheCatParam::class, 'call'];
    $u->prepare_auth = [TheCatPrepareAuth::class, 'call'];
    $u->prepare_body = [TheCatPrepareBody::class, 'call'];
    $u->prepare_headers = [TheCatPrepareHeaders::class, 'call'];
    $u->prepare_method = [TheCatPrepareMethod::class, 'call'];
    $u->prepare_params = [TheCatPrepareParams::class, 'call'];
    $u->prepare_path = [TheCatPreparePath::class, 'call'];
    $u->prepare_query = [TheCatPrepareQuery::class, 'call'];
    $u->result_basic = [TheCatResultBasic::class, 'call'];
    $u->result_body = [TheCatResultBody::class, 'call'];
    $u->result_headers = [TheCatResultHeaders::class, 'call'];
    $u->transform_request = [TheCatTransformRequest::class, 'call'];
    $u->transform_response = [TheCatTransformResponse::class, 'call'];
});
