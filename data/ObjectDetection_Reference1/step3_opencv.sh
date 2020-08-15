#!/bin/bash

sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y qt4-dev-tools libatlas-base-dev

#pip3 install opencv-python
#  * pip3でのインストールではエラーが発生したので，パッケージを取得してインストール
#    ---------------------------------------------
#    Traceback (most recent call last):
#      File "Object_detection_picamera.py", line 160, in <module>
#        cv2.imshow('Object detector', frame)
#    cv2.error: OpenCV(4.4.0) /tmp/pip-install-s5lapk_h/opencv-python/opencv/modules/highgui/src/window.cpp:651: error: (-2:Unspecified error) The function is not implemented. Rebuild the library with Windows, GTK+ 2.x or Cocoa support. If you are on Ubuntu or Debian, install libgtk2.0-dev and pkg-config, then re-run cmake or configure script in function 'cvShowImage'
#    ---------------------------------------------


curl -SL https://github.com/mt08xx/files/raw/master/opencv-rpi/raspbian-buster/libopencv4_4.2.0-20191223.1_armv7l.deb -o libopencv4_4.2.0-20191223.1_armv7l.deb
sudo apt-get install -y ./libopencv4_4.2.0-20191223.1_armv7l.deb


