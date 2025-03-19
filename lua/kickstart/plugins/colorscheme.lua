return {
  'marko-cerovac/material.nvim',
  priority = 1000,
  config = function()
    require('material').setup {

      contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
      },

      styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { --[[ italic = true ]]
        },
        strings = { --[[ bold = true ]]
        },
        keywords = {
          italic = true,
        },
        functions = { --[[ bold = true, undercurl = true ]]
        },
        variables = {},
        operators = {
          italic = true,
        },
        types = {
          italic = true,
        },
      },

      plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "coc",
        -- "colorful-winsep",
        -- "dap",
        -- "dashboard",
        -- "eyeliner",
        -- "fidget",
        -- "flash",
        'gitsigns',
        'harpoon',
        -- "hop",
        -- "illuminate",
        'indent-blankline',
        -- "lspsaga",
        'mini',
        'neogit',
        -- "neotest",
        -- "neo-tree",
        -- "neorg",
        -- "noice",
        -- "nvim-cmp",
        -- "nvim-navic",
        'nvim-tree',
        'nvim-web-devicons',
        'rainbow-delimiters',
        -- "sneak",
        'telescope',
        -- "trouble",
        'which-key',
        -- "nvim-notify",
      },

      disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between vertically split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false, -- Hide the end-of-buffer lines
      },

      high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true, -- Enable higher contrast text for darker style
      },

      lualine_style = 'default', -- Lualine style ( can be 'stealth' or 'default' )

      async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)

      custom_colors = nil, -- If you want to override the default colors, set this to a function

      -- Overwrite highlights with your own
      custom_highlights = {
        --------- Purple Italic ---------
        --- `using` statement text
        Macro = {
          italic = true,
          fg = '#C792EA',
        },
        --- Access modifiers text
        ['@keyword'] = {
          italic = true,
          fg = '#C792EA',
        },
        --- `async/await` text
        ['@keyword.coroutine'] = {
          italic = true,
          fg = '#C792EA',
        },
        --- `throw` text
        Exception = {
          italic = true,
          fg = '#C792EA',
        },
        --- For Boolean text
        ['@boolean.c_sharp'] = {
          italic = true,
          fg = '#C792EA',
        },
        --- `null` statement text
        ['@constant.builtin'] = {
          italic = true,
          fg = '#C792EA',
        },
        --- `void` statement text
        ['@type.builtin'] = {
          italic = true,
          fg = '#C792EA',
        },

        --- Yellow Class/'Main' Text ----
        --- Class type text
        ['@type'] = {
          fg = '#FFCB6B',
        },
        --- Class Constructor textj
        ['@constructor'] = {
          fg = '#FFCB6B',
        },
        --- Attributes text
        DiffChange = {
          fg = '#FFCB6B',
        },

        --- White Propery/Member Text ---
        --- Variable Member text
        ['@variable.member'] = {
          fg = '#EEFFFF',
        },
        --- Property text
        ['@property'] = {
          fg = '#EEFFFF',
        },

        ----- Various Other Colors ------
        --- Variable Parameter text
        Identifier = {
          fg = '#F78C6C',
        },
        --- For TODO Comment text
        ['@spell.c_sharp'] = {
          fg = '#717CB4',
          -- fg = '#FFEB95', -- Yellow color
        },
        -- CSPROJ/XML
        ['@tag'] = {
          fg = '#FFCB6B',
        },
        --- Include in CSPROJ
        ['@tag.attribute'] = {
          italic = true,
          fg = '#FFCB6B',
        },
        ['@spell'] = {
          fg = '#C3CEE3',
        },
      },
    }

    vim.g.material_style = 'deep ocean'
    vim.cmd.colorscheme 'material'
  end,
}
