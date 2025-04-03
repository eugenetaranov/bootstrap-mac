#!/bin/sh


if [ -f ~/.gitconfig ]; then
    echo "Git configuration already exists. Skipping..."
else
    # copy gitconfig
    cp -f ./dotfiles/gitconfig ~/.gitconfig
    echo "Git configuration copied."
fi

if [ -f ~/.gitignore ]; then
    echo "Git ignore file already exists. Skipping..."
else
    cp -f ./dotfiles/gitignore ~/.gitignore
    echo "Git ignore file copied."
fi
