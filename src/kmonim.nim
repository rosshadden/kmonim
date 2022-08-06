import nimsuggest/sexp

import kmonim/kmonad

when isMainModule:
  let s = parseSexp ("(foo bar (baz (qux)))")

  echo repr s
