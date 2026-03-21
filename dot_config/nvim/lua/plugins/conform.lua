return {
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      -- You can customize some of the format options for the filetype (:help conform.format)
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      cpp = { "clang-format" },
      c = { "clang-format" },
      css = { "prettier" },
      html = { " prettier" },
      config = { "prettier" },
    },
  }),
}
