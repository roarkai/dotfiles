#!/usr/bin/env zsh

# Dont link DS_Store files
# DS_store can be create by iOS, and should be deleted before installing the dotfile on other machine
find . -name ".DS_Store" -exec rm {} \;

rm ~/.zshrc
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.p10k.zsh
rm ~/.xprofile	

# create soft link 
ln -s -f ~/dotfiles_ser/.tmux.conf.ser ~/.tmux.conf 
ln -s -f ~/dotfiles_ser/.p10k.zsh ~/.p10k.zsh
ln -s -f ~/dotfiles_ser/.zshrc.ser ~/.zshrc 
ln -s -f ~/dotfiles_ser/.vimrc ~/.vimrc
ln -s -f ~/dotfiles_ser/.xprofile ~/.xprofile

# reconfigure the programs above
source ~/.zshrc 

echo "zshrc, vimrc, tmux.conf have been replaced!"
echo "Now, you need to finish the configure by activate those apps"
