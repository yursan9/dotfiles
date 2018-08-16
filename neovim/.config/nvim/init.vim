if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein')
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#add('Shougo/neco-syntax')
    call dein#add('Shougo/neco-vim')

    call dein#add('Shougo/denite.nvim')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('neomake/neomake')

    call dein#add('junegunn/goyo.vim')
    call dein#add('junegunn/limelight.vim')

    call dein#add('sheerun/vim-polyglot')
    call dein#add('joshdick/onedark.vim')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

" View Configuration
set relativenumber

" Colorscheme configuration
set termguicolors
let g:onedark_termcolors = 16
let g:onedark_terminal_italics = 1
colorscheme onedark

" Better window navigation
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Leader Configuration
let mapleader = " "

" Configuration Shortcut
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

" Abbreviations
iabbrev @@ yursan9@pm.me
iabbrev web@ yurizal-san.com
iabbrev ssig ---<cr>Yurizal Susanto<cr>yursan9@pm.me

" Statusline
"" Left Side
set statusline=%3l
set statusline+=\ ❰
set statusline+=\ %f
set statusline+=\ ❱
set statusline+=\ %<%{getcwd()}
"" Center
set statusline+=%=
"" Right Side
set statusline+=%=
set statusline+=%P\ %([%M%R%H%W]%)%q

" Distraction Mode
nnoremap <leader>ze :Goyo 
nnoremap <leader>zq :Goyo!
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
