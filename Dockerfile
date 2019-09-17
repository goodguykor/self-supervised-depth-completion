ARG BASEIMG=pytorch/pytorch:1.0.1-cuda10.0-cudnn7-devel
FROM ${BASEIMG}

ENV DISPLAY=

RUN apt-get update \
      && apt-get install -y libglib2.0-0 libsm6 libxext6 libxrender-dev bash-completion wget curl unzip\
      && pip install opencv-python opencv-contrib-python==3.4.2.16 torchvision==0.2.0 tensorflow-gpu tensorboardx \
      && pip install scipy scikit-image \
      && groupadd -g 500 irteam \
      && useradd -g 500 -u 500 -m irteam \
      && groupadd -g 1000 goodguy \
      && useradd -g 1000 -u 1000 -m goodguy
