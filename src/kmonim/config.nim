import
  nimsuggest/sexp

type
  Key* = string
  Pair* = (string, SexpNode)
  Config* = object
    device*: IO
    fallthrough*: bool
    allowCmd*: bool
    src*: Layer
    aliases*: Aliases
    maps*: seq[Layer]
  IO = object
    input*: SexpNode
    output*: SexpNode
  Layer* = object of RootObj
    name*: string
  Aliases = seq[Pair]

proc makeConfig*(): Config =
  result.device.input = parseSexp """(iokit_name "Apple Internal Keyboard / Trackpad")"""
  result.device.output = parseSexp "(kext)"

proc toSexp*(cfg: Config): SexpNode =
  result = parseSexp "(lol)"
