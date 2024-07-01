package = "pplus-script"
version = "dev-1"
source = {
  url = "git+https://github.com/PagoPlus/pplus-lua-script-template.git"
}
description = {
  summary = "Script template for PagoPlus",
  detailed = [[
Template to create a Script for Pago Plus.
]],
  homepage = "https://github.com/PagoPlus/pplus-lua-script-template",
  license = "MIT"
}
dependencies = {
  "lua == 5.3",
  "luacheck"
}
build = {
  type = "builtin",
  modules = {
    script = "src/main.lua"
  }
}