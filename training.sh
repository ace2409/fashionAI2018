#!/usr/bin/env bash
SOLVER=$1
CLASS=$2
LOG=./${CLASS}.log
TOOLS=/home/freedom/caffe/build/tools
GPU0=$3


echo "starting to train"

sudo caffe train -solver $SOLVER -weights ./inception-v4.caffemodel  -gpu $GPU0 2>&1 | tee ${LOG} 

