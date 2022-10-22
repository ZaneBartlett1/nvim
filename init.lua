--[[ init.lua ]]
vim.g.mapleader = ","
vim.g.localleader = ","


-- [[ IMPORTS ]]
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins


--[[
Things I'd really like to do something about
+ Btabs being highlighted blue
+ When opening file multiple dirs down from cwd, netrw cwd doesn't match
]]--


--[[
Things I'd kinda like to do something about
+ Debugging
    + https://github.com/mfussenegger/nvim-dap
    + https://github.com/puremourning/vimspector
+ Having to set focus in terminal buffer when using :IDE
]]--


--[[
Helpful sources
+ https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
+ https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f
+ http://www.akhatib.com/making-netrw-clean-and-minimally-disruptive-then-stop-using-it/
+ https://github.com/rockerBOO/awesome-neovim#terminal-integration
+ https://www.youtube.com/watch?v=435-amtVYJ8
+ https://github.com/LunarVim/nvim-basic-ide/blob/master/lua/user/keymaps.lua
]]--
