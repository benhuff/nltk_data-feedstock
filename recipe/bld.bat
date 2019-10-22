set NLTK_DATA=%LIBRARY_LIB%\nltk_data\
mkdir -vp %NLTK_DATA%
7z l -tzip %NLTK_DATA% *.zip -x!*.xml