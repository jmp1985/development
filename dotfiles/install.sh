#!/bin/bash

function install {
  src=$(realpath $(dirname $0)/${1})
  dst=${2}
  if ! [ -e $(dirname ${dst}) ]
  then
    mkdir -p $(dirname ${dst})
  fi
  if ! [ -e ${dst} ]
  then
    ln -s ${src} ${dst}
  fi
}

install git_template ~/.git_template
install gitconfig ~/.gitconfig
install vim ~/.vim
install bash_aliases ~/.bash_aliases
install init.vim ~/.config/nvim/init.vim
