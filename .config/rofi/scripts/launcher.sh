#!/usr/bin/env bash

dir="$HOME/.config/rofi"
theme='style'

## Run
pkill rofi || rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
