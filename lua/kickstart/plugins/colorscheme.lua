return {
  '2giosangmitom/nightfall.nvim',
  lazy = false,
  priority = 1000,
  opts = {}, -- Add custom configuration here
  config = function(_, opts)
    require('nightfall').setup {
      color_overrides = {
        -- all = { foreground = '#ffffff' },
        -- nightfall = { background = '#ff0000' },
      },
      highlight_overrides = {
        all = {
          -- Normal = { bg = '#120809' },
        },
        nightfall = function(colors)
          return {
            -- Normal = { bg = colors.black },
          }
        end,
        maron = {
          -- Normal = { fg = '#ffffff' },
        },
      },
    }
    vim.cmd 'colorscheme nightfall' -- Choose from: nightfall, deeper-night, maron, nord
  end,
}
