# TheCat SDK exists test

require "minitest/autorun"
require_relative "../TheCat_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = TheCatSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
