return {
  '0xstepit/flow.nvim',
  lazy = false,
  priority = 1000,
  tag = 'v2.0.2',
  config = function()
    require('flow').setup {
      theme = {
        style = 'dark', --  "dark" | "light"
        contrast = 'high', -- "default" | "high"
        transparent = false, -- true | false
      },
      colors = {
        mode = 'default', -- "default" | "dark" | "light"
        fluo = 'pink', -- "pink" | "cyan" | "yellow" | "orange" | "green"
        custom = {
          saturation = '', -- "" | string representing an integer between 0 and 100
          light = '', -- "" | string representing an integer between 0 and 100
        },
      },
      ui = {
        borders = 'inverse', -- "theme" | "inverse" | "fluo" | "none"
        aggressive_spell = false, -- true | false
      },
    }
    vim.cmd 'colorscheme flow'
  end,
}
