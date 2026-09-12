return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",

    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },

    opts = {
      ensure_installed = {
      },
    },
  },

  {
    "neovim/nvim-lspconfig",

    config = function()
      vim.lsp.enable("lua_ls")
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
    end,
  },
}
