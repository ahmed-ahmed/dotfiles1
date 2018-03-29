# install zsh
sudo apt-get update && sudo apt-get -y install zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# backup dotfiles
mkdir ~/bk
mv .zshrc ~/bk

# install dotfiles 
ln -sv “./.zshrc” ~

