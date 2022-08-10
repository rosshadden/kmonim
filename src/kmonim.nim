import nimsuggest/sexp

import kmonim/kmonad

proc `+`(lhs, rhs: SexpNode): SexpNode =
  case lhs.kind:
    of SList:
      result = lhs.copy()
      result.add(rhs)
    else:
      result = newSList()
      result.add(lhs)
      result.add(rhs)

# proc thread(forms: varargs[string]

when isMainModule:
  let a = parseSexp ("(foo bar (baz (qux)))")
  let b = parseSexp ("(a b \"c\")")
  let c = a + b

  echo "a:\t", a
  echo "b:\t", b
  echo "c:\t", c

  echo c.pretty()
  echo repr b
