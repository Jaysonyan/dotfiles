source ~/.bash_profile

alias zrc="nvim ~/.zshrc"
alias src="source ~/.zshrc"
alias trc="tmux source-file ~/.tmux.conf"
autoload -Uz compinit && compinit
setopt HIST_IGNORE_ALL_DUPS
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-16.jdk/Contents/Home/bin/java
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
fpath+=(~/.zsh $fpath)
fpath+=(/usr/local/bin/bazel)
bindkey -v '^?' backward-delete-char
