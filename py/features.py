# TheCat SDK feature factory

from feature.base_feature import TheCatBaseFeature
from feature.test_feature import TheCatTestFeature


def _make_feature(name):
    features = {
        "base": lambda: TheCatBaseFeature(),
        "test": lambda: TheCatTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
