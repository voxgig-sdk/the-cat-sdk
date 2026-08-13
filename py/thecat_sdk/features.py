# TheCat SDK feature factory

from thecat_sdk.feature.base_feature import TheCatBaseFeature
from thecat_sdk.feature.test_feature import TheCatTestFeature


def _make_feature(name):
    features = {
        "base": lambda: TheCatBaseFeature(),
        "test": lambda: TheCatTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
