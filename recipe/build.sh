#!/bin/bash

if [[ "$OSTYPE" = "msys" ]]; then
    NLTK_DATA=${PREFIX}/lib/nltk_data
    mkdir -vp ${NLTK_DATA}

    # Download from the source of the package, its on the $SRC_DIR

    mv ${SRC_DIR}/packages/* ${NLTK_DATA}

    7za --help
    find ${NLTK_DATA}/ -name "*.zip" -execdir 7za e -qq -o '{}' ';' -delete
    find ${NLTK_DATA}/ -name "*.gz" -exec 7za e '{}' ';'

else
    NLTK_DATA=${PREFIX}/lib/nltk_data
    mkdir -vp ${NLTK_DATA}

    # Download from the source of the package, its on the $SRC_DIR

    mv ${SRC_DIR}/packages/* ${NLTK_DATA}
    find ${NLTK_DATA}/ -name "*.zip" -execdir unzip -qq -o '{}' ';' -delete
    find ${NLTK_DATA}/ -name "*.gz" -exec gunzip '{}' ';'

fi
