#!/bin/sh

CURL='curl --location --progress-bar'

$CURL --output 'install.linux64' 'https://esdhttp.flexnetoperations.com/cgi-bin/download?rid=4526974007&rp=DTM20161114035950NDkzNDIzNTMz'
$CURL --output 'questa_sim-base.mis' 'https://esdhttp.flexnetoperations.com/cgi-bin/download?rid=4526997067&rp=DTM20161114042834NzE5Mzk3MDc1'
# $CURL --output 'questa_sim-docs.mis' 'https://esdhttp.flexnetoperations.com/cgi-bin/download?rid=4526997077&rp=DTM20161114042834NzcxNjQxMzIy'
$CURL --output 'regassistuvm_4.6_ixl.mis' 'https://esdhttp.flexnetoperations.com/cgi-bin/download?rid=4526997127&rp=DTM20161114042835MTY1ODAxMzI5'
# $CURL --output 'questa_sim-gcc-linux_x86_64.mis' 'https://esdhttp.flexnetoperations.com/cgi-bin/download?rid=4526997167&rp=DTM20161114042835MjU4OTQ1MTg3'
$CURL --output 'questa_sim-linux_x86_64.mis' 'https://esdhttp.flexnetoperations.com/cgi-bin/download?rid=4526997187&rp=DTM20161114042835NTMzNTc0NDU5'

chmod +x install.linux64
