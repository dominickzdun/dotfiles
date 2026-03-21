return {
  {
    "catgoose/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = {
          "*", -- Highlight all files by default
        },
        user_default_options = {
          RGB = true, -- #RGB hex codes
          RRGGBB = true, -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes (with alpha)
          names = true, -- "Name" colors like Blue
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
          mode = "background", -- Default display mode
        },
      })
    end,
  },
}
