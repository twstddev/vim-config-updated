" Vundle initialization, taken from the official quick start
set nocompatible
filetype off

set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'goatslacker/mango.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'sjl/gundo.vim'
Plugin 'moll/vim-node'
Plugin 'morhetz/gruvbox'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'terryma/vim-expand-region'

call vundle#end()

"Force VIM mode
set nocompatible

"Set syntax highlight by default
syntax on

"Set tab indenting to 4 spaces and set smarter tabs
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent

"We need to supercharge the current indenting system with providing
"additional information about file type
filetype on
filetype plugin on
filetype indent on

"Disable the beep sound
set noeb vb t_vb=

"Make backspace work like most other apps
set backspace=2

"User system clipboard
set clipboard=unnamed

"Display line numbers
set number

"Set zen coding on Ctrl + E
imap <C-e> <C-y>,

"Highlight all search matches
set hlsearch

"Move cursor while typing search pattern
set incsearch

"Use smart search
set smartcase

"Igone search case
set ignorecase

"Make new windows equal to the existing ones in size
set equalalways

"Create new vertical splits on the right of the current one
set splitright

"Create new horizontal splits below the current one
set splitbelow

"Default encodinf should be set to utf-8
set fileencoding=utf-8
set encoding=utf-8

"Highlight bracket matches
set showmatch

"Highlight current line
set cursorline

"Set a line break, so vim could not break words somewhere in the middle
set linebreak

"Set a wrapper line separator
set showbreak=~\ 

"Set global replace parameter by default
set gdefault
"Add spellchecker
set spell

"Set leader key
let mapleader=","

"Set navigation between buffers
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

"Set the color scheme
:colorscheme molokai

"Enable nerdtree on Ctrl + N
map <C-n> :NERDTreeToggle<CR>

"Javascript syntax options
"Enable HTML/CSS highlighting in JS
let g:javascript_enable_domhtmlcss=1

"add syntax highlighting for js libraries
let g:used_javascript_libs = 'underscore,backbone,angularjs,react,jasmine,chai'

"Syntastic suggested defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

"initialize autocomplete with supertab
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "context"
set completeopt-=preview

"TernJs shortcuts
map <leader>td :TernDefPreview<CR>
map <leader>tD :TernDocBrowse<CR>
map <leader>tt :TernType<CR>
map <leader>tr :TernRefs<CR>
map <leader>tR :TernRename<CR>

"Rebind easymotion to single leader
map <Leader> <Plug>(easymotion-prefix)

"Make ctrlp work together with nerdtree
"let g:NERDTreeChDirMode = 2
"let g:ctrlp_working_path_mode = 'rw'

"Gundo mapping
nnoremap <Leader>u :GundoToggle<CR>
