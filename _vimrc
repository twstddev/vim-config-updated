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
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'sjl/gundo.vim'
Plugin 'moll/vim-node'
Plugin 'morhetz/gruvbox'
Plugin 'AndrewRadev/splitjoin.vim'
"Plugin 'terryma/vim-expand-region'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'sjl/badwolf'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'ap/vim-css-color'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rodjek/vim-puppet'
Plugin 'w0ng/vim-hybrid'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'vim-scripts/matchit.zip'
Plugin 'digitaltoad/vim-jade'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tommcdo/vim-exchange'
Plugin 'mxw/vim-jsx'
Plugin 'junegunn/seoul256.vim'
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'zeis/vim-kolor'
Plugin 'claco/jasmine.vim'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

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

"Gundo mapping
nnoremap <Leader>u :GundoToggle<CR>

"Json settings
let g:vim_json_syntax_conceal = 0

"Multicursor settings
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'

"User system clipboard
set clipboard=unnamed
