#!/bin/bash
source ./lib.sh
warn
# make blank localdlowrc if it doesn't exist
if [ ! -e ~/.localdlowrc ]; then
  echo "creating localdlowrc for local stuff"
  touch ~/.localdlowrc
fi

if [[ -e ~/.zshrc ]]; then
  echo "zshrc detected"
  symlink ".zshrc"
  echo "source ~/.localdlowrc" >> ~/.zshrc
else
  echo "No zshrc, copying to bashrc"
  echo "source ~/.localdlowrc" >> ~/.bashrc
fi
echo "Loaded zshrc. Please restart shell."
