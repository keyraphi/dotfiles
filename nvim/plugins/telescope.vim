Plug 'nvim-telescope/telescope.nvim'

function TelescopeSetup()
    lua << EOF
    local actions = require('telescope.actions')
    require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<c-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
                },
            },
        }
    }
EOF
endfunction
augroup TelesecopeSetup
    autocmd!
    autocmd User PlugLoaded call TelescopeSetup()
augroup END

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
