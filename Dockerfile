FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        git \
        wget

WORKDIR /opt
RUN git clone https://github.com/pjreddie/darknet.git

WORKDIR /opt/darknet
RUN make

RUN wget https://pjreddie.com/media/files/yolov3.weights

COPY OD.sh /opt/darknet/OD.sh

RUN chmod +x /opt/darknet/OD.sh

WORKDIR /opt/darknet

ENTRYPOINT ["./OD.sh"]

