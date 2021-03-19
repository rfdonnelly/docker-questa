FROM questa:2020.4_2

RUN yum install -y make && yum clean all

ARG USER=docker
RUN useradd --create-home --user-group --shell /bin/bash $USER
RUN echo "$USER:$USER" | chpasswd
RUN echo "root:$USER" | chpasswd

USER $USER
ENV HOME /home/$USER
WORKDIR /home/$USER

CMD make
