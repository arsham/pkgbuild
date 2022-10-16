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
  ["gtkmm3"]=extra/gtkmm3
  ["libxml2"]=core/libxml2
  ["luajit"]=community/luajit
  ["nload"]=community/nload
  ["xdg-utils"]=extra/xdg-utils
  ["xorg-server"]=extra/xorg-server
  ["lm_sensors"]=extra/lm_sensors
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

  BUILDDIR=/tmp/makepkg makepkg -si --noconfirm
  if [ $? -ne 0 ]; then
    echo Error building $path
      sudo rm --interactive=never -rf /tmp/makepkg/*
    exit 1
  fi
  sudo rm --interactive=never -rf /tmp/makepkg/*

  popd
done
