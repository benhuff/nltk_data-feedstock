mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data
FORFILES /?
7za l -r %PREFIX%\lib\nltk_data\packages *.zip