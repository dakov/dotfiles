execute pathogen#infect()

"filetype plugin on
if has("autocmd")
  filetype plugin indent on
endif

" text rendering options
set nowrap
set linebreak
set encoding=utf-8
set fileencoding=utf-8
set scrolloff=2

" visual
set background=dark
colorscheme solarized
highlight Normal ctermbg=None

set ruler " ruler bar at the bottom
set cursorline " highlight the line with cursor on
set title " reflect filename in the tab

syntax enable

set showcmd

" indentation
set ts=4 " tabstop
set sw=4 " shiftwidth
set sts=4 " softtabstop - backspace aligns to indentation
set expandtab
set autoindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" backup handling
set nobackup
set noswapfile
set nowritebackup


" line numbering
set number
set numberwidth=3

" search
set ignorecase
set hlsearch " highlight search matches, type ':noh' to hide them

"folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" white space chars highlighting
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<


" NERDTree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

