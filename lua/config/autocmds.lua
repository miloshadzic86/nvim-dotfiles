-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

local telescope = require("telescope.builtin")

local function search_by_file_type(command_name, file_pattern, prompt_title)
  vim.api.nvim_create_user_command(command_name, function()
    telescope.find_files({
      find_command = { "rg", "--files", "--glob", file_pattern },
      prompt_title = prompt_title,
    })
  end, {})
end

local function search_by_directory(command_name, dir, prompt_title)
  vim.api.nvim_create_user_command(command_name, function()
    telescope.find_files({
      cwd = vim.fn.expand(dir),
      prompt_title = prompt_title,
    })
  end, {})
end

search_by_file_type("TelescopeGo", "*.go", "Find golang Files")
search_by_file_type("TelescopeMD", "*.md", "Find markdown Files")
search_by_file_type("TelescopeMDX", "*.mdx", "Find mdx Files")
search_by_file_type("TelescopeTSX", "*.tsx", "Find tsx Files")
search_by_file_type("TelescopeTS", "*.ts", "Find ts Files")
search_by_file_type("TelescopeAstro", "*.astro", "Find astro Files")
search_by_directory("SearchNotes", "~/dev/notes", "Search markdown notes")
