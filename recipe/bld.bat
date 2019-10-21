C:\>systeminfo | findstr /C:"OS"

mkdir %PREFIX%\lib\nltk_data
cd %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data
find -name "*.zip" execdir 7za x