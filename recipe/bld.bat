7za --help

mkdir %PREFIX%\lib\nltk_data
%SRC_DIR%
copy %SRC_DIR% %PREFIX%\lib\nltk_data

7za x -r %PREFIX%\lib\nltk_data