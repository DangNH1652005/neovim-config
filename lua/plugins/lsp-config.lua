return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua
      vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" },
        capabilities = capabilities,
      })

      -- Java
      vim.lsp.config("jdtls", {
        cmd = { "jdtls" },
        capabilities = capabilities,
      })

      -- TypeScript / JavaScript
      vim.lsp.config("ts_ls", {
        cmd = { "typescript-language-server", "--stdio" },
        capabilities = capabilities,
      })

      -- HTML
      vim.lsp.config("html", {
        cmd = { "vscode-html-language-server", "--stdio" },
        capabilities = capabilities,
      })

      -- CSS
      vim.lsp.config("cssls", {
        cmd = { "vscode-css-language-server", "--stdio" },
        capabilities = capabilities,
      })

      vim.lsp.config("jdtls", {
        cmd = { "jdtls" }, -- kiểm tra lại tên binary thật, xem ghi chú bên dưới
        capabilities = capabilities,
      })

      vim.lsp.enable({ "lua_ls", "jdtls", "ts_ls", "html", "cssls" })

      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
