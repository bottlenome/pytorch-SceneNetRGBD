FROM  pytorch/pytorch:0.4.1-cuda9-cudnn7-devel

ENV LANG C.UTF-8
ENV LANGUAGE en_US:

RUN apt-get update && apt-get install -y \
  vim libopencv-dev
RUN pip install deap
RUN pip install git+https://github.com/bottlenome/mlem
RUN pip install matplotlib jupyter tensorboard
RUN pip install skorch
RUN pip install opencv-python
