#!/usr/bin/bash

rm -rf tmp/*
asp update

declare -A paths
paths=(
  ["cairo"]=extra/cairo
  ["cairomm"]=extra/cairomm
  ["dbus"]=core/dbus
  ["gtk2"]=extra/gtk2
  ["gtk3"]=extra/gtk3
)

for path in ${!paths[@]}; do
  package=${paths[${path}]}
  echo Packaging $path from $package

  pushd arch/$path
  if [[ -f "prepare.sh" ]]; then
      ./prepare.sh
      if [ $? -ne 0 ]; then
        echo Error preparing $path
        exit 1
      fi
  fi

  makepkg -si --noconfirm
  if [ $? -ne 0 ]; then
    echo Error building $path
    exit 1
  fi

  pushd ../../tmp
  asp export $package
  if [ $? -ne 0 ]; then
    exit 1
  fi

  cp $path/* ../arch/$path/
  if [ $? -ne 0 ]; then
    exit 1
  fi
  popd

  git diff --quiet .
  if [ $? -ne 0 ]; then
    notify-send -t 5000 $path "remote was changed"
  fi

  rm -rf ../../tmp/$path
  popd
done
