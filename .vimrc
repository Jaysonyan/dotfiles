call plug#begin('~/.vim/vplug')
  Plug 'kien/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  Plug 'mileszs/ack.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'lervag/vimtex'
  Plug 'SirVer/ultisnips'
  Plug 'joshdick/onedark.vim'
  Plug 'arzg/vim-colors-xcode'
  Plug 'altercation/vim-colors-solarized'
call plug#end()

" General Configs:
let mapleader=" "
syntax on
filetype plugin indent on
set smartcase
set showcmd
set number relativenumber
set backspace=indent,eol,start
set nofixendofline "No newline at EOF
set visualbell
set spelllang=en
map <Leader>s :setlocal spell<CR>

" Tabs:
set autoindent
set shiftwidth=2 "For width of >>
set softtabstop=2
set noexpandtab

" Theme:
set background=dark
set t_Co=256
colorscheme xcodedark

" NerdTree Configs:
" Close vim if last pane open is nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Cursor Display Options:
let &t_SI = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

" Split Navigation:
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" General Navigation:
nnoremap H ^
nnoremap L $
nnoremap J }
nnoremap K {

" CtrlP Configs:
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

" Latex:
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_view_general_viewer='skim'
let g:vimtex_quickfix_latexlog = {'default' : 0}
" Clean up files on quit
augroup vimtex_config
  autocmd!
  autocmd Filetype tex autocmd BufUnload <buffer> VimtexClean
augroup END

" Snippets:
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Ack:
nnoremap <Leader>a :Ack!<Space>
