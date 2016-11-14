FROM mentor-questa-10.5c-base

RUN yum install -y xorg-x11-server-Xorg
RUN yum install -y xclock
RUN yum groupinstall -y Fonts

RUN useradd --create-home --user-group --shell /bin/bash docker
RUN echo "docker:docker" | chpasswd
RUN echo "root:docker" | chpasswd

ENV MGLS_LICENSE_FILE 2020@cae-lmgr1,2020@cae-lmgr2,2020@cae-lmgr3

USER docker
ENV HOME /home/docker
WORKDIR /home/docker
