#!/usr/bin/bash

git submodule update --recursive --remote --merge

paths=(
  neovim-git
  alacritty-git
  awesome-luajit-git
  htop-git
  tmux-git
  vifm-git
  zsh-git
  picom-git
  ananicy-git
)

for package in ${paths[@]}; do
  pushd aur/$package
  echo Packaging $package

  if [[ -f "prepare.sh" ]]; then
      ./prepare.sh
      if [ $? -ne 0 ]; then
        echo Error preparing $package
        exit 1
      fi
  fi

  BUILDDIR=/tmp/makepkg makepkg -si --noconfirm
  if [ $? -ne 0 ]; then
    echo Error building $package
      sudo rm --interactive=never -rf /tmp/makepkg/*
    exit 1
  fi
  sudo rm --interactive=never -rf /tmp/makepkg/*

  popd
done
