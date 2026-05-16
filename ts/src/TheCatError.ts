
import { Context } from './Context'


class TheCatError extends Error {

  isTheCatError = true

  sdk = 'TheCat'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  TheCatError
}

