-- TheCat SDK error

local TheCatError = {}
TheCatError.__index = TheCatError


function TheCatError.new(code, msg, ctx)
  local self = setmetatable({}, TheCatError)
  self.is_sdk_error = true
  self.sdk = "TheCat"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function TheCatError:error()
  return self.msg
end


function TheCatError:__tostring()
  return self.msg
end


return TheCatError
