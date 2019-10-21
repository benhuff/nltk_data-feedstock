mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

7za x -tzip %PREFIX%\lib\nltk_data -xr!*.xml