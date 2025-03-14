return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    require('tokyonight').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
    }

    -- Load the colorscheme here.
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
