# Windows Setup

With [winget](https://devblogs.microsoft.com/commandline/windows-package-manager-1-1/), Microsoft made it (much) easier to install applications programmatically.

## Applications that I'm installing

| What                 | ID                                 | source  | Flags         |
|----------------------|------------------------------------|---------|---------------|
| 7zip                 | 7zip.7zip                          | winget  |               |
| Acrobat Reader DC    | Adobe.Acrobat.Reader.64-bit        | winget  |               |
| Miniconda            | Anaconda.Miniconda3                | winget  | --interactive |
| Ghostscript          | ArtifexSoftware.GhostScript        | winget  |               |
| MiKTeX               | ChristianSchenk.MiKTeX             | winget  |               |
| Dropbox              | Dropbox.Dropbox                    | winget  |               |
| GitHub Desktop       | GitHub.GitHubDesktop               | winget  |               |
| Notepads             | 9NHL4NSC67WM                       | msstore |               |
| PowerToys            | Microsoft.PowerToys                | winget  |               |
| MS R Open            | Microsoft.ROpen                    | winget  |               |
| Skype                | Microsoft.Skype                    | winget  |               |
| MS Teams             | Microsoft.Teams                    | winget  |               |
| Visual Studio Code   | Microsoft.VisualStudioCode         | winget  |               |
| Windows Terminal     | 9N0DX20HK701                       | msstore |               |
| PDFtk                | PDFLabs.PDFtkServer                | winget  |               |
| PyCharm Professional | JetBrains.PyCharm.Professional     | winget  |               |
| RStudio              | RStudio.RStudio.OpenSource         | winget  |               |
| Spotify              | Spotify.Spotify                    | winget  |               |
| Sumatra PDF          | SumatraPDF.SumatraPDF              | winget  |               |
| Telegram             | Telegram.TelegramDesktop           | winget  |               |
| TeXstudio            | TeXstudio.TeXstudio                | winget  |               |
| Transmission         | Transmission.Transmission          | winget  |               |
| Steam                | Valve.Steam                        | winget  |               |
| VLC                  | VideoLAN.VLC                       | winget  | --interactive |
| WhatsApp             | WhatsApp.WhatsApp                  | winget  |               |
| Zoom                 | Zoom.Zoom                          | winget  |               |



## Applications that I'm not installing with winget

| What             | Why                                               |
|------------------|---------------------------------------------------|
| WSL              | I'd rather manually decide on a per-machine basis |
| Microsoft Office | Manually using an Office 365 Enterprise installer |
| MATLAB           | Not in winget repos, proprietary                  |
| Stata            | Not in winget repos, proprietary                  |
| Julia            | Older version in repository                       |


## Executing PowerShell scripts in Windows

By default Windows restricts the execution of PowerShell scripts for security reasons.
There are two ways two go around it, and the first one is the recommended one:

- Without changing the default execution policy, but spawning another powershell process (no harm in that):
  ```powershell
  PS C:\path\to\config_files> powershell.exe -ExecutionPolicy Bypass -File .\install-setup.ps1
  ```
- Changing the default execution policy, without another powershell process:
  ```powershell
  PS C:\path\to\config_files> Set-ExecutionPolicy Unrestricted  # as administrator
  PS C:\path\to\config_files> .\install-setup.ps1
  PS C:\path\to\config_files> Set-ExecutionPolicy Default  # as administrator
  ```
  In this case, it is a security threat to leave the execution policy as "Unrestricted".
  The last line sets back the execution policy to what the default Microsoft thought of for your machine.
