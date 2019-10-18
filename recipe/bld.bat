set "PATH=%PREFIX%\lib\nltk_data;%PATH%"
mkdir %PATH%
move %SRC_DIR%\packages %PATH%
7za l -r %PATH%