#!/usr/bin/env zsh

# Dont link DS_Store files
# DS_store can be create by iOS, and should be deleted before installing the dotfile on other machine
find . -name ".DS_Store" -exec rm {} \;

rm ~/.zshrc
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.p10k.zsh

# create soft link 
ln -s -f ~/dotfile/.tmux.conf ~/.tmux.conf
ln -s -f ~/dotfile/.p10k.zsh ~/.p10k.zsh
ln -s -f ~/dotfile/.zshrc ~/.zshrc
ln -s -f ~/dotfile/.vimrc ~/.vimrc

# reconfigure the programs above
source ~/.zshrc 

echo "zshrc, vimrc, tmux.conf have been replaced!"
echo "Now, you need to finish the configure by activate those apps"
