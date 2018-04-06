call %~dp0\set_path_variables

SET BIBSRC=SharedBibliography/src
SET BIBTEMP=SharedBibliography/temp

java -jar %SAXON_PATH%\saxon9he.jar -s:%BIBSRC%/bibliography.xml -xsl:%BIBSRC%/bibliography2.bibtex.xslt -o:%BIBTEMP%/bibliography.bib
