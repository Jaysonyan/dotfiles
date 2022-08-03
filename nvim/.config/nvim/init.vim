set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
source ~/.config/nvim/lsp.lua
source ~/.config/nvim/cmp.lua
