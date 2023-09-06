alias uni="cd ~/universe"
alias rt="cd ~/runtime"
alias dbr="cd ~/universe && ~/universe/bin/devbox"
alias dbc="cd ~/universe && ~/universe/bin/devbox-ssh"
alias k="kubectl"
function kc() {
  kubectl config use-context $1
}
function kn() {
  kubectl config set-context --current --namespace=$1
}
export PYTHONPATH="${PYTHONPATH}:~/universe"
export PYTHONPATH="${PYTHONPATH}:~/yapf"
export PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/2.7/bin"
export EDITOR=nvim
