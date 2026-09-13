return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      python = { "black" },
      java = { "google-java-format" }, -- nếu bạn muốn format khác kiểu jdtls mặc định
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback", -- nếu formatter ngoài không có, fallback dùng format của LSP (vd jdtls)
    },
  },
}
