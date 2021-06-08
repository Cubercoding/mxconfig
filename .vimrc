" ----- USE VUNDLE AS VIM PLUGIN-MANAGER ---------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required
filetype plugin indent on    " required

" ----- VIM GENERAL ------------------------------------------------------------

set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set updatetime=100

syntax on

" ----- CODEDARK COLORSCHEME ---------------------------------------------------

let g:airline_theme='codedark'
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1
let g:airline#extensions#tabline#enabled = 1		" Enable list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'	" Show filename only
colorscheme codedark

" Set transparent background, end of buffer and line numbers
highlight Normal   	ctermbg=NONE    guibg=NONE
highlight EndOfBuffer	ctermbg=NONE    guibg=NONE
highlight LineNr   	ctermbg=NONE    ctermfg=241

" Set Gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '/'
let g:gitgutter_sign_removed = '-'
highlight GitGutterAdd    ctermbg=234 guifg=#009900 ctermfg=2
highlight GitGutterChange ctermbg=234 guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete ctermbg=234 guifg=#ff2222 ctermfg=1

" ----- FUNCTIONS --------------------------------------------------------------

" Trim whitespaces before saving
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" ----- AUTOCOMMANDS" ----------------------------------------------------------

augroup HJONKERS
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

