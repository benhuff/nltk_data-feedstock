mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

find %PREFIX%\lib\nltk_data -name "*.zip" -execdir 7za x -aoa '{}' ';'
find %PREFIX%\lib\nltk_data -name "*.gz" -execdir 7za x -tgzip -aoa '{}' ';'
