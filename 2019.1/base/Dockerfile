# Use a multi-stage build to prevent having to carry forward the installer

# Did not work with centos:7
# Got a pointer exception
FROM centos:6 as intermediate

COPY . /tmp

ENV QUESTA_ROOT /opt/mentor/questa/2019.1

# KSH needed by ./batchInstall which was generated by Questa GUI installer
# Who writes scripts in Korn Shell???
RUN yum install -y ksh && yum clean all
RUN cd /tmp \
    && ./batchInstall.sh -tgt $QUESTA_ROOT \
    && ./prune-install.sh $QUESTA_ROOT \
    && rm -rf /tmp/*

FROM centos:6
COPY --from=intermediate /opt /opt

# Needed for "DPI Export Compilation" for UVM
RUN yum install -y \
        gcc \
        libX11 \
        libXext \
        libXft \
    && yum clean all

ENV QUESTA_ROOT /opt/mentor/questa/2019.1/questasim
ENV PATH $QUESTA_ROOT/bin:$PATH
