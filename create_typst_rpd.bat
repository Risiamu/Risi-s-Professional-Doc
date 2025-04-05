@echo off
mkdir temp_project
cd temp_project
git init
git submodule add https://github.com/Risiamu/Risi-s-Professional-Doc.git

(
echo #import "Risi-s-Professional-Doc\lib.typ": ^*
echo.
echo #show: doc =^> risi-pro^(
echo   title: "My Document",
echo   authors: ^("John Doe"^),
echo   date: datetime.today^(^),
echo   doc
echo ^)
) > main.typ
