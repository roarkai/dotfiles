#!/usr/bin/env zsh

# Dont link DS_Store files
# DS_store can be create by iOS, and should be deleted before installing the dotfile on other machine
find . -name ".DS_Store" -exec rm {} \;

rm ~/.zshrc
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.p10k.zsh

## create soft link 
# Mac special
ln -s -f ~/dotfiles/.zshrc ~/.zshrc

# list bellow is the same as server version
ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s -f ~/dotfiles/.vimrc ~/.vimrc

# reconfigure the programs above
source ~/.zshrc 

echo "zshrc, vimrc, tmux.conf have been replaced!"
echo "Now, you need to finish the configure by activate those apps"
