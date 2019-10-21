FROM ubuntu:16.04

RUN apt-get update && \
	apt-get install python-pip libatlas3-base -y && \
	pip install -U pip

#RUN apt-get install  -y zsh
#RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

RUN pip install -U turicreate
RUN pip install -U google_images_download


RUN  mkdir /workdir/
WORKDIR /workdir/

VOLUME ["/workdir"]

CMD ["/bin/bash"]
