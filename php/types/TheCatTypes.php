<?php
declare(strict_types=1);

// Typed models for the TheCat SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Breed entity data model. */
class Breed
{
    public ?string $description = null;
    public ?string $id = null;
    public ?string $life_span = null;
    public ?string $name = null;
    public ?string $origin = null;
    public ?string $temperament = null;
    public ?array $weight = null;
    public ?string $wikipedia_url = null;
}

/** Match filter for Breed#list (any subset of Breed fields). */
class BreedListMatch
{
    public ?string $description = null;
    public ?string $id = null;
    public ?string $life_span = null;
    public ?string $name = null;
    public ?string $origin = null;
    public ?string $temperament = null;
    public ?array $weight = null;
    public ?string $wikipedia_url = null;
}

/** Search entity data model. */
class Search
{
    public ?array $breed = null;
    public ?array $category = null;
    public ?int $height = null;
    public ?string $id = null;
    public ?string $url = null;
    public ?int $width = null;
}

/** Match filter for Search#list (any subset of Search fields). */
class SearchListMatch
{
    public ?array $breed = null;
    public ?array $category = null;
    public ?int $height = null;
    public ?string $id = null;
    public ?string $url = null;
    public ?int $width = null;
}

