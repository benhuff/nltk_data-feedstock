mkdir %PREFIX%\lib\nltk_data
7za l -r %SRC_DIR%\packages\*.zip

MOVE %SRC_DIR%\packages %PREFIX%\lib\nltk_data
7za l -r %PREFIX%\lib\nltk_data\packages