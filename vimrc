"                                 __
"       _________  ___  ___  ____/ /__  _____
"      / ___/ __ \/ _ \/ _ \/ __  / _ \/ ___/
"     (__  ) /_/ /  __/  __/ /_/ /  __/ /
"    /____/ .___/\___/\___/\__,_/\___/_/
"        /_/

"{{{vim-plug -
filetype off

call plug#begin('~/.vim/plugged')

Plug 'fenetikm/falcon'
Plug 'lifepillar/vim-solarized8'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'bfrg/vim-cpp-modern'
Plug 'vimwiki/vimwiki'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lambdalisue/fern.vim'
Plug 'tommcdo/vim-lion'
Plug 'Yggdroot/indentLine'

call plug#end()

filetype plugin indent on
"}}}

"{{{settings -
nnoremap <SPACE> <Nop>
let mapleader=" "
let g:mapleader=" "
set completeopt=menu,menuone,noselect,noinsert
set backspace=indent,eol,start
set ttimeoutlen=100
set updatetime=100
set nocompatible
set autochdir
set hidden
"{{{tab key -
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set copyindent
set smartindent
set smarttab
"}}}
set splitbelow
set splitright
set clipboard=unnamed,unnamedplus
set autoread
set encoding=utf-8
"}}}

"{{{keymaps -
noremap j gj
noremap k gk
inoremap jk <ESC>
inoremap <C-c> <Esc>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nmap <silent> <leader>x :bd!<CR>
nmap <silent> ]b :bn<CR>
nmap <silent> [b :bp<CR>

function! Toggle_column()
    if &colorcolumn == 0
        set colorcolumn=81
    else
        set colorcolumn=0
    endif
endfunction
nnoremap <silent> <leader>c :call Toggle_column()<CR>
"}}}

"{{{visual -

set background=dark
set termguicolors
colorscheme falcon
syntax enable
set number
set relativenumber
set signcolumn=yes
set ruler
" set cursorline
set nocursorline
set laststatus=2
set showtabline=2
set showmode
set noshowcmd
" set shortmess+=I
set previewheight=6
set helpheight=6
set pumheight=10
" change coursor shape in different modes
let &t_SI = "\<Esc>[6 q"
let &t_EI = "\<Esc>[2 q"
let &t_SR = "\<Esc>[1 q"
set scrolloff=3
set sidescroll=3
set wrap
"}}}

"{{{search -
set nohlsearch
set ignorecase
set smartcase
set incsearch
set noshowmatch
"}}}

"{{{undo -
set autoread
set noswapfile
set undofile
set undodir=~/.vim/undo
"}}}

"{{{abbrev -
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
"}}}

"{{{wild -
set wildmode=longest:full,full
set wildmenu
set wildignorecase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=vendor/cache/**
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**
set wildoptions=pum
"}}}

"{{{buftabline -
hi! link BufTabLineCurrent ColorColumn
hi! link BufTabLineHidden StatusLine
hi! link BufTabLineFill StatusLine
let g:buftabline_show = 2
let g:buftabline_numbers = 2
let g:buftabline_indicators= 1
let g:buftabline_separators= 1
"}}}

"{{{c++ -
let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1
"}}}

"{{{ALE -
let g:ale_virtualtext_cursor = 'all'

" let g:ale_completion_enabled = 1
" let g:ale_completion_delay = 1
" let g:ale_completion_max_suggestions = 10
" let g:ale_completion_autoimport = 1

" let g:ale_hover_to_floating_preview = 1
" let g:ale_detail_to_floating_preview = 1
let g:ale_set_highlights = 0
let g:ale_hover_cursor = 0
let g:ale_echo_cursor = 0
" let g:ale_echo_msg_format = '[%linter%] %s'

nmap <silent> <leader>e :ALEDetail<CR>
nmap <silent> <leader>a :ALECodeAction<CR>
nmap <silent> gd :ALEGoToDefinition<CR>
nmap <silent> ]d :ALENextWrap<CR>
nmap <silent> [d :ALEPreviousWrap<CR>

let g:ale_lint_delay = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1

""" linters
let g:ale_linters = {
\   'python': ['pyright', 'ruff'],
\   'cpp': ['clangd', 'cc'],
\   'c': ['clangd', 'cc'],
\   'rust': ['analyzer'],
\   'java': ['eclipselsp'],
\}

""" fixers
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'cpp': ['clang-format'],
\   'c': ['clang-format'],
\   'python': ['ruff', 'ruff_format', 'black'],
\}

""" rust
let g:ale_rust_analyzer_config = {
\   'server': {
\      'extraEnv': { 'RUSTUP_TOOLCHAIN': 'stable' },
\  }
\}

"}}}

"{{{ctrlp -
let g:ctrlp_match_window = 'bottom,order:btt,min:6,max:6,results:15'

nmap <silent> <leader>ff :CtrlP<CR>
nmap <silent> <leader>fr :CtrlPMRUFiles<CR>
"}}}

"{{{indentLine -
let g:indentLine_showFirstIndentLevel = 1
"}}}

" vim: expandtab softtabstop=4 shiftwidth=4 foldmethod=marker
