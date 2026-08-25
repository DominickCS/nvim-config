return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        markdown_oxide = {
          mason = false,
          cmd = { "markdown-oxide" },
          filetypes = { "markdown" },
          root_dir = function(bufnr, on_dir)
            local root = vim.fs.root(bufnr, {
              ".git",
              ".obsidian",
              ".moxide.toml",
            })

            on_dir(root or vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr)))
          end,
        },
      },
    },
  },
}
