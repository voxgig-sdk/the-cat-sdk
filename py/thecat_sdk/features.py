# TheCat SDK feature factory

from thecat_sdk.feature.base_feature import TheCatBaseFeature
from thecat_sdk.feature.test_feature import TheCatTestFeature


_FEATURES = {
    "base": lambda: TheCatBaseFeature(),
    "test": lambda: TheCatTestFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
