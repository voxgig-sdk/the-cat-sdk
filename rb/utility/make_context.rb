# TheCat SDK utility: make_context
require_relative '../core/context'
module TheCatUtilities
  MakeContext = ->(ctxmap, basectx) {
    TheCatContext.new(ctxmap, basectx)
  }
end
