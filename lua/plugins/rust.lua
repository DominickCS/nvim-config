return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          cmd = { "/run/current-system/sw/bin/rust-analyzer" },
        },
      },
    },
  },
}
