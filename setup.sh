#!/bin/zsh
cp .gitconfig ~/.
cp .vimrc ~/.
cp .zshrc ~/.
cp .zshrc_for_container ~/.

mkdir ~/workspace
cp -r .devcontainer ~/workspace/.
