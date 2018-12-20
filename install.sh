#!/bin/bash

# .install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles

# variables

dir=~/.dotfiles                    
olddir=~/.dotfiles_old             	
files="zshrc vimrc"    

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving existing $file to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
