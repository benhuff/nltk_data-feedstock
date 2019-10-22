md %LIBRARY_LIB%\nltk_data
move %SRC_DIR%\packages\* %LIBRARY_LIB%\nltk_data
cd %LIBRARY_LIB%\nltk_data

7za l . *.zip -x!*.xml