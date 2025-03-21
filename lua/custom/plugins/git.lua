--[[
return {
  'tpope/vim-fugitive',
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>gs', ':G<CR>', { desc = 'Git status' })
  end,
}
]]

return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    -- "ibhagwan/fzf-lua",              -- optional
    -- "echasnovski/mini.pick",         -- optional
  },
  config = true,
}
