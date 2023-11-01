set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=88                   " set colour columns for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " convert tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set autowriteall
let mapleader = ","

syntax on

call plug#begin()
Plug 'arcticicestudio/nord-vim', { 'tag': 'v0.11.0' }
Plug 'farmergreg/vim-lastplace'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :Files<CR>
nnoremap <leader>m :History<CR>
nnoremap <leader>b :Buffer<CR>
nnoremap Y y$
nnoremap <F7> :make<CR>
nnoremap <C-]> :tjump <C-R><C-W><CR>
vnoremap <C-c> "+y
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'morhetz/gruvbox'

Plug 'rust-lang/rust.vim'

Plug 'dkprice/vim-easygrep'
let g:EasyGrepJumpToMatch=0
function! Highlighting()
  let @/ = '\<'.expand('<cword>').'\>'
endfunction
nnoremap <silent> <leader>g :vimgrep "\C\<<C-R><C-W>\>"/\C %<CR>:call Highlighting()<CR>:cw<CR>:silent set hlsearch<CR>
" Map global search to EasyGrep command
nnoremap <silent> <leader>G :Ggrep "\<<C-R><C-W>\>"<CR>:cw<CR>
nnoremap <leader>? :Ggrep 
nnoremap <f5> :make run<CR>
inoremap <f5> <ESC>:make run<CR>

Plug 'posva/vim-vue'
" Plug 'neovim/nvim-lspconfig'
call plug#end()

colorscheme gruvbox
"lua require('lsp')
