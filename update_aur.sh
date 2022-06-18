#!/usr/bin/bash

git submodule update --recursive --remote --merge

paths=(
  neovim-git
  alacritty-git
  awesome-luajit-git
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

  makepkg -si --noconfirm
  if [ $? -ne 0 ]; then
    echo Error building $package
    exit 1
  fi

  cp ../../sources/aur/$package/* ./
  if [ $? -ne 0 ]; then
    exit 1
  fi

  git diff --quiet .
  if [ $? -ne 0 ]; then
    notify-send -t 5000 $package "remote was changed"
  fi

  popd
done
