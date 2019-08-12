call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'

" Latex support - https://github.com/lervag/vimtex
Plug 'lervag/vimtex'

Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdcommenter'

Plug 'Raimondi/delimitMate'

Plug 'danilo-augusto/vim-afterglow'

" Startpage - https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

Plug 'metakirby5/codi.vim'

Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'

call plug#end()

function! s:goyo_enter()
  set number
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()


set textwidth=80
set colorcolumn=+1

set softtabstop=4
set ts=2 sw=2 et

syntax on

set number

set expandtab
set autoindent

set mouse=a

set whichwrap+=<,>,h,l,[,]

nnoremap <CR> :nohlsearch<CR>
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

let g:afterglow_blackout=1

colorscheme afterglow
let g:airline_theme='afterglow'

set cursorline
hi clear CursorLine
hi CursorLine gui=bold cterm=bold

highlight IncSearch ctermbg=None ctermfg=None term=underline
highlight Search ctermbg=None ctermfg=None term=underline

noremap <Leader>Y "+y
noremap <Leader>P "+p

