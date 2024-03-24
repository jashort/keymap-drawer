#!/usr/bin/env bash
set -e

~/Library/Caches/pypoetry/virtualenvs/keymap-drawer-GJz_8wyU-py3.11/bin/keymap parse -c 10 -z ~/CLionProjects/zmk-3x5/config/splitkb_aurora_corne.keymap > /tmp/corne_keymap.yaml

sed -i .bak 's/LA(LEFT)/WRD LEFT/' /tmp/corne_keymap.yaml
sed -i .bak 's/LA(RIGHT)/WRD RIGHT/' /tmp/corne_keymap.yaml
sed -i .bak 's/LG(LS(LC(4)))/SCRN SAVE/' /tmp/corne_keymap.yaml
sed -i .bak 's/LG(LS(4))/SCRN CLIP/' /tmp/corne_keymap.yaml

~/Library/Caches/pypoetry/virtualenvs/keymap-drawer-GJz_8wyU-py3.11/bin/keymap draw /tmp/corne_keymap.yaml > corne.svg
rm /tmp/corne_keymap.yaml
open corne.svg 

