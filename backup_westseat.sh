#!/bin/bash

SCRIPT_DIR=`pwd`
WESTSEAT_DIR="${SCRIPT_DIR}/westseat"
BIO_DIR="${SCRIPT_DIR}/bioelectricity"

# clone westseat repo
echo "[INFO]: try to back up westseat repo"
if [ -d "${WESTSEAT_DIR}" ]; then
	cd "${WESTSEAT_DIR}"
	git pull
	echo "[INFO]: pull westseat done"
else
	git clone git@e.coding.net:westseat/westseat.git
	echo "[INFO]: clone westseat done"
fi

# move to script path
cd "${SCRIPT_DIR}"

# clone bioelectricity repo
echo "[INFO]: try to backup bio repo"
if [ -d "${BIO_DIR}" ]; then
	cd "${BIO_DIR}"
	git pull
	echo "[INFO]: pull westseat done"

else
	git clone git@e.coding.net:westseat/bioelectricity.git
	echo "[INFO]: clone bio repo done"
fi
