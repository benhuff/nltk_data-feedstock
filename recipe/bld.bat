set NLTK_DATA=%LIBRARY_PREFIX%\lib\nltk_data
mkdir "%NLTK_DATA%"

echo "Printing out LIBRARY_PREFIX\lib..."
dir %LIBRARY_PREFIX%\lib

echo "Printing out SRC_DIR\packages..."
dir %SRC_DIR%\packages

move %SRC_DIR%\packages %NLTK_DATA%
cd %NLTK_DATA%

echo "Printing out NLTK_DATA after SRC_DIR\packages\* has been moved..."
dir %NLTK_DATA%

7za l %NLTK_DATA%\packages *.zip -xr!*.xml