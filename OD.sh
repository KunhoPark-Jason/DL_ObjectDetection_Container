#!/bin/bash

wget -O input.jpg "$1"
./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights input.jpg

cp predictions.jpg /output/predictions.jpg

