Plug 'puremourning/vimspector'

" Keybindings for vim-spector (debugging)
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nmap <leader>dl <plug>VimspectorStepInto
nmap <leader>dj <plug>VimspectorStepOver
nmap <leader>dk <plug>VimspectorStepOut
nnoremap <leader>drc <plug>VimspectorRunToCursor
nnoremap <leader>dbp <plug>VimspectorToggleBreakpoint
nnoremap <leader>dcbp <plug>VimspectorToggleConditionalBreakpoint
nmap <leader>dn :call vimspector#Continue()<CR>
