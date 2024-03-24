#!/usr/bin/env bash
set -e
cd ~/CLionProjects/qmk_firmware/

keymap parse --layer-names Base Raise Lower Keyboard -q ~/CLionProjects/qmk_firmware/keyboards/splitkb/aurora/helix/keymaps/jashort/keymap.json > /tmp/helix.yaml

~/Library/Caches/pypoetry/virtualenvs/keymap-drawer-GJz_8wyU-py3.11/bin/keymap draw /tmp/helix.yaml > helix.svg

mv helix.svg ~/Pictures/
open ~/Pictures/helix.svg &



