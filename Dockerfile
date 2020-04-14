FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-devel

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git-all vim htop

WORKDIR /root/

RUN git clone https://github.com/ShannonAI/mrc-for-flat-nested-ner.git

WORKDIR /root/mrc-for-flat-nested-ner/