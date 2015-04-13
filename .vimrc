set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'saltstack/salt-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Syntax
syntax enable

" Text, tab, and indent related stuffs
set expandtab
set smarttab

" Set tabs to spaces
set shiftwidth=4
set tabstop=4

set ai
set si
set wrap
set nu

" Dark solarized Theme
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1   
let g:solarized_contrast="high"
set background=dark
colorscheme solarized

" Highlight trailing whitespace extra
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /s+$/
au InsertEnter * match ExtraWhitespace /s+%#@<!$/
au InsertLeave * match ExtraWhiteSpace /s+$/

" Turn on column 80 highlighting and textwidth 0 for all buffers by default
set colorcolumn=80
set textwidth=0

"""""""""""""
"  MODULES  "
"""""""""""""

" Jedi vim module settings
let g:jedi#show_function_definition = "0"
let g:jedi#popup_on_dot = 0

" vim-gitgutter settings
highlight clear SignColumn
let g:gitgutter_sign_column_always = 1

" You complete me settings
let g:ycm_autoclose_preview_window_after_completion = 1

" YouCompleteMe shortcuts - TODO - toggle errors
nnoremap <leader>o :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Syntastic shortcuts
nnoremap <leader>e :Errors<CR>
nnoremap <leader>j :lnext<CR>
nnoremap <leader>k :lprev<CR>
nnoremap <leader>r :lcl<CR>

" Text formatting
nnoremap <leader>d gqG<CR>

" Ignore errors for 80 character limit. Sometimes is unavoidable (imo) and
" covers up other run time errors
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_post_args='-d C0103'
"let g:syntastic_python_pylint_post_args='-d C0103'

