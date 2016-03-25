#!/bin/sh

cd /data/android/system
. /data/android/system/build/envsetup.sh
repo sync && brunch jfltexx|tee log-`date +%F_%H%M`.txt

