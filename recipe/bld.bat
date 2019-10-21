mkdir %PREFIX%\lib\nltk_data
move %SRC_DIR%\packages %PREFIX%\lib\nltk_data

dir %PREFIX%\lib\nltk_data

FOR %%A IN (dir *.zip) DO 7za x %%A -aoa