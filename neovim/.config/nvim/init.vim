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

    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

	call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/neco-syntax')
    call dein#add('Shougo/neco-vim')

    call dein#add('Shougo/denite.nvim')
    call dein#add('Shougo/defx.nvim')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('neomake/neomake')

    call dein#add('junegunn/goyo.vim')
    call dein#add('junegunn/limelight.vim')

    call dein#add('sheerun/vim-polyglot')
    call dein#add('joshdick/onedark.vim')

 call dein#end()
 call dein#save_state()
endif

let g:deoplete#enable_at_startup = 1

filetype plugin indent on
syntax enable

" View Configuration
set relativenumber
set splitbelow
set splitright

" Tab configuration
set tabstop=4
set shiftwidth=4	

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

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

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
"" Center
set statusline+=%=
set statusline+=\ %<%{substitute(getcwd(),$HOME,'~','')}
"" Right Side
set statusline+=%=
set statusline+=%P\ %([%M%R%H%W]%)%q

" Distraction Mode
nnoremap <leader>z :Goyo<cr>

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  Limelight
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      conf qa
    endif
  endif
  Limelight!
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
