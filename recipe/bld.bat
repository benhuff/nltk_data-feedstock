set NLTK_DATA=%LIBRARY_PREFIX%\lib\nltk_data
mkdir "%NLTK_DATA%"

xcopy %SRC_DIR%\packages %NLTK_DATA%
cd %NLTK_DATA%

forfiles /s /m *.zip /c "cmd /c 7za x -tzip -r -y @file"

dir %NLTK_DATA%
dir %NLTK_DATA%\packages