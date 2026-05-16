<?php
declare(strict_types=1);

// TheCat SDK base feature

class TheCatBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(TheCatContext $ctx, array $options): void {}
    public function PostConstruct(TheCatContext $ctx): void {}
    public function PostConstructEntity(TheCatContext $ctx): void {}
    public function SetData(TheCatContext $ctx): void {}
    public function GetData(TheCatContext $ctx): void {}
    public function GetMatch(TheCatContext $ctx): void {}
    public function SetMatch(TheCatContext $ctx): void {}
    public function PrePoint(TheCatContext $ctx): void {}
    public function PreSpec(TheCatContext $ctx): void {}
    public function PreRequest(TheCatContext $ctx): void {}
    public function PreResponse(TheCatContext $ctx): void {}
    public function PreResult(TheCatContext $ctx): void {}
    public function PreDone(TheCatContext $ctx): void {}
    public function PreUnexpected(TheCatContext $ctx): void {}
}
