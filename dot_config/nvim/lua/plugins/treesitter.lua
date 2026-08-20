return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "lua", "python", "javascript", "html", "css", "bash" },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
