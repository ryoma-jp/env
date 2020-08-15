#!/bin/bash

mkdir -p tensorflow1
cd tensorflow1

git clone --depth 1 https://github.com/tensorflow/models.git

export TENSORFLOW1_PATH=${PWD}
echo "export PYTHONPATH=\$PYTHONPATH:${TENSORFLOW1_PATH}/models/research:${TENSORFLOW_PATH}/models/research/slim" >> ~/.bashrc

cd ..
echo "run \"source ~/.bashrc\""


