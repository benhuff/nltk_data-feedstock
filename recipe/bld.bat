md %PREFIX%\nltk_data

dir %SRC_DIR%
dir %SRC_DIR%\packages

move "%SRC_DIR%\packages\*" "%PREFIX%\nltk_data"
cd %LIBRARY_LIB%\nltk_data

dir %LIBRARY_LIB%\nltk_data

7za l %PREFIX%\nltk_data *.zip -x!*.xml