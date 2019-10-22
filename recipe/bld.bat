set NLTK_DATA=%LIBRARY_PREFIX%\lib\nltk_data
mkdir "%NLTK_DATA%"

move %SRC_DIR%\packages %NLTK_DATA%
cd %NLTK_DATA%

for %%f in (*.zip) do 7za x %%f