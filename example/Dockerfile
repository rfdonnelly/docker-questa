FROM questa:2020.4_2

RUN yum install -y make && yum clean all

ARG DOCKER_USER=docker
RUN useradd --create-home --user-group --shell /bin/bash $DOCKER_USER
RUN echo "$DOCKER_USER:$DOCKER_USER" | chpasswd
RUN echo "root:$DOCKER_USER" | chpasswd

USER $DOCKER_USER
ENV HOME /home/$DOCKER_USER
WORKDIR /home/$DOCKER_USER

CMD make
