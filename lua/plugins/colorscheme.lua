-- To lookup colors use: Telescope highlights

return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
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
        colors.bg_statusline = colors.none
        colors.git.add = colors.green
        colors.git.change = colors.yellow
        colors.git.delete = colors.red
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.magenta })
      end,
      on_highlights = function(hl, c)
        hl.WinSeparator = { fg = c.terminal_black }
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "mocha", -- latte, frappe (when alacritty is transparent), macchiato, mocha
      no_italic = true,
      transparent_background = true,
      color_overrides = {
        all = {

          -- teal = "#9684fc",
          teal = "#FAE3B0",
        },
      },
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
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    config = function()
      require("kanagawa").setup({
        keywordStyle = { italic = false },
        commentStyle = { italic = false },
        -- typeStyle = { bold = true },
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })
    end,
  },
  {
    "oxfist/night-owl.nvim",
    lazy = true,
    config = function()
      require("night-owl").setup({
        italics = false,
        transparent_background = true,
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "tokyonight",
      -- colorscheme = "kanagawa-wave",
      -- colorscheme = "night-owl",
      -- colorscheme = "rose-pine",
      -- colorscheme = "onedark",
    },
  },
}
