" Set the leader key
let mapleader = " "

" Basic settings
set nocompatible              " Use modern Vim features
set encoding=utf-8            " Set encoding to UTF-8
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set tabstop=4                 " Number of spaces that a <Tab> counts for
set shiftwidth=4              " Number of spaces to use for each step of (auto)indent
set expandtab                 " Use spaces instead of tabs
set smartindent               " Smart indentation
set wrap                      " Wrap long lines
set cursorline                " Highlight the current line
set hlsearch                  " Highlight search results
set incsearch                 " Show search results as you type
set ignorecase                " Ignore case in search
set smartcase                 " Override ignorecase if search contains uppercase
set clipboard=unnamedplus     " Use system clipboard

" Key mappings
nnoremap <leader>w :w<CR>     " Save file
nnoremap <leader>q :q<CR>     " Quit Neovim
nnoremap <leader>e :e<CR>     " Open file explorer
nnoremap <leader>ff :Files<CR> " Fuzzy file finder (requires fzf)

" Plugin management (using vim-plug)
call plug#begin('~/.config/nvim/plugged')

" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax highlighting and file type detection
Plug 'sheerun/vim-polyglot'

" Status line
Plug 'nvim-lualine/lualine.nvim'

call plug#end()

" Lualine configuration
lua require('lualine').setup {
  options = { theme = 'gruvbox' }
}

" Enable syntax highlighting
syntax on
filetype plugin indent on

