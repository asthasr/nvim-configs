local lspconfig = require('lspconfig')

lspconfig.sumneko_lua.setup({
  settings = {
    cmd = {
      "/home/blake/.local/bin/lua-language-server",
      "-E",
      "/home/blake/.local/bin/lls/main.lua",
    },
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})
