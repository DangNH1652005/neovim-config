return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" },
        capabilities = capabilities,
      })

      vim.lsp.config("jdtls", {
        cmd = { "jdtls" }, -- kiểm tra lại tên binary thật, xem ghi chú bên dưới
        capabilities = capabilities,
      })

      vim.lsp.enable({ "lua_ls", "jdtls" })

      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
