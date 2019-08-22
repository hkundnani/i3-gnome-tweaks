#!/bin/bash
IMAGE="/tmp/i3lock.png"

scrot $IMAGE
convert $IMAGE -blur 5x3 $IMAGE
i3lock -i $IMAGE
rm $IMAGE