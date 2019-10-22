set NLTK_DATA=%LIBRARY_LIB%\nltk_data
md %NLTK_DATA%
cd %NLTK_DATA%
7z l -tzip *.zip -x!*.xml