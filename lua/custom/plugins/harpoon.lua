return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list():prepend()
    end)
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<A-h>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<A-j>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<A-k>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<A-l>', function()
      harpoon:list():select(4)
    end)

    vim.keymap.set('n', '<leader><A-h>', function()
      harpoon:list():replace_at(1)
    end)
    vim.keymap.set('n', '<leader><A-j>', function()
      harpoon:list():replace_at(2)
    end)
    vim.keymap.set('n', '<leader><A-k>', function()
      harpoon:list():replace_at(3)
    end)
    vim.keymap.set('n', '<leader><A-l>', function()
      harpoon:list():replace_at(4)
    end)
  end,
}
