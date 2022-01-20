FROM nvcr.io/nvidia/cuda:11.6.0-devel-ubuntu20.04

RUN apt update && apt -y upgrade
RUN apt install -y python3 python3-pip

RUN pip3 install -U ginza https://github.com/megagonlabs/ginza/releases/download/latest/ja_ginza_electra-latest-with-model.tar.gz
RUN pip3 install -U "spacy[cuda116]"



