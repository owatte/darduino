# @Author: Olivier Watté <user>
# @Date:   2018-12-04T20:15:30-04:00
# @Email:  owatte@ipeos.com
# @Last modified by:   user
# @Last modified time: 2018-12-04T21:34:01-04:00
# @License: GPLv3
# @Copyright: IPEOS I-Solutions



#!/bin/bash
# Starts the Arduino IDE using the docker image.
# see also: ...

#    -v /dev/ttyACM0:/dev/ttyACM0 \
#    -v /dev/ttyUSB0:/dev/ttyUSB0 \
docker run \
    -it \
    --rm \
    --network=host \
    --privileged \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /dev:/dev \
    -v $HOME/topics:/topics \
    -v $HOME/topics/arduino:/home/developer/Arduino \
    --name arduino \
    darduino:v1.8.7 \
    arduino
