# Use a multi-stage build to prevent having to carry forward the installer
ARG QUESTA_VERSION=2020.4_2
ARG QUESTA_ROOT=/opt/mentor/questa/$QUESTA_VERSION

FROM centos:7 as intermediate

ARG QUESTA_VERSION
ARG QUESTA_ROOT
ENV QUESTA_ROOT=$QUESTA_ROOT

COPY questa_sim-$QUESTA_VERSION.tar.gz prune.sh /tmp

# Install Questa using the generated batchInstall.sh.
# Then prune the install of unnecessary dependencies.
RUN cd / \
    && tar xf /tmp/questa_sim-$QUESTA_VERSION.tar.gz \
    && cd /tmp \
    && ./prune.sh $QUESTA_ROOT \
    && rm -rf /tmp/*

FROM centos:7

ARG QUESTA_ROOT
COPY --from=intermediate $QUESTA_ROOT $QUESTA_ROOT

# Install dependencies
#
# * gcc - The Questa provided GCC is required for QVIP.  The system provided
#   GCC is required for "DPI Export Compilation" for UVM.
# * libX11, libXext, libXft - For VRM batch mode
# * libSM - For QVIP 2020+. QVIP 2020+ depends on Qt (provided by QVIP) which
#   depends on libSM (not provided).
RUN yum install -y \
        gcc \
        libX11 \
        libXext \
        libXft \
        libSM \
    && yum clean all

ARG QUESTA_ROOT
ENV QUESTA_ROOT=$QUESTA_ROOT/questasim
ENV PATH=$QUESTA_ROOT/bin:$PATH
