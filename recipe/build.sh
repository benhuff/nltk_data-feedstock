#!/bin/bash

bash -c "echo $OSTYPE"

NLTK_DATA=${PREFIX}/lib/nltk_data
mkdir -vp ${NLTK_DATA}

# Download from the source of the package, its on the $SRC_DIR
mv ${SRC_DIR}/packages/* ${NLTK_DATA}

find ${NLTK_DATA}/ -name '*.zip' ! -name '*propbank*.zip' -execdir unzip -qq -o '{}' ';'
find ${NLTK_DATA}/ -name "*.gz" -exec gunzip '{}' ';'
