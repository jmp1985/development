#!/bin/bash

set -e

function clone {
  src=$1
  dst=$2
  git_dir=$dst/.git
  if [ ! -d $git_dir ]
  then
    git clone $src $dst
    pushd $dst
    git submodule update --init
    popd
  fi
}

function install {
  src=$1
  dst=~/Software/$(basename $src)
  clone $src $dst
  pushd $dst
  python -m pip install -e .
  popd
}

function initialise {
  name=$1
  mkdir -p ~/Software/envs
  pushd ~/Software/envs
  python3.9 -m venv ${name}
  source $(pwd)/${name}/bin/activate
  echo source $(pwd)/${name}/bin/activate >> ~/.bashrc
  popd
}

mkdir -p ~/Software
export CUDACXX=/usr/local/cuda/bin/nvcc

initialise parakeet

install git@github.com:rosalindfranklininstitute/python-multem
install git@github.com:rosalindfranklininstitute/guanaco
install git@github.com:rosalindfranklininstitute/maptools
install git@github.com:rosalindfranklininstitute/crystallise
install git@github.com:rosalindfranklininstitute/amplus-digital-twin
