<?php
declare(strict_types=1);

// TheCat SDK utility: feature_add

class TheCatFeatureAdd
{
    public static function call(TheCatContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
