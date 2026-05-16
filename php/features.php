<?php
declare(strict_types=1);

// TheCat SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class TheCatFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new TheCatBaseFeature();
            case "test":
                return new TheCatTestFeature();
            default:
                return new TheCatBaseFeature();
        }
    }
}
