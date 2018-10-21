# Initializing Download facility
$client = New-Object System.Net.WebClient

# Download of
# - Firefox 64 bit, en-US, latest stable version
# - Telegram Desktop
# - WhatsApp Desktop
# - Continuum Analytics' Miniconda
$client.DownloadFile("https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US", "C:/Users/Pasqualini/Downloads/firefox_latest_64bit.exe")
$client.DownloadFile("https://telegram.org/dl/desktop/win", "C:/Users/Pasqualini/Downloads/telegram_desktop.exe")  # this gives an error
$client.DownloadFile("https://web.whatsapp.com/desktop/windows/release/x64/WhatsAppSetup.exe", "C:/Users/Pasqualini/Downloads/whatsapp_desktop.exe")
$client.DownloadFile("https://repo.continuum.io/miniconda/Miniconda3-latest-Windows-x86_64.exe", "C:/Users/Pasqualini/Downloads/miniconda.exe")

# So many other things should be added here, such as...
# - ghostscript (personal use license)
# - sumatrapdf
# - pdftk (server edition)
# - miktex
# - git
# - adobe reader
# - dropbox
# - synology cloud drive station
# - julia lang
# - LyX
# - notepad ++
# - transmission Qt
# - skype (open link to Microsoft Store)
# - spotify (open link to Microsoft Store)
# - 7zip
# - sqlite DB browser
# - R (lang)
# - dynare (matlab plugin)
