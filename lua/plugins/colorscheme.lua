-- local indigo = "#7F85FF" -- for transparent background
local indigo = "#878DFF" -- for non transparent background
local pink = "#F570D9"
local visible_gray = "#70728D"
local bracket_gray = "#9BA5D5"

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "transparent",
        floats = "transparent",
      },
      -- list of all the colors for tokyonight
      -- https://github.com/folke/tokyonight.nvim/discussions/453
      on_colors = function(colors)
        colors.green1 = indigo
        colors.blue5 = pink
        colors.bg_statusline = colors.none -- makes lualine transparent
        colors.git.add = colors.green
        colors.git.change = colors.yellow
        colors.git.delete = colors.red
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.magenta })
      end,
      on_highlights = function(hl, c)
        hl.Visual = { bg = c.bg_highlight, bold = true }
        hl["@tag.delimiter"] = { fg = c.purple }
        hl["@tag.tsx"] = { fg = pink }
        hl["@punctuation.delimiter"] = { fg = c.fg }
        hl["@punctuation.bracket"] = { fg = bracket_gray }
        hl["@variable.builtin"] = { fg = c.red }
        -- hl["@keyword.import"] = { fg = purple }
        hl.WinSeparator = { fg = c.green }
        hl.FloatBorder = { fg = indigo }
        hl.FloatTitle = { fg = c.green }
        hl.DiagnosticUnnecessary = { fg = visible_gray }
        hl.RenderMarkdownCode = { bg = c.bg_highlight }
        hl.WhichKeyTitle = { fg = c.green }
        hl.WhichKeyBorder = { fg = indigo }
        hl.TelescopeBorder = { fg = indigo }
        hl.TelescopeTitle = { fg = c.green }
        hl.NoiceCmdlinePopupBorder = { fg = indigo }
        hl.NoicePopupmenuSelected = { fg = c.red }
        hl.NoicePopupmenuMatch = { fg = indigo }
        hl.NoiceMini = { fg = c.purple }
        hl.NoiceFormatProgressDone = { bg = c.green, fg = c.bg }
        hl.NoiceFormatProgressTodo = { bg = c.purple, fg = c.bg }
        hl.NoiceLspProgressSpinner = { fg = c.green }
        hl.NoiceLspProgressTitle = { fg = c.green }
        hl.NoiceLspProgressClient = { fg = c.purple }
        hl.NoiceCmdlinePopupTitleCmdline = { fg = c.green }
        hl.NoiceConfirmBorder = { fg = indigo }
        hl.TodoFgTODO = { fg = c.yellow }
        hl.TodoBgTODO = { fg = c.bg_dark, bg = c.yellow, bold = true }
        hl.TodoFgTEST = { fg = c.blue1 }
        hl.TodoBgTEST = { fg = c.bg_dark, bg = c.blue1, bold = true }
        hl.TodoFgWARN = { fg = c.red }
        hl.TodoBgWARN = { fg = c.bg_dark, bg = c.red, bold = true }
        hl.TodoFgHACK = { fg = pink }
        hl.TodoBgHACK = { fg = c.bg_dark, bg = pink, bold = true }
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- enabled = false,
    lazy = true,
    opts = {
      flavour = "mocha", -- latte, frappe (when alacritty is transparent), macchiato, mocha
      no_italic = true,
      transparent_background = true,
      color_overrides = {
        all = {
          -- teal = "#9684fc",
          -- teal = "#FAE3B0",
        },
      },
      -- If you were to do catppuccin again redo all of these colors
      highlight_overrides = {
        all = function(colors)
          return {
            -- ["@tag.delimiter"] = { fg = "#ab9dfd" },
            ["@tag.attribute.tsx"] = { fg = "#ab9dfd" },
            ["@tag.delimiter"] = { fg = colors.flamingo },
            ["@tag.delimiter.astro"] = { fg = "#ab9dfd" },
            ["@tag.attribute.astro"] = { fg = "#ab9dfd" },
            ["@tag.delimiter.tsx"] = { fg = "#ab9dfd" },
            ["@tag.tsx"] = { fg = colors.yellow },
            ["@keyword.export.tsx"] = { fg = colors.lavender },
            ["@keyword.export.typescript"] = { fg = colors.lavender },
            ["@operator"] = { fg = colors.pink },
            ["@markup.link.label"] = { fg = "#9684fc" },
            ["@markup.heading.5.markdown"] = { fg = colors.blue },
            CursorLineNr = { fg = colors.mauve, style = { "bold" } },
            NoiceCmdlinePopupTitle = { fg = colors.mauve, style = { "bold" } },
            NoiceCmdlineIcon = { fg = colors.mauve },
            TodoFgTODO = { fg = colors.yellow },
            TodoBgTODO = { fg = colors.mantle, bg = colors.yellow, style = { "bold" } },
            TodoFgHACK = { fg = colors.mauve },
            TodoBgHACK = { fg = colors.mantle, bg = colors.mauve, style = { "bold" } },
            TodoFgWARN = { fg = colors.red },
            TodoBgWARN = { fg = colors.mantle, bg = colors.red, style = { "bold" } },
            TodoFgNOTE = { fg = colors.blue },
            TodoBgNOTE = { fg = colors.mantle, bg = colors.blue, style = { "bold" } },
            TodoFgTEST = { fg = colors.sapphire },
            TodoBgTEST = { fg = colors.mantle, bg = colors.sapphire, style = { "bold" } },
          }
        end,
      },
      integrations = {
        noice = true,
      },
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = false,
    lazy = true,
    opts = {
      variant = "moon",
      dark_variant = "moon",
      styles = {
        italic = false,
        transparency = true,
      },
    },
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    enabled = false,
    lazy = true,
    opts = {
      -- dark (default) | darker (best) | cool | deep | warm | warmer
      style = "darker",
      transparent = true,
      ending_tildes = false,
      -- toggle_style_key = "<leader>od",
      -- toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer" },
      code_style = {
        comments = "none",
      },
      lualine = {
        transparent = true,
      },
    },
  },
  {
    "eldritch-theme/eldritch.nvim",
    name = "eldritch",
    enabled = false,
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "transparent",
        floats = "transparent",
      },
      lualine_bold = true,
    },
  },
  {
    -- Setup instructions
    -- https://github.com/projekt0n/github-nvim-theme
    -- there is a lualine instructions too
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    opts = {
      options = {
        transparent = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
      -- colorscheme = "catppuccin",
      -- colorscheme = "rose-pine",
      -- colorscheme = "onedark",
      -- colorscheme = "eldritch",
      -- colorscheme = "github_dark_default",
    },
  },
}
