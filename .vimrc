""" General settings
" Is not used in neovim, but useful for vim
set nocompatible
" Can control cursor with mouse
set mouse=a
" Encoding
set fileencoding=utf8
" Indentation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
" Search
set ignorecase
set incsearch
set smartcase
set hlsearch
" Replace all
set gdefault
" Line numbers
set number
set relativenumber
" scrolling
set scrolloff=5
" clipboard
set clipboard=unnamedplus

""" Mappings
" Leader key
let mapleader="\\"

" Start/end line is very important
noremap H ^
noremap L $
" Jumping between paragraps is useful too
map J }
map K {

" Join lines
noremap ^ J
" Help
noremap $ K

"" Capital actions work on words, not to EOL
nmap D daw
nmap C ciw
nmap Y yiw

"" Register tuning
" Deletions are sent to small deletions, even linewise
nnoremap d "-d
nnoremap dd "-d_
nnoremap D "-daw
xnoremap d "-d
xnoremap D "-d

" changed text too
nnoremap c "-c
nnoremap cc "-c
nnoremap C "-ciw
xnoremap c "-c
xnoremap C "-C

" Character deletions are sent to black hole
nnoremap x "_x
nnoremap X "_X


" dx will cut something to clipboard
nnoremap dx d
nnoremap dxx d_
nnoremap dX diw
" x will work as cut in visual mode
xnoremap x d
xnoremap X d

" Disables search highligting
nnoremap <leader>/ :noh<CR>
" Backspace works in normal mode
nmap <Backspace> dl

" I don't use moving by sentense in coding
" Moves by last searched character instead
noremap ) ;
noremap ( ,

" Needs extend selection, but select word works too
nnoremap , viw
xnoremap , V

" I don't use Ex mode, so "repeat last macro" is more useful
noremap Q @q
