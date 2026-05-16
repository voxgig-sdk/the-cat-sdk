# TheCat SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module TheCatFeatures
  def self.make_feature(name)
    case name
    when "base"
      TheCatBaseFeature.new
    when "test"
      TheCatTestFeature.new
    else
      TheCatBaseFeature.new
    end
  end
end
