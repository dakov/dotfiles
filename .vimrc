execute pathogen#infect()

"filetype plugin on
if has("autocmd")
  filetype plugin indent on
endif

set title

" visual
set ruler
set showcmd
syntax enable
set background=dark

colorscheme solarized
highlight Normal ctermbg=None

" indentation
set ts=4 " tabstop
set sw=4 " shiftwidth
set sts=4 " softtabstop - backspace aligns to indentation
set expandtab
set autoindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" backup handling
set nobackup
set nowritebackup

" line wrapping
"set nowrap
set wrap
set linebreak

" line numbering
set number
set numberwidth=3

" search
set ignorecase
set hlsearch

"folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" white space chars highlighting
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
