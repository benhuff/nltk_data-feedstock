#!/bin/bash

NLTK_DATA=${PREFIX}/lib/nltk_data
mkdir -vp ${NLTK_DATA}

# Download from the source of the package, its on the $SRC_DIR

mv ${SRC_DIR}/packages/* ${NLTK_DATA}

# Check the platform to determine software to use for unzip
$OSTYPE
7za --help

if [ "$OSTYPE" = "msys" ]; then
    find ${NLTK_DATA}/ -name "*.zip" -execdir 7za e -qq -o '{}' ';' -delete
    find ${NLTK_DATA}/ -name "*.gz" -exec 7za e '{}' ';'

else
    find ${NLTK_DATA}/ -name "*.zip" -execdir unzip -qq -o '{}' ';' -delete
    find ${NLTK_DATA}/ -name "*.gz" -exec gunzip '{}' ';'

fi
