# Visual Studio Code (forked by Attila Kirk!)

The Windows PowerShell ISE is no longer developed by Microsoft and is no longer part of PowerShell 7. The official successor is Microsoft Visual Studio Code. Therefore, an overview of everything you should know about the combination of PowerShell and Visual Studio Code.

## Microsoft Visual Studio **Code vs. VSCodium**

[VS Codium](https://github.com/VSCodium/vscodium) ist Visual Studio Code nur **ohne** Microsoft Branding, Telemetry und Licensing.

## Extensions

installed at:

```powershell
Join-Path -Path $env:USERPROFILE -ChildPath \.vscode\extensions
```

### Best Extension Pack for Powershell

https://marketplace.visualstudio.com/items?itemName=justin-grote.powershell-extension-pack

### Extensions

| PowerShell                  | ms-vscode.powershell                         |

| Better Comments             | aaron-bond.better-comments                   |

| Markdown All in One         | yzhang.markdown-all-in-one                   |

| XML Tools                   | dotjoshjohnson.xml                           |

| Code Spell Checker          | streetsidesoftware.code-spell-checker        |

| German - Code Spell Checker | streetsidesoftware.code-spell-checker-german 

| Auto Rename Tag         | formulahendry.auto-rename-tag     | 

| Chat                    | karigari.chat                     | 

| Bookmarks               | alefragnani.bookmarks             | 

| Draw.io Integration     | hediet.vscode-drawio              | 

| Live Share              | ms-vsliveshare.vsliveshare        | 

| Live Share Whiteboard   | lostintangent.vsls-whiteboard     | 

| Markdown PDF            | yzane.markdown-pdf                | 

| MarkdownLint            | davidanson.vscode-markdownlint    | 

| Material Icon Theme     | pkief.material-icon-theme         | 

| PolaCode                | pnp.polacode                      | 

| Project Manager         | alefragnani.project-manager       | 

| SQL Server (mssql)      | ms-mssql.mssql                    | 

| vscode-reveal           | evilz.vscode-reveal               | 

| Vscode Google Translate | funkyremi.vscode-google-translate |                        |

## Settings

```settings.json``` 

```powershell
Join-Path -Path $env:APPDATA -ChildPath \Code\User\settings.json
```

On a new VSCode installation the file is emtpy and default-settings are used. 
**Recommendations** :

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

## Keyboard shortcuts

### Keybinding VSCode (keybindings.json)

With Shortcut `{CTRL}`+`{K}` `{CTRL}`+`{S}` you get and change actual settings. 

File:

```powershell
Join-Path -Path $env:APPDATA -ChildPath \Code\User\keybindings.json
```

For example:

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

### **Shortcuts**

**F1** 


| **Execute** current line or selection | F8 |

| **Online Help** for the current cmdlet | CTRL + F1 |

| Overview of **Keyboard Layout** | CTRL + K, CTRL + S |

| Visual Studio Code **Command Line** | F1 |

| Collapse Regions Only** (.PS1) | CTRL + K, CTRL + 8 |

| Collapse ALL** (.MD) | CTRL + K, CTRL + 0 |

| ALL **expand** | CTRL + K, CTRL + J |

| Run ** PS1 file** / Start DEBUGGER | F5 |

| Insert **Snipping** | CTRL + ALT + J |

| **Open AutoComplete** | CTRL + Space |

| Quickly **open** files | CTRL + P |

**copy line down** | SHIFT + ALT + DOWN |

| Move Line Down** | ALT + DOWN |

| **Toggle line break** | ALT + Z |

| Navigate between recently used **files** | CTRL + TAB |

| Comment in or out line(s)** | CTRL + # |

| Create multiple input masks | ALT + mouse click |

| Move line **move** | ALT + UP/DOWN ARROW |

| Line **duplicate** | SHIFT + ALT + UP/DOWN ARROW |
