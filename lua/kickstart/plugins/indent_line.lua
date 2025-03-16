return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = function(_, opts)
      -- other blankline configuration here
      return require('indent-rainbowline').make_opts(opts, {
        -- How transparent should the rainbow colors be.  1 is completely opaque, 0 is invisible. 0.07 by default
        color_transparency = 0.07,
        -- The 24-bit colors to mix with the background.  Specified in hex.
        -- { 0xffff40, 0x79ff79, 0xff79ff, 0x4fecec, } by default
        --   Yellow  ,  Green  ,  Purple ,   Blue  ,
        colors = { 0xFFCB6B, 0xC3E88D, 0xC792EA, 0x82AAFF },
      })
    end,
    dependencies = {
      'TheGLander/indent-rainbowline.nvim',
    },
  },
}
