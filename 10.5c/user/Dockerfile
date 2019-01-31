FROM mentor-questa-10.5c-base

RUN yum install -y xorg-x11-server-Xorg xlock && yum clean all
RUN yum groupinstall -y Fonts && yum clean all

RUN useradd --create-home --user-group --shell /bin/bash docker
RUN echo "docker:docker" | chpasswd
RUN echo "root:docker" | chpasswd

USER docker
ENV HOME /home/docker
WORKDIR /home/docker
