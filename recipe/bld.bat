mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data
FORFILES /
FORFILES /S /M 7za l -r %PREFIX%\lib\nltk_data\packages