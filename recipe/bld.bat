set NLTK_DATA=%LIBRARY_PREFIX%\lib\nltk_data
mkdir "%NLTK_DATA%"

move %SRC_DIR%\packages %NLTK_DATA%
cd %NLTK_DATA%

forfiles /s /m *.zip /c "cmd /c 7za x"