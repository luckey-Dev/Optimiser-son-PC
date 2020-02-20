@echo off
:menu
echo -------------------
echo    -- Logciel --
echo -------------------
echo 1.Otimiser sa connexion internet
echo 2.Supprimer le cache PC
echo 3.Nettoyer son pc
echo 4.Mettre a jour son pc
echo 5.Ping
echo 6.Site Crack
echo 7.Quitter
echo.
set /p reponse="Quel programme voulez-vous executer ?"

If /i "%reponse%"=="1" goto :batch1
If /i "%reponse%"=="2" goto :batch2
If /i "%reponse%"=="3" goto :batch3
If /i "%reponse%"=="4" goto :batch4
If /i "%reponse%"=="5" goto :batch5
If /i "%reponse%"=="6" goto :batch6
If /i "%reponse%"=="7" goto :fin

:batch1

echo 1.Moins de ping (SANS logiciel)
echo 2.Moins de ping (logiciel à télécharger)

set /p reponse="AVEC ou SANS logiciel ?"

If /i "%reponse%"=="1" netsh interface tcp set global autoruning=hight
set supplemental congestionprovider=ctcp
If /i "%reponse%"=="2" start https://www.speedguide.net/files/TCPOptimizer.exe
cls
goto :menu

:batch2
cls
del /s %Temp%
cls
goto :menu

:batch3
cls
dir/s
sfc /scannow
cls
goto :menu

:batch4
start ms-settings:windowsupdate
cls
goto :menu

:batch5

ping www.actual-pc.fr

goto :menu

:batch6
echo 1.Telecharger-jeuxpc
echo 2.Cracked-games
echo 3.Crack-your-games
echo 4.Igg-games
echo 5.Cpy-crack
echo 6.Skidrow Reloaded

set /p reponse="Quel site de crack voulez-vous ?"

If /i "%reponse%"=="1" start https://telecharger-jeuxpc.fr/
If /i "%reponse%"=="2" start https://cracked-games.org/
If /i "%reponse%"=="3" start https://crackyourgames.fr/tous-les-cracks/
If /i "%reponse%"=="4" start https://igg-games.com/
If /i "%reponse%"=="5" start https://cpy-crack.com/category/cracks/
If /i "%reponse%"=="6" start https://www.skidrowreloaded.com/
cls
goto :menu

:fin
exit


