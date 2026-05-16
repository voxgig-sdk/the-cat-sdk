<?php
declare(strict_types=1);

// TheCat SDK utility: result_body

class TheCatResultBody
{
    public static function call(TheCatContext $ctx): ?TheCatResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
