mkdir %LIBRARY_LIB%\nltk_data
move %SRC_DIR%/packages/* %LIBRARY_LIB%\nltk_data
cmd /c "7za l -tzip %LIBRARY_LIB%\nltk_data *.zip -xr!*.xml"