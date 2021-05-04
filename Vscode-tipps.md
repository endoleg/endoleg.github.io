# Visual Studio Code (forked by Attila Kirk and Caleb Porzio!)

The Windows PowerShell ISE is no longer developed by Microsoft and is no longer part of PowerShell 7. The official successor is Microsoft Visual Studio Code. Therefore, an overview of everything you should know about the combination of PowerShell and Visual Studio Code.

# Links
https://www.thomasmaurer.ch/2020/03/how-to-use-powershell-ise-mode-in-visual-studio-code/
https://mikefrobbins.com/2017/08/24/how-to-install-visual-studio-code-and-configure-it-as-a-replacement-for-the-powershell-ise/
https://www.linkedin.com/pulse/inside-powershell-ise-vs-visual-studio-code-heinrich-ulbricht
https://docs.microsoft.com/en-us/powershell/scripting/dev-cross-plat/vscode/how-to-replicate-the-ise-experience-in-vscode?view=powershell-7.1&viewFallbackFrom=powershell-6

# Debugging PowerShell Script with Visual Studio Code
https://code.visualstudio.com/docs/editor/debugging
https://rkeithhill.wordpress.com/2015/12/27/debugging-powershell-script-with-visual-studio-code/

# Shortcuts
https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf

# PowerShell Extension Release History
https://marketplace.visualstudio.com/items/ms-vscode.PowerShell/changelog

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


----------------------------------------------------


Press Cmd+K+E to open up your file explorer, and let’s get started!

Setting Up The File Explorer
Before we learn the new workflow, let’s first set up our environment.

Step 1: Clearing The Clutter
VS Code has a few unnecessary widgets in the explorer that we’ll want to remove right away:



To remove them, right-click on one of their headings and deselect all of them to make them go away.





Ah, much better.

Optional Tip

By default VS Code adds graphical file icons. At first, I liked the extra icons, but now they feel noisy to me. If you feel the same way, you can add the following setting to settings.json to remove them:

"workbench.iconTheme": null,


Now things are even more serene:



Step 2: Installing A Helpful Extension
VS Code cannot duplicate files on its own. Fortunately, there’s a handy extension that solves the problem perfectly. Once installed, you won’t think about it again.

To install it:

Open your extensions panel using Cmd+K+X (from the first email)
Search “duplicate”
Find “Duplicate action” and click “Install”


That’s it, now if you right-click on a file in the sidebar, you should see the “Duplicate file or directory” item listed at the bottom.



Step 3: Add Keybindings
By now you should notice a recurring theme in this course: bringing order to the chaos that is keyboard shortcuts.

Here’s my general approach to thinking about adopting a new keyboard shortcut:

Is there an existing convention? (Cmd+T means “new tab” in Chrome, Safari, Finder, iTerm, and Hyper). Yes? Great, use it!
Will it be used often enough to deserve a letter in the root Cmd+? namespace?
If not, is there a logical letter for it in the custom Cmd+K+? namespace?
If not, arbitrary shortcut with some weak justification it is!
For the file explorer shortcuts, we’ll be leveraging the conventions of the Finder app on the Mac.



Here are the keyboard shortcuts we’ll be using from “Finder”:

Cmd+D for “Duplicate”
Cmd+Shift+N for “New Folder”
Cmd+Backspace for “Move To Trash”
Enter for “Rename“
To add these shortcuts open up your keybindings.json file and add the following snippet:

/**
* File Explorer
**/
{
    "key": "cmd+d",
    "command": "duplicate.execute",
    "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !inputFocus"
},
{
    "key": "cmd+n",
    "command": "explorer.newFile",
    "when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
},
{
    "key": "shift+cmd+n",
    "command": "explorer.newFolder",
    "when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
},
{
    "key": "cmd+r",
    "command": "workbench.files.action.refreshFilesExplorer",
    "when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
},


Notice the “when” conditions on each shortcut. Because of these conditions, we can use Cmd+D for “Duplicate” in the file explorer, but still, use it for “Select next occurrence” (Multi-cursor) in the text editor. We now can focus on using the most appropriate shortcuts, without worrying about collisions from other existing ones in the app.
Great, now our environment is all set up. Let’s look at some common file operations.

Using The File Explorer (Well)
Rather than listing out everything the file explorer is capable of, I’ve decided to walk through the things I most commonly use it for.

Here we go.

Traversing Files
Whether you’re renaming, duplicating, or deleting a file, you need to first be able to navigate to it.

Often, it’s faster to just use your mouse (this is one of the few allowable use cases for a mouse). However, it’s useful to know the keyboard shortcuts:

Up/Down Arrow: Move around the file list
Right Arrow: Open folder
Left Arrow: Close folder
Cmd+Left Arrow: Close ALL folders
Moving Files
This is another instance where using the mouse is advantageous. In VS Code, to move a file from one folder to another, simply drag and drop the file.

This is a fantastic feature I really missed when I was using Sublime.

Creating A New File
This is the most common action I perform in the file explorer. Occasionally, I open up the terminal and use the touch command to create a new file, but generally, I do the following:

Open the file explorer Cmd+K+E (This is the last time I’ll list this step)
Press Cmd+N to create a new file
Type the new filename
Press Enter
Close the file explorer Cmd+K+B (Also the last time I’ll list this)
If I need to create the file in a different folder, it’s much faster to right-click on a folder and select "New File”.

Creating A Folder
This is the same as creating a file, except instead of Cmd+N it’s Cmd+Shift+N.

Renaming A File
I love how quick and simple it is to rename a file (same behavior as in Finder):

Press Enter on the file name
Type the new name
Press Enter to commit the new name
Alternatively press Escape to back out of the rename
Deleting A File
To delete a file:

Select the file
Press Cmd+Backspace
Press Enter for the confirmation prompt
Adding Files From Other Applications
A nifty feature of VS Code is the ability to drag a file from another app into VS Code’s sidebar.

I use this often for dragging new image assets into my projects. Whether I downloaded the asset from the internet or exported it from Sketch, it’s as simple as dragging and dropping the file into the folder I want.



----------------



VS Code has a nifty little version control panel you can open by pressing Cmd+K Cmd+V (Remember that shortcut from the first email?).



There are a few things this panel is GREAT for, and plenty more I would never use it for.

Here’s my best summary of what I WOULDN’T use this panel for:

Branch Management

If it has to do with branches, I’m not using VS code for it. Merging, pushing, pulling, checking out, etc… are all operations I’d rather do straight in the command line. (You might prefer some Git GUI like Sourcetree or GitHub Desktop)

For me, command-line Git is the “source of truth”. I use it for most major operations.

As powerful as Git is on the command line, it sucks at a handful of things. VS Code makes these experiences much nicer. Let’s see em’.

Committing Code
This is THE most common Git operation I perform daily, and VS Code is much better at it than the command line is. Yeah, I said it.

Here’s how I commit code using the version control panel:

Open the version control panel Cmd+K Cmd+V
Sometimes click through various files to get a beautiful diff of the changes
Type a message
Press Cmd+Enter


IF I only want to commit certain unstaged files, I click the little “plus” icon on the files I want to be included in the commit. Too easy.

The only customization needed for this is the following keybinding in your keybindings.json file:



{
    "command": "git.commit",
    "when": "activeViewlet == 'workbench.view.scm'",
    "key": "cmd+enter"
},
To me, Cmd+Enter is the keybinding convention for “sending” or “submitting” something that you are currently typing (When the Enter key needs to still be able to add a line-break). My email client does this, Twitter does this, we’re doing this.

Undo Last Commit
Here is the entire list of Git operations VS Code offers:



I only ever use one 😎. And it is GLORIOUS: Undo Last Commit.



A common operation that previously required googling, stack overflowing, and breaking your entire Git setup, is now just a mouse click.

What. A. Rush.

Resolving Merge Conflicts
When you encounter merge conflicts in your command line (or GUI), you can open this panel and easily browse the conflicts, edit them inline, and resolve them easily. (Git GUI users are not impressed)



The interface is pretty self-explanatory, but it’s worth noting one operation that is much easier than it’s command-line alternative:

Resolving an entire file’s conflicts at once (by choosing which set of changes you want).

Normally, on the command line, I type something like git checkout some/file/that/takes/a/long/time/to/type.php —ours (or —theirs).

In VS Code, I can just select “accept all current/incoming” in the right-click dropdown of the file I want, and VS Code will remove the conflict. I can now click the “plus” icon to stage the conflict.


----

Toggling The Terminal
I don’t even know what the default keyboard shortcut for opening the terminal in VS Code is because I made this keybinding on day one.

Here it is: Cmd+T



Copy and paste this bad-boy into your keybindings.json file.

/**
* Terminal
/*
{
    "key": "cmd+t",
    "command": "workbench.action.terminal.toggleTerminal"
},
Now, when you’re editing code and you hit Cmd+T, your terminal will open (if it’s already open, it will focus). When you are already in the terminal and you want to close it, hit… Cmd+T!

I have to change my “T” keycap out every couple of days because I use this shortcut so much.

