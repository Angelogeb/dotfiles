call plug#begin('~/.local/share/nvim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'zchee/deoplete-jedi'

" Zen writing - https://github.com/junegunn/goyo.vim
Plug 'junegunn/goyo.vim'

" Latex support - https://github.com/lervag/vimtex
Plug 'lervag/vimtex'

" Indentation - https://github.com/nathanaelkane/vim-indent-guides
Plug 'nathanaelkane/vim-indent-guides'

" Linting - https://github.com/w0rp/ale
Plug 'w0rp/ale'

Plug 'vim-airline/vim-airline'

Plug 'whatyouhide/vim-gotham'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/nerdcommenter'

Plug 'Raimondi/delimitMate'

" Startpage - https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'


call plug#end()

function! s:goyo_enter()
  set number
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()

colorscheme gotham256

set textwidth=80
set colorcolumn=+1

set softtabstop=4
set ts=2 sw=2 et

syntax on

set number
set cursorline

set expandtab
set autoindent

set mouse=a

set whichwrap+=<,>,h,l,[,]


"==================== NerdTree ====================
" For toggling
nmap <C-n> :NERDTreeToggle<CR>

" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" trim all whitespaces away
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


let g:NERDSpaceDelims = 1


let g:airline#extensions#tabline#enabled = 1
