-- [[ plug.lua ]]


return require('packer').startup(function(use)
    -- Colorscheme
    use 'Mofiqul/vscode.nvim'

    -- Adds a tab for each buffer
    use 'ap/vim-buftabline'
    
    -- Does auto complete and linting
    use {'neoclide/coc.nvim', branch = 'release'}
    
    -- Does Formatting
    use {'psf/black', branch = 'stable'}

    -- Shows git decorators (and other git stuff)
    use 'airblade/vim-gitgutter'
end)
