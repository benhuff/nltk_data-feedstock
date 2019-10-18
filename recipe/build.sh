#!/bin/bash

NLTK_DATA=${PREFIX}/lib/nltk_data
mkdir -vp ${NLTK_DATA}

# Download from the source of the package, its on the $SRC_DIR

mv ${SRC_DIR}/packages/* ${NLTK_DATA}

if [[ "$OSTYPE" = linux* ]]; then

    find ${NLTK_DATA}/ -name "*.zip" -execdir unzip -qq -o '{}' ';' -delete
    find ${NLTK_DATA}/ -name "*.gz" -exec gunzip '{}' ';'

else

    find ${NLTK_DATA}/ -name "*.zip" -execdir 7za x -r
    find ${NLTK_DATA}/ -name "*.gz" -exec 7za x

fi
