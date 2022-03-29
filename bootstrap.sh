#!/bin/bash
mkdir -p ~/Software
pushd ~/Software
if [ ! -d ~/Software/development ]
then
  git clone git@github.com:jmp1985/development 
fi
bash development/install.sh
popd
