#!/bin/bash

cp /home/$USER/aliases_shell/.alias_shell /home/$USER/ 
&&
if [ -f "/home/$USER/.zshrc" ] ; then
  echo "source ~/.alias_shell" >> ~/.zshrc
  &&
  source ~/.zshrc
fi

if [ -f "/home/$USER/.bashrc" ] ; then
  echo "source ~/.alias_shell" >> ~/.bashrc
  &&
  source ~/.bashrc
fi
