#!/bin/bash

function install {
  git clone $1
  pushd $(basename $1)
  git submodule update --init
  python -m pip install -e . --user
  popd
}

mkdir -p ~/Software
pushd ~/Software

checkout git@github.com:/rosalindfranklininstitute/python-multem
checkout git@github.com:/rosalindfranklininstitute/guanaco
checkout git@github.com:/rosalindfranklininstitute/maptools
checkout git@github.com:/rosalindfranklininstitute/crystallise
checkout git@github.com:/rosalindfranklininstitute/amplus-digital-twin

popd
