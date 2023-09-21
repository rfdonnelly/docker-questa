ARG QUESTA_VERSION=2023.2_2
FROM questa:$QUESTA_VERSION

ARG USER=docker
RUN useradd --create-home --user-group --shell /bin/bash $USER \
    && echo "$USER:$USER" | chpasswd \
    && echo "root:$USER" | chpasswd

USER $USER
ENV HOME /home/$USER
