
# --- build command ---
#   docker build -t work/tensorflow:20.07-tf1-py3 . 

FROM nvcr.io/nvidia/tensorflow:20.07-tf1-py3

ADD files/vimrc /etc/vim/

RUN apt update
RUN apt upgrade -y
RUN apt install -y libsm6 libxrender1 libxext6

RUN pip3 install --upgrade pip
RUN pip3 install opencv-python

ENTRYPOINT /usr/local/bin/nvidia_entrypoint.sh

