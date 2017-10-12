FROM ubuntu:16.10
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN apt-get update; apt-get upgrade
RUN apt-get install -y software-properties-common python-software-properties; apt-add-repository ppa:subsurface/subsurface; apt-get update
RUN apt-get install -y subsurface
#RUN apt-get install -y subsurface=4.6.4-1~trusty

ENV LANG en-US.UTF-8

# Add browser user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf -G audio,video sstanf \
&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

USER sstanf

ENTRYPOINT [ "/bin/bash" ]
