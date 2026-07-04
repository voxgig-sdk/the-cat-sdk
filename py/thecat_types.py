# Typed models for the TheCat SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Breed:
    description: Optional[str] = None
    id: Optional[str] = None
    life_span: Optional[str] = None
    name: Optional[str] = None
    origin: Optional[str] = None
    temperament: Optional[str] = None
    weight: Optional[dict] = None
    wikipedia_url: Optional[str] = None


@dataclass
class BreedListMatch:
    description: Optional[str] = None
    id: Optional[str] = None
    life_span: Optional[str] = None
    name: Optional[str] = None
    origin: Optional[str] = None
    temperament: Optional[str] = None
    weight: Optional[dict] = None
    wikipedia_url: Optional[str] = None


@dataclass
class Search:
    breed: Optional[list] = None
    category: Optional[list] = None
    height: Optional[int] = None
    id: Optional[str] = None
    url: Optional[str] = None
    width: Optional[int] = None


@dataclass
class SearchListMatch:
    breed: Optional[list] = None
    category: Optional[list] = None
    height: Optional[int] = None
    id: Optional[str] = None
    url: Optional[str] = None
    width: Optional[int] = None

