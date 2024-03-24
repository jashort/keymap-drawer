#!/usr/bin/env bash
set -e

keymap parse --layer-names Base Sym Nav NumPad -q ~/CLionProjects/qmk_firmware/keyboards/sofle/keymaps/jashort2/keymap.json  > /tmp/sofle_keymap.yaml

sed -i .bak 's/LALT(LEFT)/WRD LEFT/' /tmp/sofle_keymap.yaml
sed -i .bak 's/LALT(RGHT)/WRD RIGHT/' /tmp/sofle_keymap.yaml
sed -i .bak 's/LCTL(SGUI(4))/SCRN CLIP/' /tmp/sofle_keymap.yaml
sed -i .bak 's/SGUI(4)/SCRN SAVE/' /tmp/sofle_keymap.yaml


keymap draw /tmp/sofle_keymap.yaml > sofle.svg
rm /tmp/sofle_keymap.yaml
open sofle.svg


