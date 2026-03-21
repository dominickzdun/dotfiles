return {
  {
    "nvim-mini/mini.surround",
    version = false,
    config = function()
      require("mini.surround").setup({
        -- enable default mappings
        mappings = {
          add = "gsa", -- Add surrounding
          delete = "gsd", -- Delete surrounding
          replace = "gsr", -- Replace surrounding
          find = "gsf", -- Find surrounding
          update_n_lines = "gsn", -- Update lines
        },
      })
    end,
  },
}
