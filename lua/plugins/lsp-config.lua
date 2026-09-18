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

      -- Angular
      vim.lsp.config("angularls", {
        cmd = {
          "ngserver",
          "--stdio",
        },

        capabilities = capabilities,

        filetypes = {
          "html",
          "typescript",
        },

        root_markers = {
          "angular.json",
          "project.json",
          "nx.json",
        },
      })

      vim.lsp.enable({
        "lua_ls",
        "jdtls",
        "ts_ls",
        "html",
        "cssls",
        "angularls",
      })


      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
