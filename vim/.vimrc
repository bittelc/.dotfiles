syntax enable

filetype plugin indent on               " Make default tab size 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

set list lcs=trail:·            " Show any trailing spaces after line

" vim-pathogen
" if pathogen not installed, install: https://github.com/tpope/vim-pathogen
execute pathogen#infect('bundle/{}', '~/.dotfiles/vim/bundle/{}')

" Set color scheme
colorscheme solarized

set cursorcolumn                        " highlight current column
set cursorline                          " highlight current line
set ignorecase                          " case-insensitive search
set list                                " show whitespace
set number                              " show line numbers
set showcmd                             " show keymaps as I type
set smartcase                           " use with ignorecase
set scrolloff=999                       " lock cursor to middle of screen, vertically
set laststatus=2                        " always show statusline in vim display
set showmatch                           " show matching parenthesis
set incsearch                           " search as characters are entered
set hlsearch                            " highlight matchesk
set ttyfast                             " Send more characters for redraws
set mouse=r                             " Enable mouse use in all modes

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" Set `jk` to replace ESC key
inoremap jk <esc>

" Set cntrl+C to close a split screen window, but not close the split screen
nnoremap <C-c> :bp\|bd #<CR>

" `Enter` key adds new line, without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Open all new split panes in right / below current pane
set splitbelow
set splitright

"""""""""""""""
" GoLang settings via vim-go package (in pathogen)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_fail_silently = 1 " Dont show wonky gofmt error upon exiting
"""""""""""""""

"Enable autocomplete via `neocomplete`
let g:neocomplete#enable_at_startup = 1

"Allows you use F8 to enable/disable the tagbar feature
nmap <F8> :TagbarToggle<CR>

"Allow press <Ctrl+n> to enable/disable this NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
