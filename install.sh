#!/bin/bash

cp /home/"$USER"/aliases_shell/.alias_shell /home/"$USER"/

if [ -f "/home/$USER/.zshrc" ] ; then
  grep -qxF 'source ~/.alias_shell' ~/.zshrc || echo 'source ~/.alias_shell' >> ~/.zshrc
  exec $SHELL
fi

if [ -f "/home/$USER/.bashrc" ] ; then
  grep -qxF 'source ~/.alias_shell' ~/.bashrc || echo 'source ~/.alias_shell' >> ~/.bashrc
  exec $SHELL
fi
