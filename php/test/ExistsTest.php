<?php
declare(strict_types=1);

// TheCat SDK exists test

require_once __DIR__ . '/../thecat_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = TheCatSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
