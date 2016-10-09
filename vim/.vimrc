filetype plugin indent on
syntax on


filetype plugin indent on               " Make default tab size 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab


set list lcs=trail:·,tab:»·            " Show any trailing spaces after line

" Set cursor color
highlight Cursor guifg=pink guibg=black
highlight iCursor guifg=pink guibg=steelblue

" vim-pathogen
" if pathogen not installed, install: https://github.com/tpope/vim-pathogen
execute pathogen#infect()


set cursorcolumn                        " highlight current column
set cursorline                          " highlight current line
set ignorecase                          " case-insensitive search
set list                                " show whitespace
set number                              " show line numbers
set relativenumber                      " instead of absolute line number
set showcmd                             " show keymaps as I type
set smartcase                           " use with ignorecase
set scrolloff=999                       " lock cursor to middle of screen, vertically
set laststatus=2                        " always show statusline in vim display

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2