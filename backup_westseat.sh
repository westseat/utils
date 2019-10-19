#!/bin/bash


SCRIPT_DIR="$(dirname $0)"
cd "${SCRIPT_DIR}"
CURRENT_DIR="$(pwd)"

WESTSEAT_REPO_NAME="westseat"
BIO_REPO_NAME="bioelectricity"

WESTSEAT_DIR="${CURRENT_DIR}/${WESTSEAT_REPO_NAME}"
BIO_DIR="${CURRENT_DIR}/${BIO_REPO_NAME}"

echo "script_dir: ${CURRENT_DIR}"
echo "westseat_dir: ${WESTSEAT_DIR}"
echo "bio_dir: ${BIO_DIR}"

# clone westseat repo
echo "[INFO]: try to back up westseat repo"
if [ -d "${WESTSEAT_DIR}" ]; then
	cd "${WESTSEAT_DIR}"
	git pull
	echo "[INFO]: pull westseat done"
else
	git clone git@e.coding.net:westseat/westseat.git "${WESTSEAT_DIR}"
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
	git clone git@e.coding.net:westseat/bioelectricity.git "${BIO_DIR}"
	echo "[INFO]: clone bio repo done"
fi

