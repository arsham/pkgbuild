#!/usr/bin/bash

./update_arch.sh
if [ $? -ne 0 ]; then
  echo Error building $path
  exit 1
fi
./update_aur.sh
