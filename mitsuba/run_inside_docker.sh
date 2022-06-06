#!/bin/bash
echo Welcome to the mitsuba docker container
echo Setup...

# you can comment this out after the first run:
# git submodule update --init --recursive

echo Run scons to build mitsuba...
# you can comment this out after the first run:
scons --cfg=build/config-linux-gcc.py -j8

echo Ask for some version of something for debugging
ldd --version

echo source setpath.sh
source setpath.sh

echo building done

echo
echo Run mitsuba...
time ./render_scene.sh
