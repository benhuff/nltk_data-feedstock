mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

for /F %%I IN ('%PREFIX%\lib\nltk_data /b /s *.zip') DO (
    7za x -o"%%~dpI" "%%I"
)