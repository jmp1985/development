#!/bin/bash
mkdir -p ~/Software
pushd ~/Software
git clone git@github.com:jmp1985/development 
bash install development/install.sh
popd
