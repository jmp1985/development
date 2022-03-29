#!/bin/bash

function install {
  dir=$(dirname $0)
  name=$1
  ln -s $(realpath ${dir}/${name}) ~/.${name}
}

install git_template
install gitconfig
install vim
install bash_aliases
