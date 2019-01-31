FROM questa:2019.1

RUN yum install -y \
        xorg-x11-server-Xorg \
        xlock \
    && yum clean all
RUN yum groupinstall -y Fonts && yum clean all
