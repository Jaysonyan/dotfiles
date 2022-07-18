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
  Plug 'unblevable/quick-scope'
  Plug 'tpope/vim-fugitive'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'yuezk/vim-js'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'rust-lang/rust.vim'

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
set encoding=utf8
nnoremap <C-c> :nohl<CR><C-c>
" Yank from clipboard easier
vnoremap <leader>yc "*y
nnoremap <leader>yv "*p
au BufReadPost *.sqc set filetype=c

" Tabs:
set autoindent
set shiftwidth=2 "For width of >>
set softtabstop=2
set tabstop=2
set noexpandtab
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype java setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype vim setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype scala setlocal expandtab tabstop=2 shiftwidth=2

" Theme:
set background=dark
set t_Co=256
colorscheme xcodedark

" COC code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" NerdTree Configs:
" Close vim if last pane open is nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

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
" Don't include { } in the jumplist
nnoremap J :<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>
nnoremap K :<C-u>execute "keepjumps norm! " . v:count1 . "{"<CR>
vnoremap H ^
vnoremap L $
vnoremap J }
vnoremap K {

" Latex:
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_view_general_viewer='skim'
" Clean up files on quit
augroup vimtex_config
  autocmd!
  autocmd Filetype tex autocmd BufUnload <buffer> VimtexClean
augroup END
let g:vimtex_quickfix_open_on_warning = 0

" Snippets:
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Vim Go:
let g:go_doc_keywordprg_enabled = 0

" Rust vim:
let g:rustfmt_autosave = 1

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

" QuickScope:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=150
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
