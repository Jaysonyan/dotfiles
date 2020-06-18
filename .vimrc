call plug#begin('~/.vim/vplug')
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  Plug 'mileszs/ack.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'lervag/vimtex'
  " Plug 'SirVer/ultisnips'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'google/vim-jsonnet'

  " Color Schemes
  Plug 'joshdick/onedark.vim'
  Plug 'arzg/vim-colors-xcode'
  Plug 'altercation/vim-colors-solarized'
	Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" General Configs:
let mapleader=" "
syntax on
filetype plugin indent on
set showcmd
set number relativenumber
set backspace=indent,eol,start
set nofixendofline "No newline at EOF
set visualbell
set spelllang=en
map <Leader>s :setlocal spell<CR>
set hidden
set ignorecase
set smartcase
set hidden
nnoremap <C-c> :nohl<CR><C-c>

" Tabs:
set autoindent
set shiftwidth=2 "For width of >>
set softtabstop=2
set tabstop=2
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
vnoremap H ^
vnoremap L $
vnoremap J }
vnoremap K {

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

" Vim Go:
let g:go_doc_keywordprg_enabled = 0

" FZF:
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>go :GFiles<CR>
nnoremap <Leader>f :Rg<CR>

" NERDTree:
nnoremap <Leader>n :NERDTree<CR>

" LightLine:
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Supposed to improve esc times... idk
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
