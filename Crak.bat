@echo off
chcp 65001 >nul
title Gestore Attivazione e Installazione - Vortex-Vindex

:language_select
cls
color 0B
echo ========================================================
echo                 LANGUAGE SELECTION
echo            Author: Vortex-Vindex
echo            GitHub: https://github.com/Vortex-Vindex
echo ========================================================
echo [!] Nota: Ogni tool appartiene al rispettivo creatore.
echo     Questo programma e un raccoglitore sviluppato da Vortex-Vindex.
echo ========================================================
echo Please select your language:
echo.
echo [1] English
echo [2] Italiano
echo [3] Espanol
echo [4] Exit
echo ========================================================
choice /c 1234 /n /m "Enter your choice (1-4): "
set "lang_choice=%errorlevel%"

if "%lang_choice%"=="1" set "lang=en" & goto avviso_antivirus
if "%lang_choice%"=="2" set "lang=it" & goto avviso_antivirus
if "%lang_choice%"=="3" set "lang=es" & goto avviso_antivirus
if "%lang_choice%"=="4" goto end
goto language_select

:avviso_antivirus
cls
color 0A
if "%lang%"=="it" (
    echo ========================================================
    echo             DISATTIVAZIONE ANTIVIRUS
    echo ========================================================
    echo [!] IMPORTANTE: Prima di procedere, disattiva la 
    echo Protezione in tempo reale per evitare blocchi.
    echo.
    echo Come disattivare la protezione:
    echo  1. Apri "Sicurezza di Windows" dal menu Start.
    echo  2. Vai su "Protezione da virus e minacce".
    echo  3. Clicca su "Gestisci impostazioni".
    echo  4. Disattiva la voce "Protezione in tempo reale".
    echo.
    echo [!] NOTA: Appena finite tutte le attivazioni, procedete 
    echo a riattivare l'antivirus!
    echo ========================================================
    choice /c sn /n /m "Hai disattivato l'antivirus? (s = si / n = esci): "
    if errorlevel 2 goto end
) else if "%lang%"=="es" (
    echo ========================================================
    echo             DESACTIVAR ANTIVIRUS
    echo ========================================================
    echo [!] IMPORTANTE: Antes de continuar, desactiva la 
    echo Proteccion en tiempo real para evitar bloqueos.
    echo.
    echo Como desactivar la proteccion:
    echo  1. Abre "Seguridad de Windows" desde el menu Inicio.
    echo  2. Ve a "Proteccion contra virus y amenazas".
    echo  3. Haz clic en "Administrar la configuracion".
    echo  4. Desactiva la opcion "Proteccion en tiempo real".
    echo.
    echo [!] NOTA: Apenas terminen todas las activaciones, procedan 
    echo a reactivar el antivirus!
    echo ========================================================
    choice /c sn /n /m "Has desactivado el antivirus? (s = si / n = salir): "
    if errorlevel 2 goto end
) else (
    echo ========================================================
    echo             ANTIVIRUS DEACTIVATION
    echo ========================================================
    echo [!] IMPORTANT: Before proceeding, disable 
    echo Real-Time Protection to avoid blocks.
    echo.
    echo How to disable protection:
    echo  1. Open "Windows Security" from the Start menu.
    echo  2. Go to "Virus & threat protection".
    echo  3. Click "Manage settings".
    echo  4. Turn off "Real-time protection".
    echo.
    echo [!] NOTE: As soon as all activations are finished, 
    echo please proceed to re-enable your antivirus!
    echo ========================================================
    choice /c yn /n /m "Have you disabled the antivirus? (y = yes / n = exit): "
    if errorlevel 2 goto end
)

:menu
cls
color 0B
if "%lang%"=="it" goto menu_it
if "%lang%"=="es" goto menu_es
goto menu_en

:menu_it
echo ========================================================
echo          GESTORE ATTIVAZIONE E INSTALLAZIONE
echo               By Vortex-Vindex (GitHub)
echo ========================================================
echo Scegli cosa desideri fare:
echo.
echo [1] Installare o Attivare Microsoft Office
echo [2] Attivare Windows
echo [3] Installare e Gestire Spotify (Senza Pubblicita)
echo [4] Cambia Lingua
echo [5] Esci
echo ========================================================
choice /c 12345 /n /m "Inserisci il numero della tua scelta (1-5): "
goto process_choice

:menu_es
echo ========================================================
echo          GESTOR DE ACTIVACION E INSTALACION
echo               By Vortex-Vindex (GitHub)
echo ========================================================
echo Elige que deseas hacer:
echo.
echo [1] Instalar o Activar Microsoft Office
echo [2] Activar Windows
echo [3] Installar y Gestionar Spotify (Sin Publicidad)
echo [4] Cambiar Idioma
echo [5] Salir
echo ========================================================
choice /c 12345 /n /m "Introduce el numero de tu opcion (1-5): "
goto process_choice

:menu_en
echo ========================================================
echo          ACTIVATION AND INSTALLATION MANAGER
echo               By Vortex-Vindex (GitHub)
echo ========================================================
echo Choose what you want to do:
echo.
echo [1] Install or Activate Microsoft Office
echo [2] Activate Windows
echo [3] Install and Manage Spotify (No Ads)
echo [4] Change Language
echo [5] Exit
echo ========================================================
choice /c 12345 /n /m "Enter your choice (1-5): "
goto process_choice

:process_choice
set "choice=%errorlevel%"
if "%choice%"=="1" goto office_flow
if "%choice%"=="2" goto windows_flow
if "%choice%"=="3" goto spotify_flow
if "%choice%"=="4" goto language_select
if "%choice%"=="5" goto end
goto menu

:office_flow
cls
color 0E
if "%lang%"=="it" (
    echo ========================================================
    echo                     ATTIVAZIONE MICROSOFT OFFICE
    echo ========================================================
    echo [!] IMPORTANTE: Ricordati di disattivare temporaneamente 
    echo la Protezione in tempo reale di Windows Defender prima di continuare.
    echo.
    echo [?] Se l'attivazione non dovesse riuscire o riscontri problemi, 
    echo     puoi contattare il supporto ufficiale qui: 
    echo     https://massgrave.dev/contactus
    echo ========================================================
    choice /c sn /n /m "Vuoi procedere con Office? (s = si / n = torna indietro): "
) else if "%lang%"=="es" (
    echo ========================================================
    echo                     ACTIVACION DE MICROSOFT OFFICE
    echo ========================================================
    echo [!] IMPORTANTE: Recuerda desactivar temporalmente 
    echo la Proteccion en tiempo real de Windows Defender antes de continuar.
    echo.
    echo [?] Si la activacion falla o tienes problemas, 
    echo     puedes contactar al soporte oficial aqui: 
    echo     https://massgrave.dev/contactus
    echo ========================================================
    choice /c sn /n /m "Quieres proceder con Office? (s = si / n = volver): "
) else (
    echo ========================================================
    echo                     MICROSOFT OFFICE ACTIVATION
    echo ========================================================
    echo [!] IMPORTANT: Remember to temporarily disable 
    echo Windows Defender Real-Time Protection before continuing.
    echo.
    echo [?] If activation fails or you encounter issues, 
    echo     you can contact official support here: 
    echo     https://massgrave.dev/contactus
    echo ========================================================
    choice /c yn /n /m "Do you want to proceed with Office? (y = yes / n = back): "
)

if "%errorlevel%"=="2" goto menu

cls
color 0A
if "%lang%"=="it" (
    echo ========================================================
    echo                     ISTRUZIONI PER OFFICE
    echo ========================================================
    echo Quando si aprira la schermata di attivazione:
    echo  1. Digita il numero 2 e premi Invio
    echo  2. Digita nuovamente il numero 2 e premi Invio
    echo ========================================================
) else if "%lang%"=="es" (
    echo ========================================================
    echo                     INSTRUCCIONES PARA OFFICE
    echo ========================================================
    echo Cuando se abra la pantalla de activacion:
    echo  - Digita el numero 2 y presiona Enter
    echo  - Digita nuevamente el numero 2 y presiona Enter
    echo ========================================================
) else (
    echo ========================================================
    echo                     OFFICE INSTRUCTIONS
    echo ========================================================
    echo When the activation screen opens:
    echo  - Type number 2 and press Enter
    echo  - Type number 2 again and press Enter
    echo ========================================================
)
pause
goto esegui_office

:windows_flow
cls
color 0A
if "%lang%"=="it" (
    echo ========================================================
    echo                     ATTIVAZIONE WINDOWS
    echo ========================================================
    echo [!] IMPORTANTE: Ricordati di disattivare temporaneamente 
    echo la Protezione in tempo reale di Windows Defender prima di continuare.
    echo.
    echo [?] Se l'attivazione non dovesse riuscire o riscontri problemi, 
    echo     puoi contattare il supporto ufficiale qui: 
    echo     https://massgrave.dev/contactus
    echo ========================================================
    choice /c sn /n /m "Vuoi procedere con Windows? (s = si / n = torna indietro): "
) else if "%lang%"=="es" (
    echo ========================================================
    echo                     ACTIVACION DE WINDOWS
    echo ========================================================
    echo [!] IMPORTANTE: Recuerda desactivar temporalmente 
    echo la Proteccion en tiempo real de Windows Defender antes de continuar.
    echo.
    echo [?] Si la activacion falla o tienes problemas, 
    echo     puedes contactar al soporte oficial aqui: 
    echo     https://massgrave.dev/contactus
    echo ========================================================
    choice /c sn /n /m "Quieres proceder con Windows? (s = si / n = volver): "
) else (
    echo ========================================================
    echo                     WINDOWS ACTIVATION
    echo ========================================================
    echo [!] IMPORTANT: Remember to temporarily disable 
    echo Windows Defender Real-Time Protection before continuing.
    echo.
    echo [?] If activation fails or you encounter issues, 
    echo     you can contact official support here: 
    echo     https://massgrave.dev/contactus
    echo ========================================================
    choice /c yn /n /m "Do you want to proceed with Windows? (y = yes / n = back): "
)

if "%errorlevel%"=="2" goto menu

cls
color 0A
if "%lang%"=="it" (
    echo ========================================================
    echo                     ISTRUZIONI PER WINDOWS
    echo ========================================================
    echo Quando si aprira la schermata di attivazione:
    echo  1. Digita il numero 1 e premi Invio
    echo  2. Digita nuovamente il numero 1 e premi Invio
    echo ========================================================
) else if "%lang%"=="es" (
    echo ========================================================
    echo                     INSTRUCCIONES PARA WINDOWS
    echo ========================================================
    echo Cuando se abra la pantalla de activacion:
    echo  - Digita el numero 1 y presiona Enter
    echo  - Digita nuevamente el numero 1 y presiona Enter
    echo ========================================================
) else (
    echo ========================================================
    echo                     WINDOWS INSTRUCTIONS
    echo ========================================================
    echo When the activation screen opens:
    echo  - Type number 1 and press Enter
    echo  - Type number 1 again and press Enter
    echo ========================================================
)
pause
goto esegui_windows

:spotify_flow
cls
color 0E
echo ========================================================
echo                   INSTALLAZIONE SPOTIFY
echo ========================================================
echo [!] GUIDA ADBLOCKER (COME METTERE L'ADBLOCKER):
echo  1. Lo script installera Spotify e configurera Spicetify.
echo  2. Alla fine, apri Spotify e clicca sull'icona del carrello 
echo     (Marketplace) in alto a sinistra.
echo  3. Cerca l'estensione "adblockify" e installala per bloccare 
echo     le pubblicita automaticamente.
echo.
echo [?] Per problemi o info su Spicetify visita il supporto ufficiale:
echo     https://spicetify.app/
echo ========================================================
echo.
echo Link download manuale: https://download.scdn.co/SpotifySetup.exe
echo.
echo Scegli un'opzione:
echo [1] Fallo installare automaticamente dallo script
echo [2] Ho gia installato Spotify (Procedi direttamente al cracking)
echo [3] Torna indietro al menu
echo ========================================================
choice /c 123 /n /m "Inserisci la tua scelta (1-3): "
set "spot_choice=%errorlevel%"
if "%spot_choice%"=="3" goto menu
if "%spot_choice%"=="2" goto spicetify_run
if "%spot_choice%"=="1" goto spotify_auto_install
goto spotify_flow

:spotify_auto_install
cls
color 0E
choice /c sn /n /m "Hai attualmente installato Spotify dal Microsoft Store? (s = si / n = no): "
if "%errorlevel%"=="1" (
    cls
    color 0C
    echo ========================================================
    echo [!] ERRORE: La versione del Microsoft Store NON e compatibile!
    echo Devi disinstallare Spotify dallo Store prima di procedere.
    echo ========================================================
    pause
    goto menu
)

cls
color 0A
echo Download e installazione di Spotify dal sito ufficiale in corso...
powershell -Command "Invoke-WebRequest -Uri 'https://download.scdn.co/SpotifySetup.exe' -OutFile '%TEMP%\SpotifySetup.exe'"
start /wait "" "%TEMP%\SpotifySetup.exe"

:spicetify_run
cls
color 0A
echo Esecuzione configurazione Spicetify e verifica dei file...

powershell -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex"
powershell -NoProfile -ExecutionPolicy Bypass -Command "spicetify restore backup"
powershell -NoProfile -ExecutionPolicy Bypass -Command "spicetify backup apply"
powershell -NoProfile -ExecutionPolicy Bypass -Command "powershell -Command "spicetify upgrade && spicetify backup apply""

cls
color 0B
echo ========================================================
echo                 ISTRUZIONI FINALI SPOTIFY
echo ========================================================
echo Operazione completata con successo!
echo.
echo COME ABILITARE L'ADBLOCKER (ESTENSIONE ADBLOCKIFY):
echo  1. Apri l'applicazione di Spotify sul tuo PC.
echo  2. Clicca sull'icona del carrello della spesa (Marketplace) 
echo     situata in alto a sinistra nella schermata principale.
echo  3. All'interno del Marketplace, vai nella categoria 
echo     delle Estensioni ("Extensions").
echo  4. Cerca l'estensione "adblockify" nella lista e clicca su "Install".
echo  5. Fatto! L'adblocker blocchera automaticamente le pubblicita.
echo.
echo [?] Per supporto su Spicetify: https://spicetify.app/
echo ========================================================
echo.
echo Premi un tasto per tornare al menu principale...
pause >nul
goto menu

:esegui_office
color 07
echo.
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"
goto end

:esegui_windows
color 07
echo.
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"
goto end

:end
color 0A
