FROM debian:10
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y python2 python-pip python-yaml python-click python-setuptools
ADD analysis /opt/
WORKDIR /opt
RUN python2 setup.py install
ENTRYPOINT /usr/local/bin/analysis /tmp/*.gcode
