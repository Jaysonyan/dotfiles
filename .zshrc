source ~/.bash_profile

alias zrc="nvim ~/.zshrc"
alias src="source ~/.zshrc"
autoload -Uz compinit && compinit
setopt HIST_IGNORE_DUPS
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-16.jdk/Contents/Home/bin/java
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
