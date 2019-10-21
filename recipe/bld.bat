mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

find "*.zip" %PREFIX%\lib\nltk_data 7za x -tzip -r -aoa -delete