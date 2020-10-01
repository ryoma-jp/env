
# --- build command ---
#   docker build -t work/tensorflow:19.12-tf1-py3 . 
#   docker build -t work/tensorflow:20.07-tf1-py3 . 

FROM nvcr.io/nvidia/tensorflow:19.12-tf1-py3
#FROM nvcr.io/nvidia/tensorflow:20.07-tf1-py3

ADD files/vimrc /etc/vim/

RUN apt update
RUN apt upgrade -y

# for 19.12-tf1-py3
RUN apt install -y libgl1-mesa-dev libsm6 libxrender1 libxext6

# for 20.07-tf1-py3 [memo]
#RUN apt install -y libsm6 libxrender1 libxext6

RUN pip3 install --upgrade pip
RUN pip3 install opencv-python
RUN pip3 install scikit-image
RUN pip3 install scipy --upgrade

ENTRYPOINT /usr/local/bin/nvidia_entrypoint.sh

