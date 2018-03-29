# install zsh
sudo apt-get update && sudo apt-get -y install zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install fonts-powerline

# backup dotfiles
mkdir ~/bk
if [ -f ~/.zshrc ]; then
   mv ~/.zshrc ~/bk
fi

# install dotfiles 
ln -sv ./.zshrc ~

