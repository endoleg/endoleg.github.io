# Visual Studio Code

Die Windows PowerShell ISE wird seitens Microsoft nicht weiter entwickelt und ist auch nicht mehr Bestandteil der PowerShell 7. Der offiziell Nachfolger laut hiermit Microsoft Visual Studio Code. Daher eine Übersicht über alles was man über die Kombination von PowerShell und Visual Studio Code wissen sollte.

- **Hashtags** VSCode Shortcut Extension setting VSCodium

- **Version** 2021.2.22

## Microsoft Visual Studio **Code vs. VSCodium**

[VS Codium](https://github.com/VSCodium/vscodium) ist Visual Studio Code nur **ohne** Microsoft Branding, Telemetry und Licensing.

## Erweiterungen

Die Visual Studio Code Erweiterungen (Extensions) werden an folgendem Ort installiert:

```powershell
Join-Path -Path $env:USERPROFILE -ChildPath \.vscode\extensions
```

### **Obligatorische** Extensions

| TITEL                       | ID                                           | BESCHREIBUNG                          |
| :-------------------------- | :------------------------------------------- | :------------------------------------ |
| PowerShell                  | ms-vscode.powershell                         | PowerShell (.PS1) Integration         |
| Better Comments             | aaron-bond.better-comments                   | Kommentar-Inhalt farblicher gestalten |
| Markdown All in One         | yzhang.markdown-all-in-one                   | Markdown (.md) Integration            |
| XML Tools                   | dotjoshjohnson.xml                           | XML Integration                       |
| Code Spell Checker          | streetsidesoftware.code-spell-checker        | Wortkorrektur für Englich             |
| German - Code Spell Checker | streetsidesoftware.code-spell-checker-german | Zusatz Wortkorrektur für Deutsch      |

### **Optionale** Extensions

| TITEL                   | ID                                | BESCHREIBUNG                                       |
| :---------------------- | :-------------------------------- | :------------------------------------------------- |
| Auto Rename Tag         | formulahendry.auto-rename-tag     | (XML)-Tags automatische umbenenne                  |
| Chat                    | karigari.chat                     | Remote-Zusammenarbeit - Chat                       |
| Bookmarks               | alefragnani.bookmarks             | Lesezeichen setzen & verwalten                     |
| Draw.io Integration     | hediet.vscode-drawio              | Für technische Zeichnungen wie FLussdiagramm, etc. |
| Live Share              | ms-vsliveshare.vsliveshare        | Remote-Zusammenarbeit - Code                       |
| Live Share Whiteboard   | lostintangent.vsls-whiteboard     | Remote-Zusammenarbeit - Zeichnen                   |
| Markdown PDF            | yzane.markdown-pdf                | Konvertiert Markdown zu PDF                        |
| MarkdownLint            | davidanson.vscode-markdownlint    | Markdown Style checking                            |
| Material Icon Theme     | pkief.material-icon-theme         | Icons für Dateien und Ordner in VSCode             |
| PolaCode                | pnp.polacode                      | Code-Fragment als Bild erstellen                   |
| Project Manager         | alefragnani.project-manager       | VSCode Projekte verwalten                          |
| SQL Server (mssql)      | ms-mssql.mssql                    | MS SQL Server Integration                          |
| vscode-reveal           | evilz.vscode-reveal               | Bildschirmpräsentation mittels Markdown            |
| Vscode Google Translate | funkyremi.vscode-google-translate | Übersetzungstool für Sprache                       |

## Einstellungen

Sämtlich vorgenommenen Einstellungen werden in die Datei ```settings.json``` geschrieben. Diese finden Sie hier:

```powershell
Join-Path -Path $env:APPDATA -ChildPath \Code\User\settings.json
```

Nach einer frischen Installation von VSCode ist diese leer und es greifen die Default-Einstellungen. Für den Umgang mit PowerShell und den Einstieg zu erleichtern sollten folgende **Empfehlungen** vorgenommen werden:

```json
{
  "editor.fontFamily"               : "'Cascadia Code PL', Consolas, 'Courier New', monospace",
  "editor.fontLigatures"            : true,
  "editor.find.autoFindInSelection" : "multiline",
  "editor.minimap.enabled"          : false,

  "editor.suggestSelection" : "first",
  "editor.tabCompletion"    : "on",
  "editor.wordWrap"         : "on",
  "editor.wordWrapColumn"   : 80,
  "editor.wrappingIndent"   : "indent",

  "explorer.confirmDelete"      : false,
  "explorer.confirmDragAndDrop" : false,

  "files.autoSave"        : "afterDelay",
  "files.defaultLanguage" : "powershell",

  "powershell.codeFolding.showLastLine"                     : false,
  "powershell.integratedConsole.focusConsoleOnExecute"      : false,
  "powershell.integratedConsole.forceClearScrollbackBuffer" : true,

  "telemetry.enableCrashReporter" : false,
  "telemetry.enableTelemetry"     : false,

  "terminal.integrated.fontFamily" : "'Cascadia Code', Consolas",
  "terminal.integrated.lineHeight" : 0,

  "window.zoomLevel" : 0,

  "workbench.colorTheme"          : "Default Light+",

  "cSpell.language": "en,de",
  "cSpell.enableFiletypes": ["powershell", "markdown", "plaintext", "text", "yml", "json", "xml", "html"]
}
```

## Tastaturbefehle

### Keybinding VSCode (keybindings.json)

Über die Tastenkombination `{CTRL}`+`{K}` `{CTRL}`+`{S}` können Sie die aktuelle Belegung einsehen und ändern. Diese Änderungen werden in folgender Datei abgelegt:

```powershell
Join-Path -Path $env:APPDATA -ChildPath \Code\User\keybindings.json
```

Zum Beispiel würde folgender Tastaturbefehl das PowerShell-Terminal-Fenster tatsächlich leeren:

```json
// Place your key bindings in this file to override the defaults
[
    {
        "key"     : "ctrl+k",
        "command" : "workbench.action.terminal.clear",
        "when"    : "terminalFocus"
    },
]
```

### **Tastatur**-Befehle

Mit **F1** Kommandopalette geöffnet. Das erste Zeichen steuert die Auflistung, z.B. steht das "**>**" für den **Kommando-Modus** **ohne Zeichen** für den **Navigations-Modus** und mit "**?**" erhalten Sie eine Übersich welche Modis es noch gibt.

| BESCHREIBUNG                                        | TASTATUR-KÜRZEL                |
| :-------------------------------------------------- | :----------------------------- |
| Aktuelle Zeile oder Selektion **ausführen**         | F8                             |
| **Online-Hilfe** zum akt. Cmdlet                    | CTRL + F1                      |
| Übersicht der **Tastaturbelegung**                  | CTRL + K, CTRL + S             |
| Visual Studio Code **Kommandozeile**                | F1                             |
| Nur Regionen **einklappen** (.PS1)                  | CTRL + K, CTRL + 8             |
| ALLES **einklappen** (.MD)                          | CTRL + K, CTRL + 0             |
| ALLES **aufklappen**                                | CTRL + K, CTRL + J             |
| PS1-Datei **ausführen** / DEBUGGER starten          | F5                             |
| **Snipping** einfügen                               | CTRL + ALT + J                 |
| **Autovervollständigung** öffnen                    | CTRL + Space                   |
| Dateien schnell **öffnen**                          | CTRL + P                       |
| Zeile nach unten **kopieren**                       | SHIFT + ALT + DOWN             |
| Zeile nach* unten **verschieben**                   | ALT + DOWN                     |
| **Zeilenumbruch** umschalten                        | ALT + Z                        |
| Zwischen zuletzt verwendeten **Dateien navigieren** | CTRL + TAB                     |
| Zeile(n) ein- oder aus**kommentieren**              | CTRL + #                       |
| Mehrere Eingabemasken erstellen                     | ALT + Maus-Klick               |
| Zeile **verschieben**                               | ALT + PFEIL OBEN/UNTEN         |
| Zeile **duplizieren**                               | SHIFT + ALT + PFEIL OBEN/UNTEN |
