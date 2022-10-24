--[[ opts.lua ]]
local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g


-- [[ Variables ]]
-- enabling support for 256 colors
g.t_co = 256
-- Set for dark themes
g.background = "dark"
--[[ 
Update the packpath if used 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.config/nvim/site/pack/packer/start/packer.nvim
to install
]]--
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path


-- [[ Context ]]
-- Show line numbers
opt.number = true                           
-- Min num lines of context
opt.scrolloff = 8                           
-- Show the sign column
opt.signcolumn = "yes:2"                      
-- Sets CWD for terminal to match vim's CWD
opt.autochdir = true                        
-- Shows command in bottom right corner
opt.showcmd = true


-- [[ Filetypes ]]
-- String encoding to use
opt.encoding = 'utf8'                       
-- File encoding to use
opt.fileencoding = 'utf8'                  


-- [[ Theme ]]
-- Allow syntax highlighting
opt.syntax = "ON"                           
-- If term supports ui color then enable
opt.termguicolors = true                    
-- Applies the colorscheme
vim.api.nvim_command('colorscheme vscode')


-- [[ Search ]]
-- Ignore case in search patterns
opt.ignorecase = true                       
-- Override ignorecase if search contains capitals
opt.smartcase = true                        
-- Use incremental search
opt.incsearch = true                        
-- Highlight search matches
opt.hlsearch = false                        


-- [[ Whitespace ]]
-- Use spaces instead of tabs
opt.expandtab = true                        
-- Size of an indent
opt.shiftwidth = 4                          
-- Number of spaces tabs count for in insert mode
opt.softtabstop = 4                         
-- Number of spaces tabs count for
opt.tabstop = 4                             


-- [[ Splits ]]
-- Place new window to right of current one
opt.splitright = true                       
-- Place new window below the current one
opt.splitbelow = true                       


-- [[ File Explorer ]]
-- Netrw split verticle right instead of left
g.netrw_altv = 1        
-- Hide directories like dotfiles
local ghregex = [[\(^\|\s\s\)\zs\.\S\+]]    
g.netrw_list_hide = ghregex
g.netrw_hide = 1
-- Get rid of netrw banner
g.netrw_banner = 0                          
-- Default netrw tree listing style
g.netrw_liststyle = 3                       
-- Better default size
g.netrw_winsize = 15


-- [[ Terminal ]]
-- Just here so that when you run IDE mode, you don't start in terminal 
autocmd({ "VimEnter" }, { command = "wincmd k" })


-- [[ Style ]]
-- Applies Black formatting on save for python files, uses pluggin
autocmd({ "BufWritePre *.py" }, { command = "Black" })

