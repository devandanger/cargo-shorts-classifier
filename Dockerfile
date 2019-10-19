FROM ubuntu:16.04

RUN apt-get update && \
	apt-get install python-pip libatlas3-base -y && \
	pip install -U pip

RUN pip install -U turicreate
RUN pip install -U google_images_download


RUN  mkdir /workdir/
WORKDIR /workdir/

VOLUME ["/workdir"]

CMD ["/bin/bash"]
