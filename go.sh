#!/usr/bin/env bash

poetry shell
cd ~/CLionProjects/qmk_firmware/
qmk c2json -kb splitkb/kyria/rev3 -km jashort keyboards/splitkb/kyria/keymaps/jashort/keymap.c > /tmp/kyria_keymap.json
qmk c2json -kb sofle/rev1 -km jashort keyboards/sofle/keymaps/jashort/keymap.c > /tmp/sofle_keymap.json
keymap parse --layer-names Base Nav Sym Func -q /tmp/kyria_keymap.json  > /tmp/kyria_keymap.yaml
keymap parse --layer-names Base Lower Raise -q /tmp/sofle_keymap.json > /tmp/sofle_keymap.yaml

keymap draw /tmp/kyria_keymap.yaml > kyria.svg
keymap draw /tmp/sofle_keymap.yaml > sofle.svg

mv kyria.svg ~/Pictures/
mv sofle.svg ~/Pictures/
firefox ~/Pictures/sofle.svg &



