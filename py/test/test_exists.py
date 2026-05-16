# ProjectName SDK exists test

import pytest
from thecat_sdk import TheCatSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = TheCatSDK.test(None, None)
        assert testsdk is not None
