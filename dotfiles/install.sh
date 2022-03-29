#!/bin/bash

function install {
  name=$1
  ln -s $(pwd)/${name} ~/.${name}
}

install git_template
install gitconfig
install vim
