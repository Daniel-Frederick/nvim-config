-- Config & Plugins
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy") -- Always keep this last 

-- LSP - Don't forget to download each lang server
vim.lsp.enable("clangd")
vim.lsp.enable("pyright") -- npm install -g pyright

vim.cmd("colorscheme catppuccin")

