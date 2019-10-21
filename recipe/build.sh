#!/bin/bash

NLTK_DATA=${PREFIX}/lib/nltk_data
mkdir -vp ${NLTK_DATA}

# Download from the source of the package, its on the $SRC_DIR
mv ${SRC_DIR}/packages/* ${NLTK_DATA}

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Linux"
    bash -c "echo $OSTYPE"
    find ${NLTK_DATA}/ -name '*.zip' -execdir unzip -qq -o '{}' ';'
    find ${NLTK_DATA}/ -name "*.gz" -exec gunzip '{}' ';'

elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Mac"
    bash -c "echo $OSTYPE"
    find ${NLTK_DATA}/ -name '*.zip' -execdir unzip -qq -o '{}' ';'
    find ${NLTK_DATA}/ -name "*.gz" -exec gunzip '{}' ';'

fi