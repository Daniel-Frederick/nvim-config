vim.opt.number = true -- Line Numbers
vim.opt.relativenumber = true -- Relative Line Numbers

-- Indenting
vim.opt.tabstop = 4 -- Tab space length
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 -- Shift length for ">>" cmd
vim.opt.expandtab = true -- Use spaces instead of Tab character
vim.opt.smartindent = true -- Auto indent my code

vim.opt.wrap = false -- Don't wrap text

vim.opt.swapfile = false -- No swap files
vim.opt.backup = false -- No backup files when saving

-- Undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Path to undo file
vim.opt.undofile = true -- Keep undo history after closing Neovim

vim.opt.hlsearch = false -- Remove Highlighting for searched phrases

-- vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- scroll up and down cutoff
vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50 -- Update idle time triggering
vim.opt.colorcolumn = "80" -- Bar on the Right ->

