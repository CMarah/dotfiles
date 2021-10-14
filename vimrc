"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 1. Plugins

set nocompatible                  " be iMproved, required
filetype off                      " Required by vundle
set rtp+=~/.vim/bundle/Vundle.vim " Runtime path must include Vundle
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tmhedberg/matchit'
Plugin 'majutsushi/tagbar'
Plugin 'marijnh/tern_for_vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'
"Plugin 'SirVer/ultisnips'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'honza/vim-snippets'
"Plugin 'posva/vim-vue'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'L9'
"Plugin 'scrooloose/nerdtree.git'
"Plugin 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on         " Required by vundle


" 2. Basics

" General
syntax on
set number
set t_Co=256
set clipboard=unnamedplus
set showmatch                 " Highlight matching brace
set mat=5                     " Bracket blinking.
set hlsearch                  " Highlight all search results
set ignorecase
set smartcase                 " Enable smart-case search
set incsearch                 " Searches for strings incrementally
set fileencodings=utf-8,latin1
set termencoding=utf-8
set encoding=utf-8
set fileformats=unix,dos,mac
set novisualbell              " No blinking .
set noerrorbells              " No noise.
set laststatus=2              " Always show status line.
highlight ColorColumn ctermbg=lightblue guibg=darkblue
set timeoutlen=300
set ruler                     " Display line/column
set undolevels=1000           " Nº of changes that can be undone

" Tabs & spacing
set autoindent                " Auto-indent new lines
set shiftwidth=2              " Number of auto-indent spaces
set smartindent               " Enable smart-indent
set smarttab                  " Enable smart-tabs
set expandtab                 " Insert spaces as tab
set tabstop=2
set softtabstop=2             " Number of spaces per Tab
set textwidth=90              " Line wrap (number of cols)

" Marks & characters
set cc=80
set showbreak=+++                     " Wrap-broken line prefix
set list                              "Whitespaces visible, listchars to choose how
set listchars=trail:.,extends:#,eol:¬
set linebreak                         " Break lines at word
set backspace=indent,eol,start        " Make bs work as expected


" 3. Advanced
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,latin1
endif

"Save view when closing
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END


" 4. Mappings
imap kj <Esc>
inoremap <Space><Tab> <Esc>/<++><Enter>cf>
vnoremap <Space><Tab> <Esc>/<++><Enter>cf>
map      <Space><Tab> <Esc>/<++><Enter>cf>
let maplocalleader = ','
autocmd FileType tex inoremap ,def \begin{defn}\end{defn}<++><Esc>T}hT}i
autocmd FileType tex inoremap ,prop \begin{prop}\end{prop}<++><Esc>T}hT}i
autocmd FileType tex inoremap ,teo \begin{thm}\end{thm}<++><Esc>T}hT}i
autocmd FileType tex inoremap ,cor \begin{coro}\end{coro}<++><Esc>T}hT}i
autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
autocmd FileType tex inoremap ,bf \emph{}<++><Esc>T{i
autocmd FileType tex inoremap ,notat \itab{} \tab{<++>}\\<++><Esc>T{hT{i
autocmd FileType tex inoremap ,enum \begin{enumerate}<CR>here<CR>\end{enumerate}<++><Esc>?here<Enter>cw
autocmd FileType tex inoremap ,set $\{\ here\ \|\ <++>\ \}$<++><Esc>?here<Enter>cw
autocmd BufEnter *.tex set foldmethod=expr
autocmd BufEnter *.tex set foldexpr=vimtex#fold#level(v:lnum)
autocmd BufEnter *.tex set foldtext=vimtex#fold#text()

map ,t i<FormattedMessage defaultMessage="<Esc>$a"/><Esc>
map ,r iformatMessage({ defaultMessage: <Esc>$a })<Esc>

" 5. Plugin options
" VIMTEX
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_view_general_viewer = 'texworks.exe'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
set conceallevel=1
set foldlevel=99
"let $PYTHONHOME = 'C:\Users\Carlos\AppData\Local\Programs\Python\Python37-32' (?)

" YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_auto_hover = ''
let g:ycm_filetype_blacklist = {
  \ 'tex': 1,
\}
"let g:ycm_key_list_select_completion = []


" 6. Colorscheme
colorscheme jellybeans
