"-------------------------------------------------------------------------------
" General settings
"-------------------------------------------------------------------------------
set expandtab
set shiftwidth=4
set tabstop=4
set encoding=utf-8
set hidden
set signcolumn=yes:2
set relativenumber
set number
set termguicolors
set undofile
set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
syntax on
set clipboard=unnamedplus
set confirm
set exrc
set backup
set backupdir=~/.local/share/nvim/backup//
set updatetime=300
set redrawtime=10000
set cursorline

"-------------------------------------------------------------------------------
" Key maps
"-------------------------------------------------------------------------------
"" Allow gf to open non-existent files
map gf :edit <cfile><cr>
" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv
" maintain cursor position when yanking a visual selection
vnoremap y myy`y
vnoremap Y myY`y

" Move terminal lines up/down instead of lines (wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Yank full line
noremap Y y$

" Center search result
nnoremap n nzzzv
nnoremap N Nzzv
noremap J mzJ`z

" Open current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set nocompatible
call plug#begin('~/.vim/plugged')

source ~/.config/nvim/plugins/CurtineIncSw.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/animate.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/context-commentstring.vim
source ~/.config/nvim/plugins/devicons.vim
source ~/.config/nvim/plugins/dispatch.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/enmasse.vim
source ~/.config/nvim/plugins/eunuch.vim
source ~/.config/nvim/plugins/exchange.vim
" source ~/.config/nvim/plugins/firenvim.vim
source ~/.config/nvim/plugins/floatterm.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/heritage.vim
source ~/.config/nvim/plugins/indentLine.vim
source ~/.config/nvim/plugins/lastplace.vim
source ~/.config/nvim/plugins/lion.vim
source ~/.config/nvim/plugins/markdown-preview.vim
source ~/.config/nvim/plugins/maximizer.vim
source ~/.config/nvim/plugins/neoformat.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/pasta.vim
source ~/.config/nvim/plugins/peekaboo.vim
source ~/.config/nvim/plugins/plenary.vim
source ~/.config/nvim/plugins/popup.vim
source ~/.config/nvim/plugins/pyglot.vim
" source ~/.config/nvim/plugins/pipenv.vim
source ~/.config/nvim/plugins/quickscope.vim
source ~/.config/nvim/plugins/repeat.vim
source ~/.config/nvim/plugins/rooter.vim
source ~/.config/nvim/plugins/sensible.vim
source ~/.config/nvim/plugins/simplifold.vim
source ~/.config/nvim/plugins/smoothie.vim
source ~/.config/nvim/plugins/snippets.vim
source ~/.config/nvim/plugins/solarized.vim
source ~/.config/nvim/plugins/spector.vim
source ~/.config/nvim/plugins/splitjoin.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/tagbar.vim
source ~/.config/nvim/plugins/targets.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/test.vim
source ~/.config/nvim/plugins/text-objects.vim
source ~/.config/nvim/plugins/tmuxline.vim
source ~/.config/nvim/plugins/unimpaired.vim
source ~/.config/nvim/plugins/vimtex.vim
" source ~/.config/nvim/plugins/virtualenv.vim
source ~/.config/nvim/plugins/visual-multi.vim
source ~/.config/nvim/plugins/visual-star-search.vim
source ~/.config/nvim/plugins/which-key.vim
call plug#end()
doautocmd User PlugLoaded

