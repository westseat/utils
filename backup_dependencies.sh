#!/bin/bash
# Repositories:
# mraa : https://github.com/intel-iot-devkit/mraa.git
# UPM : https://github.com/intel-iot-devkit/upm.git
# libsoc : https://github.com/jackmitch/libsoc.git


SCRIPT_DIR=$(dirname $0)
cd "${SCRIPT_DIR}"

CURRENT_DIR="$(pwd)"
MRAA_DIR="${CURRENT_DIR}/mraa"
UPM_DIR="${CURRENT_DIR}/upm"
LIBSOC_DIR="${CURRENT_DIR}/libsoc"

#echo "$SCRIPT_DIR"
#echo "$CURRENT_DIR"
#echo "$MRAA_DIR"
#echo "$UPM_DIR"
#echo "$LIBSOC_DIR"

echo "Start to clone mraa"
if [ -d "$MRAA_DIR" ]; then
	cd "$MRAA_DIR"
	git pull
else
	git clone https://github.com/intel-iot-devkit/mraa.git
fi
echo "End back up mraa"

echo "Star to bakcup upm"
if [ -d "$UPM_DIR" ]; then
	cd "$UPM_DIR"
	git pull
else
	git clone https://github.com/intel-iot-devkit/upm.git
fi
echo "End back up upm"

echo "Start to back up libsoc"
if [ -d "$LIBSOC_DIR" ]; then
	cd "$LIBSOC_DIR"
	git pull
else
	git clone https://github.com/jackmitch/libsoc.git
fi
echo "End back up libsoc"	
