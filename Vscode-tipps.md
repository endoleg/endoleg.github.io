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

----------------------------------------

First Up: Removing the activity bar
What is the activity bar you ask? Well, think of it like a sidebar for your sidebar. Because who wouldn’t want more sidebars taking up space?



Let’s kill it.

Open the “Command Palette” (press Cmd+Shift+P)
Search and click “Toggle Activity Bar”


Ah, that feels better.

Before we move on, let’s look at what that did to our settings.json file, and make sure we don’t let that file get too messy:

Open the command palette (Cmd+Shift+P)
Type “settings json” and select “Preferences: Open Settings (JSON)”


You should see something like this:



Over time, as we configure VS Code, this settings file will get out of hand quickly. It’s really important that we keep it somewhat organized. We’ll start by adding a heading to this setting called “Silence The Noise“:



As we hide unnecessary things in our editor, we’ll add those settings under this heading.

Now that we’ve hidden the activity bar, your next question might be: “But wait, didn’t we need that bar?”

Great question. The answer is: No, use shortcut keys.

The shortcut keys

Cmd+K+E (E for Explorer)
Cmd+K+V (V for Version Control)
Cmd+K+D (D for Debugger)
Cmd+K+X (X for eXtensions)
Unfortunately, these are NOT the keybindings that come out-of-the-box with VS Code. We will have to configure them ourselves. Here’s how:

Open the “Command Palette” (press Cmd+Shift+P)
Search “keyboard json” and select “Preferences: Open Keyboard Shortcuts (JSON)”


Now, add the following snippet to that file:

/**
* Activity Bar
**/
{
    "key": "cmd+k cmd+e",
    "command": "workbench.view.explorer"
},
{
    "key": "cmd+k cmd+v",
    "command": "workbench.view.scm"
},
{
    "key": "cmd+k cmd+d",
    "command": "workbench.view.debug"
},
{
    "key": "cmd+k cmd+x",
    "command": "workbench.extensions.action.showInstalledExtensions"
},

Now, give it a test drive. While holding the Cmd key, press K and then V, you should see the “version control” panel. Now if you press Cmd+K+E, you should be back to the file explorer.



I switch between the version control panel and my explorer panel most often. I imagine the same will be true for you.

The logic behind these decisions
First, we are removing the “Activity Bar” to clear up space in the editor. All space is valuable. Not because you need more room for your code, but because your code needs to breathe and be the central focus of the editor.

Also, the less our fingers leave the keyboard the better, so this makes it an easy decision.

Let’s talk about the logic behind these shortcut keys.

If keyboard shortcuts were a computer program, CMD+ would be the “global scope”. More plainly, because CMD+ shortcut keys are the easiest to remember and type, your computer already has a bunch reserved. Some examples you are likely already familiar with: CMD+C, CMD+V, and CMD+Q.

As a consequence, if we started adding new CMD+ shortcuts, we would quickly run into collisions, or run out of available letters. Therefore, it’s easier if we have a blank slate, with no reserved keys yet. A new “scope” or “layer” if you will. Introducing: CMD+K

Why “K”? It’s a convention already established in Sublime Text, and I just took the cue from there. It also doesn’t hurt that it’s in a handy location on the keyboard (the home row).

As we go, we will be adding more CMD+K shortcuts where it makes sense.

Sure beats something like ^+⇧+⌥. Not only do you have to remember what those symbols mean, but you have to contort your fingers in impossible ways to hold them all at once.

It’s a hard enough life.

--------------------------------------------------------------------

Pro Tip #1: Move The Sidebar To The Right
This is another big change for you. Your entire coding career, the sidebar has been on the left.

However, now that you are emphasizing focus over whizbangs and doodads, your sidebar isn’t always visible.

As a consequence, your code will be pushed to the right every time you toggle the sidebar.

This behavior is jarring, and unacceptable.

Your code is THE most important thing in the editor. Why are you letting it get pushed around by the sidebar? Have some dignity.

If we move the sidebar to the RIGHT side of the screen, we can toggle it without interruption. This preference communicates that the sidebar is secondary and our code is primary.

Add the following snippet to your settings.json file:

”workbench.sideBar.location”: “right”,
The setting to hide the sidebar in settings.json

Pic of sidebar on right

Much better.

Pro Tip #2: Make The Sidebar Ridiculously Big
As you become more attached to a clean workspace, you will naturally hide the sidebar when you’re done with it. It will feel good to you.

Right now you haven’t developed this habit yet, so you’ll constantly forget, leaving the sidebar visible most of the time.

I believe in changing your environment to change your behavior, so here’s a brief anecdote from when I was a wee-lad:

In high school, I wanted dearly to get better at typing without looking at the keyboard. Over and over I failed using will power alone, so I scribbled on all the keys with a Sharpie marker. After a week or two I was typing just as fast as I was before, but now without looking at the keyboard at all! (Look Mom, no eyes!)

The “Sharpie marker” of our habit will be a GIANT sidebar. A sidebar so big you will be forced to hide it when you’re not using it.

This might seem silly to you, but if it’s the habit you’re after, it would be silly NOT to.

Screenshot of the editor with a giant sidebar on the right

Hiding The Status Bar
The status bar is the thin, yet still obnoxious blue bar at the bottom of your editor.

Consider for a moment the times you’ve gotten value out of it:

A screenshot of the status bar

I only ever use it for one thing: Changing the “Language Mode” of a file.

The Problem: You open a file in VS Code with an odd extension like .php_cs.dist, but want it to be interpreted as a specific language (In this case “PHP”).

The Solution: Instead of toggling the status bar just to set the language mode, open the command palette (Cmd+Shift+P) and search/select “Change Language Mode”.

The command palette is the junk drawer of VS Code affordances. Open it and dig through when you need that seldom-used functionality.

To kill the little blue bar of annoyance, add the following snippet to your settings.json file:

“workbench.statusBar.visible": false,
settings.json file for the status bar

Mmmm, that feels good. Now our code is full-bleed on the bottom.

Screenshot of bottom bar being gone

Hiding The Mini-Map
Here’s your editor’s mini-map:

A picture of the editor mini-map

This one is a no-brainer. It’s useless. I bet you can count on one hand the number of times you’ve used it.

It’s just a novelty. As “fun” as novelties are, they have no place disturbing our peace and quiet.

Let’s kill it.

Add the following to your settings.json file:

“editor.minimap.enabled": false,
Mini-map setting

Cleared mini-map
