#!/usr/bin/bash

package=$1

pushd sources/aur
git submodule add --force https://aur.archlinux.org/$package.git
if [ $? -ne 0 ]; then
  echo Error adding $path
  exit 1
fi

cp -r $package ../../aur/
popd
rm -rf aur/$package/.git
