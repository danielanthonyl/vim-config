set runtimepath^=~/.vim/bundle/ctrlp.vim
set relativenumber
set encoding=utf-8
set noshowmode

nnoremap <C-p> :Files<Cr>

let g:fzf_layout = { 'down': '40%' }

set wildmenu
set wildmode=list:longest

:set shiftwidth=2

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

let g:ctrlp_map = '<c-b>'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

nnoremap <C-left> :tabprevious<CR>
nnoremap <C-right> :tabnext<CR>

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

  NeoBundleFetch 'Shougo/neobundle.vim'

  filetype plugin indent on
  
  " this will conveniently prompt you to install them.
  NeoBundleCheck

  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'vim-airline/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'
  NeoBundle 'leafgarland/typescript-vim'
  NeoBundle 'neoclide/coc.nvim', 'release'
  NeoBundle 'Quramy/tsuquyomi'
  NeoBundle 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
  NeoBundle 'junegunn/fzf.vim'
  NeoBundle 'sts10/vim-pink-moon',
  NeoBundle 'kyoz/purify', { 'rtp': 'vim' },
  NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'linux' : 'make',
      \     'unix' : 'gmake',
      \    },
      \ }
       NeoBundle 'Valloric/YouCompleteMe', {
            \ 'build' : {
            \     'mac' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
            \     'unix' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
            \     'windows' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
      \     'cygwin' : './install.sh --clang-completer --system-libclang --omnisharp-completer'
      \    }
      \ }
call neobundle#end()

syntax on 
colorscheme purify
let g:airline_theme='purify'

