<?php
declare(strict_types=1);

// TheCat SDK utility: prepare_body

class TheCatPrepareBody
{
    public static function call(TheCatContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
