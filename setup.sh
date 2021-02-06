/*
Requirements:
homebrew
*/
# config links
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.zshrc ~/.zshrc

# alacritty setup
mkdir ~/.config/alacritty
ln -s ~/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# vim setup
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
ln -s ~/dotfiles/.vimrc ~/.vimrc
mkdir ~/.config/nvim/
ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim

# tmux setup
brew install tmux
ln -s ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.tmux/.tmux-powerlinerc ~/.tmux-powerlinerc
