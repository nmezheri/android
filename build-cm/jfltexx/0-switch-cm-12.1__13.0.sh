#!/bin/sh

base_folder=/data/android/system

echo
if [ "$1" = "12.1" ]; then
  echo "  Switch to $1 ..."
  t="13.0"
elif [ "$1" = "13.0" ]; then
  echo "  Switch to $1 ..."
  t="12.1"
else
  echo "  Please call the script using: $0 12.1|13.0"
  echo
  exit
fi
echo


unlink $base_folder/vendor/samsung
ln -s /data/vendor/samsung-$1 $base_folder/vendor/samsung

unlink $base_folder/out
ln -s $base_folder/out-$1 $base_folder/out

unlink $base_folder/kernel
ln -s $base_folder/kernel-$1 $base_folder/kernel

mv $base_folder/device /data/device-$t
mv /data/device-$1 $base_folder/device


/data/bin/repo init -u https://github.com/CyanogenMod/android.git -b cm-$1

cd $base_folder

## Reset all changes
#repo forall -vc "git reset --hard"

if [ "$1" = "12.1" ]; then
  /data/bin/repo sync
elif [ "$1" = "13.0" ]; then
  /data/bin/repo sync -j1 -f --force-sync
fi
