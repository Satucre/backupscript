@ECHO OFF

REM Fichier batch permettant de copier tous les fichiers de la 
REM premiere emplacement specifier en parametre vers le deuxieme

set path1=%1
set path2=%2

:debut
IF EXIST %path1% (
	IF EXIST %path2% (
		xcopy /E /H /Y %path1% %path2%
	) ELSE (
		mkdir %path2%
		goto debut
	)
) ELSE (
	echo %path1% est introuvable...
)