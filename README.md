## Notes

* I wanted something that felt comfortable, generally good for any day to day text editing, light, and very importantly stable. If everything goes well, this entire set up should feel like an extremely basic IDE (really only for python), only take ten or so minutes, and all be fairly readable if you know basic lua.
   * Tab complete for python ([coc](https://github.com/neoclide/coc.nvim))
   * Linting for python ([coc](https://github.com/neoclide/coc.nvim))
   * Formatting for python ([black](https://github.com/psf/black))
   * Git decorators ([gitsigns](https://github.com/lewis6991/gitsigns.nvim))
   * Nice vscode inspired dark theme ([vscode](https://github.com/Mofiqul/vscode.nvim))
   * Syntax highlighting (native)
   * Cleaned up netrw (native)
   * Check out [```lua/keys.lua```](https://github.com/ZaneBartlett1/nvim/blob/main/lua/keys.lua) for any preset keymappings. Mostly setting better buffer and window navigation. 
   * Very Lua inspired. The init file is in Lua, and besides Coc and Black for fairly obvious reasons, all pluggins are written completely in Lua.
 * If you're looking for something more, I reccomend checking out -
    * A more complete, but still "basic" [IDE](https://github.com/LunarVim/nvim-basic-ide)
    * Closest to a full [IDE](https://github.com/LunarVim/LunarVim)
* Check Issues for what I'd like to improve and known bugs. My preference for reporting issues would be Issues. For questions, ideas, etc I would prefer Discussions.


## Setting up

1. Install [neovim](https://github.com/neovim/neovim/releases) if you haven't already. I reccommend the appimage, makes updating really easy.
2. Clone repo into ```~/.config```
3. Get a Patch Font from NerdFonts set up, this is for the barbar pluggin as it uses icons in it's tabs.
    * Likely you'll want to watch the video below this but, the gist -
      * A patch font is basically a wide varity of glyphs all set to a certain font. If you're not picky download "Hack Nerd Font" [here](https://www.nerdfonts.com/font-downloads). It's a popular and what I used. NOTE: There is a way to install a smaller file [here](https://github.com/ryanoasis/nerd-fonts#patched-fonts), but I could NOT get this to work following the instructions. If you'd like the file to be smaller and more specific, try that.
      * Unzip the file and move it to a spot your system can see it. For Ubuntu, you can make a directory called "fonts" under ```~/.local/share```, so ```mkdir ~/.local/share/fonts```, and put the unziped folder there.
      * Set your terminal to use the custom font. For the GNOME terminal I found it under prefrences/profiles/text. Select "custom font" and choose whatever patch font you downloaded.
    * [This video was what I used](https://www.youtube.com/watch?v=435-amtVYJ8)
    * Use [beftabline](https://github.com/ap/vim-buftabline) if you don't want to set up NerdFonts
4. Get Packer (plug manager) installed
    * Run ```git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.config/nvim/site/pack/packer/start/packer.nvim```. NOTE: This is not where packer would tell you to install. This is installing it under you're ```~/.configure/nvim```. This works because it's still in your PATH for nvim. You can read more [here](https://mattermost.com/blog/turning-neovim-into-a-full-fledged-code-editor-with-lua/) (ctrl+f and find the command on this page) about why you might want to do that, just a preference thing that keeps it "cleaner" basically. Refer to full guide for instructions from Packer for installing in their default location.
    * [Full guide](https://github.com/wbthomason/packer.nvim)
5. Get Black set up
    * Should just be ```pip install black```
    * [Full guide](https://black.readthedocs.io/en/stable/getting_started.html)
6. With nvim open run  ```:PackerSync```
7. Get coc-pyright set up
    * For python - With neovim open, run ```:CocInstall coc-pyright```
    * [Full guide](https://github.com/fannheyward/coc-pyright)
8. Assuming you're using [nvim appimage](https://github.com/neovim/neovim/releases) and it's in ~/.local/share/applications/nvim.appimage here's the alias. Add to your .bashrc. Also ```:QQ``` in nvim is set to save all buffers then quit all buffers.
```
alias v='~/.local/share/applications/nvim.appimage'
alias V='~/.local/share/applications/nvim.appimage -c ":Lexplore|wincmd l|10split|terminal"'
```


## Sources used (very non-exhaustive)
* https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
* https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f
* http://www.akhatib.com/making-netrw-clean-and-minimally-disruptive-then-stop-using-it/
* https://github.com/rockerBOO/awesome-neovim#terminal-integration
* https://www.youtube.com/watch?v=435-amtVYJ8
* https://github.com/LunarVim/nvim-basic-ide/blob/master/lua/user/keymaps.lua
