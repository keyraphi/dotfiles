Plug 'phaazon/hop.nvim'

function HopSetup()
    lua << EOF
    require('hop').setup()
EOF
endfunction


" TODO add some keybindings
augroup HopSetup
    autocmd!
    autocmd User PlugLoaded call HopSetup()
augroup END
