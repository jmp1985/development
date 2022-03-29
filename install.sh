#!/bin/bash

dir=$(dirname $0)
bash ${dir}/dotfiles/install.sh
bash ${dir}/repos/install.sh
