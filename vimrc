set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'python-mode/python-mode'
Plugin 'preservim/nerdtree'
" Necessary for vim-easytags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
Plugin 'StanAngeloff/php.vim'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Plugin Pywal
Plugin 'dylanaraps/wal.vim'
" Tagbar showing variables and classes
Plugin 'majutsushi/tagbar'
" Plugin for GitHub
Plugin 'tpope/vim-fugitive'
" Shows unstaged git changes
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'frazrepo/vim-rainbow'
" Plugin for focus
Plugin 'junegunn/goyo.vim'  
" Fuzzy finder
Plugin 'junegunn/fzf.vim'  
" Vim plugin for training"
Plugin 'takac/vim-hardtime'
" Calculator
Plugin 'arecarn/vim-crunch'
" Vim for programming languages
Plugin 'sheerun/vim-polyglot'
" Vim for latex
Plugin 'lervag/vimtex'
" Autocomplete
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tenfyzhong/CompleteParameter.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to autocmdto-approve removal

" Set fuzzyfinder on runpath
set rtp+=~/.fzf

set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set shell=/bin/bash
" Line number and relative line numbers
set number
set relativenumber
" Highlight when searching
set hlsearch
set incsearch
" Make lightline work
set laststatus=2
set noswapfile
set breakindent
set encoding=utf-8
set ignorecase
set smartcase
syntax on

" Autoindent with @i
let @i='ggVG='

" Hardtime as default
" let g:hardtime_default_on = 1

" Activate vimtex
let g:tex_flavor = 'latex'

" Remove preview of ycm
let g:ycm_autoclose_preview_window_after_insertion = 1

" Trigger configuration for snippets
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_autocmdto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic configuration for PHP
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_exec = './vendor/bin/phpcs'
let g:syntastic_php_phpcs_args = '--standard=psr2'
let g:syntastic_php_phpmd_exec = './vendor/bin/phpmd'
let g:syntastic_php_phpmd_post_args = 'cleancode,codesize,controversial,design,unusedcode'

" colorscheme wal

autocmd Filetype python map <F5> :w<CR>:!python<space><C-r>%<CR>
autocmd Filetype rmd map <F5> :w<CR>:!echo<space>"require(rmarkdown);<space>render('<C-r>%')"<space>\|<space>R<space>--vanilla<CR>

" remapping of keys
map <Space> <Leader>
vnoremap y "+y
vnoremap p "+p
vnoremap P "+P
vnoremap x "+x
nnoremap y "+y
nnoremap p "+p
nnoremap P "+P
nnoremap x "+x
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <C-n> :tabnew<CR>
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>n <C-w>v<C-w>l
nnoremap <leader><tab> :NERDTreeToggle<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>, :Tagbar<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>c :noh<CR>
nnoremap <leader>in :set<space>spell<space>spelllang=<CR>
nnoremap <leader>ie :set<space>spell<space>spelllang=en_us<CR>
nnoremap <leader>ip :set<space>spell<space>spelllang=pt_br<CR>
" Remap for fuzzy finder
noremap <leader>f :Files<CR>
" Remap for autocompletion
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
