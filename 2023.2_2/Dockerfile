# Use a multi-stage build to prevent having to carry forward the installer
ARG QUESTA_VERSION=2023.2_2
ARG QUESTA_ROOT=/opt/mentor/questa/$QUESTA_VERSION

FROM rockylinux:8 as intermediate

ARG QUESTA_VERSION
ARG QUESTA_ROOT
ENV QUESTA_ROOT=$QUESTA_ROOT

# Install Questa
COPY questa_sim-$QUESTA_VERSION.tar.gz /tmp
RUN tar xf /tmp/questa_sim-$QUESTA_VERSION.tar.gz --directory /

FROM rockylinux:8

ARG QUESTA_ROOT
COPY --from=intermediate $QUESTA_ROOT $QUESTA_ROOT

# Install dependencies
#
# * gcc - The Questa provided GCC is required for QVIP.  The system provided
#   GCC is required for "DPI Export Compilation" for UVM.
# * libX11, libXext, libXft - For VRM batch mode
# * libSM - For QVIP 2020+. QVIP 2020+ depends on Qt (provided by QVIP) which
#   depends on libSM (not provided).
# * libxkbcommon - For QVIP 2022+.
RUN yum install -y \
        gcc \
        libX11 \
        libXext \
        libXft \
        libSM \
        libxkbcommon \
    && yum clean all

ARG QUESTA_ROOT
ENV QUESTA_ROOT=$QUESTA_ROOT/questasim
ENV PATH=$QUESTA_ROOT/bin:$PATH
