#!/usr/bin/bash

package=$1

pushd sources/arch
asp checkout $package
if [ $? -ne 0 ]; then
  echo Error adding $package
  exit 1
fi

rm -rf $package/.git

popd
mkdir arch/$package
