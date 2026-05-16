<?php
declare(strict_types=1);

// TheCat SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class TheCatMakeContext
{
    public static function call(array $ctxmap, ?TheCatContext $basectx): TheCatContext
    {
        return new TheCatContext($ctxmap, $basectx);
    }
}
