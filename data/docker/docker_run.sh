#!/bin/bash

# --- ref ---
#   https://docs.nvidia.com/cuda/wsl-user-guide/index.html

#docker run --gpus all -it --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 nvcr.io/nvidia/tensorflow:20.03-tf2-py3

WORK_DIR="${HOME}/work"
#CONTAINER="nvcr.io/nvidia/tensorflow:20.07-tf1-py3"
#CONTAINER="nvcr.io/nvidia/tensorflow:20.03-tf2-py3"
CONTAINER="work/tensorflow:20.07-tf1-py3"

docker run --gpus all -it --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 --rm -v "${WORK_DIR}:/work" ${CONTAINER}


