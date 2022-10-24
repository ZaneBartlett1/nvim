## Setting up

1. Clone repo into ~/.config folder
2. Get NerdFonts set up, this is for the barbar pluggin.
    * This video was what I used - https://www.youtube.com/watch?v=435-amtVYJ8
      * You basically need a file with all the icons you'd ever need made to a specific font. Barbar uses them for tab icons.
    * Use beftabline if you don't want to set up NerdFonts - https://github.com/ap/vim-buftabline
3. Get Black set up
    * Should just be pip install black
    * Full guide - https://black.readthedocs.io/en/stable/getting_started.html
4. Get Coc set up
    * For python - With neovim open, run 
    ```
    :CocInstall coc-pyright
    ```
    * Full guide - https://github.com/fannheyward/coc-pyright
5. Run PackerSync
6. Assuming you're using nvim appimage and it's in ~/.local/share/applications/nvim.appimage here's the alias. Add to your .bashrc.
```
alias v='~/.local/share/applications/nvim.appimage'
alias V='~/.local/share/applications/nvim.appimage -c ":Lexplore|wincmd l|10split|terminal"'
```

## Notes

* Check issues for what I'd like to improve and known bugs

### Sources used (very non-exhaustive)
* https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
* https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f
* http://www.akhatib.com/making-netrw-clean-and-minimally-disruptive-then-stop-using-it/
* https://github.com/rockerBOO/awesome-neovim#terminal-integration
* https://www.youtube.com/watch?v=435-amtVYJ8
* https://github.com/LunarVim/nvim-basic-ide/blob/master/lua/user/keymaps.lua
