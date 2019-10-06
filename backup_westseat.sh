#!/bin/bash


SCRIPT_DIR="$(dirname $0)"
WESTSEAT_DIR="${SCRIPT_DIR}/westseat"
BIO_DIR="${SCRIPT_DIR}/bioelectricity"

echo "script_dir: ${SCRIPT_DIR}"
echo "westseat_dir: ${WESTSEAT_DIR}"
echo "bio_dir: ${BIO_DIR}"

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

