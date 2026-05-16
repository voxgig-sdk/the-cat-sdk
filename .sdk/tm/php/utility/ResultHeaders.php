<?php
declare(strict_types=1);

// TheCat SDK utility: result_headers

class TheCatResultHeaders
{
    public static function call(TheCatContext $ctx): ?TheCatResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
