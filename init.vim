" ============== GENERAL SETTINGS

set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " add relative line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set nospell

"folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

syntax on

"================== BACKUP

""Turn on backup option
set backup

"Where to store backups
set backupdir=~/.vim/backup/

"Make backup before overwriting the current buffer
set writebackup

"Overwrite the original backup file
set backupcopy=yes

"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

let mapleader=","

"filetype off " set the runtime path to include Vundle and initialize
"set rtp+=~/.config/nvim/bundle/Vundle.vim
"call vundle#begin('~/.config/nvim/bundle')

"Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required


"call vundle#end() " All of your Plugins must be added before the following line
"filetype plugin indent on  " allows auto-indenting depending on file type

" =============== PLUGINS
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

"" ================ R-vim
"Plug 'jalvesaq/Nvim-R'
"
"" remapping the basic :: send line
"nmap , <Plug>RDSendLine
"" remapping selection :: send multiple lines
"vmap , <Plug>RDSendSelection
"" remapping selection :: send multiple lines + echo lines
"vmap ,e <Plug>RESendSelection
"
"" R documentation
"Plug 'rizzatti/dash.vim'
"" remap search key
"nmap <silent> <leader>d <Plug>DashSearch<CR>
"
"
"" R completion
"Plug 'ncm2/ncm2'
"Plug 'gaalcaras/ncm-R'
"" Optional: for snippet support
"" Plug 'sirver/UltiSnips'
"
"" R linting " 
"Plug 'w0rp/ale'

" =================== Status Line
Plug 'itchyny/lightline.vim'


" ================== Colors
Plug 'drewtempelmeyer/palenight.vim'
set background=dark

" lightline
" let g:lightline.colorscheme = 'palenight'

" True colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Italics for my favorite color scheme
let g:palenight_terminal_italics=1

" other themes
Plug 'ayu-theme/ayu-vim' " or other package manager
"...
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

Plug 'morhetz/gruvbox'

"" ======================= LaTeX

Plug 'vim-latex/vim-latex'

Plug 'cereda/arara'

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'arara -v $*'

let g:Tex_AdvancedMath = 1

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'


" ======================= Pandoc and markdown

"Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-markdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

let g:pandoc#spell#enabled = 0

" Syntastic
Plug 'vim-syntastic/syntastic'

"" ======================= Python
"
"runtime! plugin/python_setup.vim
"
"Plug 'scrooloose/nerdTree' "Documents tree
"Plug 'davidhalter/jedi-vim' "python autocompletion
"Plug 'tpope/vim-fugitive' "git integration
"Plug 'scrooloose/syntastic' "code syntaxis
"Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis...
"Plug 'yggdroot/indentline' "Show indent lines (useful for loops)
"Plug 'tmhedberg/SimpylFold' "Python folding
""Plugin 'vim-airline/vim-airline'
""Plugin 'vim-airline/vim-airline-themes'
"Plug 'ervandew/supertab' "<Tab> for code completion
"Plug 'ctrlpvim/ctrlp.vim'    "Finder for vim
"
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1
"
"Plug 'zchee/deoplete-jedi'
"

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
"
"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2
"
" PEP 8 checking for Python
Plug 'nvie/vim-flake8'

let python_highlight_all=1
let g:python3_host_prog = "/usr/bin/python3"



Plug 'mileszs/ack.vim'
"ACK plugin for search

Plug 'wincent/Command-T'
" Plugin for search

Plug 'wikitopian/hardmode'
" Hard mode to master vim
"

" file management plugins
"panel
Plug 'preservim/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" Git manager
Plug 'tpope/vim-fugitive'



" ======================= END PLUGINS
" Initialize plugin system



call plug#end()

colorscheme palenight

