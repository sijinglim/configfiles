:set hidden
:nnoremap <M-Space> :simalt ~<CR>

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:syntax on
:se foldmethod=syntax
:se fileformat=unix
:colorscheme default
:set background=dark
highlight Normal guibg=black guifg=white

:set belloff=all
:set cursorline
:set ruler
:set nu
:set laststatus=2
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set nowrap
:set autoindent
:set copyindent
:set wildmenu
:set ignorecase
:set smartcase
:set smarttab
:set hlsearch
:set incsearch
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>
:nnoremap <F4> "=strftime("%X")<CR>P
:inoremap <F4> <C-R>=strftime("%X")<CR>

:au FileType c nn <buffer>  :g/.*\s.*(.*)\n{<CR>
:au FileType python nn <buffer>  :g/.*def\s<CR>
