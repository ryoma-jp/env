#! /bin/bash

# note: TENSORFLOW1_PATH is set in step5-1_set-tensorflow-env.sh

cd ${TENSORFLOW1_PATH}/models/research
protoc object_detection/protos/*.proto --python_out=.

cd ${TENSORFLOW1_PATH}/models/research/object_detection

wget http://download.tensorflow.org/models/object_detection/ssdlite_mobilenet_v2_coco_2018_05_09.tar.gz
tar -xzvf ssdlite_mobilenet_v2_coco_2018_05_09.tar.gz

wget https://raw.githubusercontent.com/EdjeElectronics/TensorFlow-Object-Detection-on-the-Raspberry-Pi/master/Object_detection_picamera.py

echo "run \"python3 Object_detection_picamera.py\""

