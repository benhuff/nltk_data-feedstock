mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

7za x %PREFIX%\lib\nltk_data -rx!*.xml