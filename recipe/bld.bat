mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

7za l %PREFIX%\lib\nltk_data -xr!*.xml