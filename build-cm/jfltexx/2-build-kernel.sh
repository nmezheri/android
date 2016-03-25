#!/bin/sh

if [ "$1" = "" ]; then
  echo
  echo "  Please call the script using $0 12.1|13.0"
  echo
  exit
fi

cd /data/tmp/boot.img2zip/
cp /data/android/system/out/target/product/jfltexx/boot.img .
zip -r ../kernel-$1-`date +%F_%H%M`.zip ./

