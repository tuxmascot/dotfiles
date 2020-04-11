" Start up options
set nocompatible    " Always use improved mode

" Set vim-plug plugin directory
call plug#begin('~/.vim/plugged')

" Vim UI plugins
"Plug 'vim-airline/vim-airline' " Vim statusbar derivative of powerline
Plug 'airblade/vim-gitgutter'   " Show which lines change wrt the git repo

" Development UX plugins
"Plug 'SirVer/ultisnips'    " Snippet completion engine
Plug 'scrooloose/nerdtree'  " File system explorer inside vim
Plug 'mbbill/undotree'      " Vim undo history explorer
Plug 'scrooloose/syntastic' " Perform syntax checking via external syntax checkers like flake8
Plug 'majutsushi/tagbar'    " Tag browser

" LaTeX plugins
Plug 'lervag/vimtex', {'for': 'latex'}  " Vim support for writing LaTeX docs

" Search plugins
Plug 'easymotion/vim-easymotion'    " Fuzzy-search based navigation

" Python specific dev UX plugins
Plug 'davidhalter/jedi-vim', {'for': 'python'}          " Python autocompletion via Jedi
Plug 'alfredodeza/pytest.vim', {'for': 'python'}        " Run Py.test within vim
Plug 'alfredodeza/coveragepy.vim', {'for': 'python'}    " Get test coverage reports via coverage.py

" Initialize plugins
call plug#end()

" Tab, text, and indentation settings
set shiftwidth=4    " Size of a vim indentation is 4
set tabstop=4       " Size of a tab indent is 4
set expandtab       " Insert spaces instead of tab characters
set smarttab        " Detect tabs as 4 spaces and handle as a tab
set autoindent      " Enable auto indentation on new lines
set smartindent     " Detect syntax indentation
set wrap            " Wrap lines onto the next line
set number          " Enable absolute line numbers
set encoding=utf-8  " Set text encoding to UTF-8

" UI/UX settings
syntax enable       " Enable synatx highlighting
set colorcolumn=79  " Enable text limit column for PEP8 compliance
set textwidth=0     " Disable text insert width limits

" Solarized colorscheme settings
set t_Co=256
let g:solarized_contrast="high" " Use high contrast in colors for the scheme
set background=dark     " Use dark background variant of colorscheme
colorscheme solarized   " Use the solarized color scheme (altercation/vim-colors-solarized)
"let g:solarized_termcolors=256  " Use 256-bit colors
"let g:solarized_termtrans=1     " Enable terminal transparency (needed for urxvt)


"""""""""""""""""""""
"  PLUGIN SETTINGS  "
"""""""""""""""""""""

" vim-gitgutter
highlight clear SignColumn
set signcolumn=yes

" NERDTree
map <F1> :NERDTreeToggle<CR>

" undotree
nnoremap <F2> :UndotreeToggle<CR>

" syntastic
let g:syntastic_python_checkers = ['flake8']

" tagbar
nmap <F3> :TagbarToggle<CR>

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:tex_conceal='abdmg'
let g:Tex_IgnoredWarnings = 'Overfull'."\n"
let g:Tex_IgnoreLevel= 8

" vim-easymotion
map <Leader> <Plug>(easymotion-prefix)

" Jedi-vim
let g:jedi#show_call_signatures = "0"
let g:jedi#popup_on_dot = "0"

" pytest.vim
map <F5> :Pytest file -s<CR>
map <F5>f :Pytest function -s<CR>
map <F5>c :Pytest class -s<CR>
map <F5>m :Pytest method -s<CR>

" coveragepy.vim
map <F6> :Coveragepy show<CR>
map <F6>s :Coveragepy session<CR><C-ww>
