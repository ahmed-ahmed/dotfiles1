# install zsh
sudo apt-get update && sudo apt-get -y install zsh fonts-powerline
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install vim plugins manager 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install vim gray color scheme 
curl -fLo ~/.vim/colors/grb256.vim --create-dirs https://raw.githubusercontent.com/garybernhardt/dotfiles/master/.vim/colors/grb256.vim


# backup dotfiles
mkdir ~/bk
if [ -f ~/.zshrc ]; then
   mv ~/.zshrc ~/bk
fi

# install dotfiles
cd ~/dotfiles1
DIR="$(cd "$(dirname "$0")" && pwd -P)"
ln -sv $DIR/.zshrc ~
ln -sv $DIR/.vimrc ~
