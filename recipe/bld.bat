mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

cd %PREFIX%\lib\nltk_data
FOR %%A IN (. *.zip) DO 7za x %%A -aoa