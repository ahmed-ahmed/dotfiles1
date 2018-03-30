# install zsh
sudo apt-get update && sudo apt-get -y install zsh fonts-powerline
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# backup dotfiles
mkdir ~/bk
if [ -f ~/.zshrc ]; then
   mv ~/.zshrc ~/bk
fi

# install dotfiles
DIR="$(cd "$(dirname "$0")" && pwd -P)"
ln -sv $DIR/.zshrc ~

