#!/bin/bash

EXEC_PATH=${1:-/home/$USER}
COMMAND=${@:2:($#-1)}

docker run -it -p 8888:8888 \
               --gpus all \
               -w ${EXEC_PATH} \
               -v /etc/group:/etc/group:ro \
               -v /etc/passwd:/etc/passwd:ro \
               -v /home/$USER/:/home/$USER \
               -v /mnt:/mnt \
               -u $(id -u $USER):$(id -g $USER) bottlenome/pytorch0.4.1:latest ${COMMAND}
