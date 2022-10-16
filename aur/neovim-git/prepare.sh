#!/bin/bash

rm *.patch
fd -uu --glob '*.rej' --exec rm
pushd ./neovim-git/
git gc --prune=now
popd
rm -rf src
cp patches/* ./
