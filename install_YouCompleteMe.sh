#!/usr/bin/env zsh

echo "See https://github.com/ycm-core/YouCompleteMe.git for other dependencies to install"
echo "at least: apt install build-essential cmake vim-nox python3-dev"
echo "and: apt install mono-complete golang nodejs default-jdk npm"
cd YouCompleteMe
git submodule update --init --recursive
python3 install.py --all
cd ../
