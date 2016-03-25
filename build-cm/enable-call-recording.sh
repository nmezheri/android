#!/bin/sh

## From the base path,

cd packages/apps/Dialer/

sed -i 's|<bool name="call_recording_enabled">false</bool>| |' packages/apps/Dialer/res/*/config.xml

sed -i 's|<integer name="call_recording_audio_source">1</integer>|<integer name="call_recording_audio_source">4</integer>|' packages/apps/Dialer/res/values/config.xml

