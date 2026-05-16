# TheCat SDK utility: feature_add
module TheCatUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
