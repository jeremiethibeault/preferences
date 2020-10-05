## Installation

1. Install Windows Terminal from the Microsoft Store.

1. Run Powershell as admin.

1. Execute `Install-Module posh-git -Scope CurrentUser`.

1. Execute `Install-Module oh-my-posh -Scope CurrentUser`.

1. Execute `notepad $PROFILE`.

1. Replace the content of `Microsoft.PowerShell_profile.ps1` with the following.
    ```powershell
    Import-Module posh-git
    Import-Module oh-my-posh
    Set-Theme Paradox
    $DefaultUser = $env:UserName
    ```

1. Download the [Cascadia Code font](https://github.com/microsoft/cascadia-code/releases?WT.mc_id=-blog-scottha).

1. Install the `CascadiaCodePL.ttf` font (right-click > install).

1. Replace the content of the `settings.json` with the following.
    ```json
    "profiles":
    {
        "defaults":
        {
            "fontFace":  "Cascadia Code PL",
            "useAcrylic": true,
            "acrylicOpacity": 0.85,
            "startingDirectory": "C:\\",
            "tabTitle": "Terminal",
            "suppressApplicationTitle": true,
            "colorScheme": "Jeremie"
        },

        ...
    }

    ...

    "commandline": "powershell.exe -NoLogo",

    ...

    "schemes": [
        {
            "name" : "Jeremie",
            "cursorColor": "#FFFFFF",
            "selectionBackground": "#FFFFFF",
            "background" : "#0C0C0C",
            "foreground" : "#CCCCCC",
            "black" : "#0C0C0C",
            "blue" : "#377cb3",
            "cyan" : "#3A96DD",
            "green" : "#7cc95b",
            "purple" : "#ab84db",
            "red" : "#C50F1F",
            "white" : "#CCCCCC",
            "yellow" : "#f2d561",
            "brightBlack" : "#767676",
            "brightBlue" : "#3B78FF",
            "brightCyan" : "#61D6D6",
            "brightGreen" : "#16C60C",
            "brightPurple" : "#B4009E",
            "brightRed" : "#ff192d",
            "brightWhite" : "#F2F2F2",
            "brightYellow" : "#e3e194"
        }
    ],
    ```
    [See this link for all settings](https://docs.microsoft.com/en-us/windows/terminal/customize-settings/profile-settings).