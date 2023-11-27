#!/bin/bash
for x in */;
do
cd $x
for i in *.mp3;
do
    ffmpeg -i "$i" "../fold/$(basename -s .mp3 "$i").wav"
done
cd ..
done