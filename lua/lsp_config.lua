local lspconfig = require('lspconfig')
local home = os.getenv("HOME")

lspconfig.sumneko_lua.setup({
  settings = {
    cmd = {
      home .. "/.local/bin/lua-language-server",
      "-E",
      home .. "/.local/bin/lls/main.lua",
    },
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})
