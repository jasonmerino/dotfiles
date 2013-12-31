#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/code/dotfiles
############################

########## Variables

# dotfiles directory
dir=~/code/dotfiles/src

# old dotfiles backup directory
olddir=~/code/dotfiles/dotfiles_old

# list of files/folders to symlink in src dir
files=".gitconfig .gitignore .vimrc"

##########

# create dotfiles_old in dotfiles repo dir
mkdir -p $olddir

# change to the src dir
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  mv ~/$file $olddir
  ln -s $dir/$file ~/$file
done
