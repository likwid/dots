" Plugin management using vim-plug
call plug#begin('~/.config/nvim/plugged')

" Autocomplete via deoplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"  let g:deoplete#enable_at_startup = 1
"  " use tab for completion
"  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Multiple syntax schemes
Plug 'sheerun/vim-polyglot'

" Execute code checks, find mistakes, in the background
Plug 'neomake/neomake'
  " Run Neomake when I save any buffer
   augroup localneomake
    autocmd! BufWritePost * Neomake
  augroup END

  " Don't tell me to use smartquotes in markdown ok?
  let g:neomake_markdown_enabled_makers = []

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'
  let g:mix_format_on_save = 1
  let g:mix_format_options = '--check-equivalent'

" Tern for Javascript
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }

"Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
"Plug 'carlitux/deoplete-ternjs'

call plug#end()

" not vi compatible
set nocompatible

" Basic editing config
set number
set encoding=utf-8

" This is painfully slow
" highlight cursor position
" set cursorline
" set cursorcolumn

" Set the title of the iterm tab
set title

"Disable remote history
let g:netrw_dirhistmax = 0

" Menu completion
set wildmenu
set wildmode=list:longest,full

" Whitespace
set cindent
set expandtab
set shiftwidth=2
set ts=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable vim backups
set nobackup
set nowritebackup

" Disable swapfile
set noswapfile

" Split configuration
set splitright
set splitbelow

" Disable arrow keys
map <Left> :echo "no! Use h"<cr>
map <Right> :echo "no! Use l"<cr>
map <Up> :echo "no! Use k"<cr>
map <Down> :echo "no! Use j"<cr>
imap <Left> <nop>
imap <Right> <nop>
imap <Up> <nop>
imap <Down> <nop>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Add comma as leader
:nmap , \

" Save with leader + w
nnoremap <Leader>w :w<CR>

" Unhighlight search results
map <Leader><space> :nohl<cr>

" format JSON with jq
nnoremap <Leader>j :%!cat % <bar> jq '.'<CR>

" Configure python support
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Enable Truecolor in neovim/iterm2 (Requires iterm2-nightly)
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

" Neomake
call neomake#configure#automake('w')

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

" Tern
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ['tern']
let g:tern#arguments = [' — persistent']
