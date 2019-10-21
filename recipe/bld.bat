mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

7za x -xr!*.xml %PREFIX%\lib\nltk_data