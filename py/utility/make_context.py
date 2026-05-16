# TheCat SDK utility: make_context

from core.context import TheCatContext


def make_context_util(ctxmap, basectx):
    return TheCatContext(ctxmap, basectx)
