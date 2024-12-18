-- :!open <your-link-here>
-- g+x to open link on that line
return {
  {
    -- TODO: make a better plugin then this
    "dhruvmanila/browser-bookmarks.nvim",
    enabled = false,
    event = "VeryLazy",
  },
  {
    -- "https://github.com/chrishrb/gx.nvim", -- alternative
    "sontungexpt/url-open",
    event = "VeryLazy",
    cmd = "URLOpenUnderCursor",
    config = function()
      local status_ok, url_open = pcall(require, "url-open")
      if not status_ok then
        return
      end
      url_open.setup({})
    end,
    opts = {
      extra_patterns = {
        {
          pattern = "https://www%.youtube%.com/@([%w-_]+)/videos",
          prefix = "https://www.youtube.com/@",
          suffix = "/videos",
          file_patterns = nil,
          excluded_file_patterns = nil,
          extra_condition = nil,
        },
      },
    },
  },
}
