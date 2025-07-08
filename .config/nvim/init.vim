" Set the leader key
let mapleader = " "  " Use space as the leader key

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
set mouse=a                   " Enable mouse support
set autoindent                " Automatically indent new lines
set showcmd                   " Show command in the bottom bar
set backup                    " Enable backup files
set backupdir=~/.config/nvim/backup//  " Specify backup directory

" Key mappings
nnoremap <leader>w :w<CR>     " Save file
nnoremap <leader>q :q<CR>     " Quit Neovim
nnoremap <leader>e :Ex<CR>     " Open file explorer
nnoremap <leader>ff :Files<CR> " Fuzzy file finder (requires fzf)
nnoremap <leader>r :source $MYVIMRC<CR>  " Reload Neovim configuration
nnoremap <leader>n :NvimTreeToggle<CR>  " Toggle file explorer
nnoremap <A-Up> :m .-2<CR>==  " Move the current line up
nnoremap <A-Down> :m .+1<CR>==  " Move the current line down
nnoremap <S-A-Up> :t .-1<CR>  " Copy the current line above
nnoremap <S-A-Down> :t .+1<CR>  " Copy the current line below
nnoremap <C-K> dd  " Delete the current line
nnoremap <C-/> :s/^/\/\/<CR>  " Comment the current line (simple method)
nnoremap <S-A-F> :!prettier --write %<CR>  " Format the current file using prettier
nnoremap <C-G> :<C-u>call input('Go to line: ')<CR>  " Prompt to go to a specific lineey mappings
nnoremap <leader>p :Glow<CR>

" Plugin management (using vim-plug)
call plug#begin('~/.config/nvim/plugged')

" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax highlighting and file type detection
Plug 'sheerun/vim-polyglot'

" Status line
Plug 'nvim-lualine/lualine.nvim'

" Copilot Plugin
Plug 'github/copilot.vim'

" Vim fugitive (Git integration)
Plug 'tpope/vim-fugitive'

" Glow (Markdown preview)
Plug 'ellisonleao/glow.nvim'

call plug#end()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" Lualine configuration
lua << EOF
require('lualine').setup {
  options = {
    theme = 'gruvbox',
    section_separators = '',
    component_separators = ''
  }
}
require('glow').setup()
EOF


