FROM questa:2020.4_2

ARG USER=docker
RUN useradd --create-home --user-group --shell /bin/bash $USER \
    && echo "$USER:$USER" | chpasswd \
    && echo "root:$USER" | chpasswd

USER $USER
ENV HOME /home/$USER
