mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

cd %PREFIX%\lib\nltk_data
7za x dir *.zip -r -aoa