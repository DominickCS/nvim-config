return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false,
          cmd = { "lua-language-server" },
          settings = {
            Lua = {
              runtime = {
                version = "LuaJIT",
              },
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
              },
              telemetry = {
                enable = false,
              },
            },
          },
        },
      },
    },
  },
}
