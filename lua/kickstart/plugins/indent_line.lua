--[[
return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = function(_, opts)
      local highlight = {
        'RainbowRed',
        'RainbowYellow',
        'RainbowBlue',
        'RainbowOrange',
        'RainbowGreen',
        'RainbowViolet',
        'RainbowCyan',
      }
      local hooks = require 'ibl.hooks'
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
        vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
        vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
        vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
        vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
        vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
        vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
      end)

      vim.g.rainbow_delimiters = { highlight = highlight }
      require('ibl').setup { scope = { highlight = highlight } }
      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
}
]]
--

--[[
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
]]
--

return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable 'lukas-reineke/indent-blankline.nvim'
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
}
