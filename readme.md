# Basic macOS keys on Windows

This is an AutoHotkey V2 script designed to bring essential macOS key combinations to Windows, making it easier to switch seamlessly between the two operating systems.

> ⚠️ *NOTE* ⚠️
>
> This script is simplified to the bare minimum that I need to minimize my cognitive load when switching from Windows (my primary development machine) to macOS.
> 
> It is not a full macOS key mapping!

## 🗺️ Mapping 

| **Windows Shortcut**         | **Mapped to Mac Shortcut**       | **Action**                                            | **Comment**                                            |
|-------------------------------|-----------------------------------|------------------------------------------------------|-------------------------------------------------------|
| `Ctrl + Tab`                 | `Cmd + Tab`                     | Switch between applications                         | Custom handling with `KeyWait` for `Alt` release.    |
| `Ctrl + Tab` (non-blocking)  | `Cmd + Tab`                     | Switch between applications                         | Remaps Alt + Tab without blocking Windows Alt+Tab.   |
| `Alt + X`                    | `Cmd + X`                       | Cut                                                  |                                                       |
| `Alt + C`                    | `Cmd + C`                       | Copy                                                 |                                                       |
| `Alt + V`                    | `Cmd + V`                       | Paste                                                |                                                       |
| `Alt + S`                    | `Cmd + S`                       | Save                                                 |                                                       |
| `Alt + A`                    | `Cmd + A`                       | Select all                                           |                                                       |
| `Alt + Z`                    | `Cmd + Z`                       | Undo                                                 |                                                       |
| `Alt + Shift + Z`            | `Cmd + Shift + Z`               | Redo                                                 |                                                       |
| `Alt + W`                    | `Cmd + W`                       | Close window/tab                                     |                                                       |
| `Alt + F`                    | `Cmd + F`                       | Find                                                 |                                                       |
| `Alt + N`                    | `Cmd + N`                       | New                                                  |                                                       |
| `Alt + R`                    | `Cmd + R`                       | Refresh/Reload                                       | Special handling for `Ctrl + Shift + F5`.            |
| `Alt + M`                    | `Cmd + M`                       | Minimize window                                      | Uses `Win + Down`.                                    |
| `Alt + Backtick (\``)`       | `Cmd + Shift + Tab`             | Switch between windows                               | Sends custom key sequence for Windows behavior.      |
| `Alt + Q`                    | `Cmd + Q`                       | Quit application                                     | Sends `Alt + F4`.                                     |
| `Alt + Shift + Q`            | `Ctrl + Cmd + Q`                | Lock desktop session                                 |                                                      |
| `Alt + [1-9]`                | `Cmd + [1-9]`                   | Switch to tab by number                              | Chrome/Edge-specific shortcuts.                      |
| `Alt + T`                    | `Cmd + T`                       | Open new tab                                         | Chrome/Edge-specific.                                 |
| `Alt + Shift + T`            | `Cmd + Shift + T`               | Reopen closed tab                                    | Chrome/Edge-specific.                                 |
| `Alt + Shift + Right Arrow`  | `Cmd + Option + Right Arrow`    | Next tab                                             | Chrome/Edge-specific.                                 |
| `Alt + Shift + Left Arrow`   | `Cmd + Option + Left Arrow`     | Previous tab                                         | Chrome/Edge-specific.                                 |
| `Alt + L`                    | `Cmd + L`                       | Focus address bar                                    | Chrome/Edge-specific.                                 |
| `Alt + Left Click`           | `Cmd + Left Click`              | Open link in new tab                                 | Chrome/Edge-specific.                                 |
| `Alt + Left Arrow`           | `Cmd + Left Arrow`              | Move to beginning of line                           | Does not interfere during Alt+Tab.                   |
| `Alt + Right Arrow`          | `Cmd + Right Arrow`             | Move to end of line                                 | Does not interfere during Alt+Tab.                   |
| `Alt + Up Arrow`             | `Cmd + Up Arrow`                | Move to beginning of document                       |                                                       |
| `Alt + Down Arrow`           | `Cmd + Down Arrow`              | Move to end of document                             |                                                       |
| `Alt + Shift + Left Arrow`   | `Cmd + Shift + Left Arrow`      | Select to beginning of line                         |                                                       |
| `Alt + Shift + Right Arrow`  | `Cmd + Shift + Right Arrow`     | Select to end of line                               |                                                       |
| `Alt + Shift + Up Arrow`     | `Cmd + Shift + Up Arrow`        | Select to beginning of document                     |                                                       |
| `Alt + Shift + Down Arrow`   | `Cmd + Shift + Down Arrow`      | Select to end of document                           |                                                       |
| `LWin + Left Arrow`          | `Option + Left Arrow`           | Move one word left                                  |                                                       |
| `LWin + Right Arrow`         | `Option + Right Arrow`          | Move one word right                                 |                                                       |
| `LWin + Shift + Left Arrow`  | `Option + Shift + Left Arrow`   | Select one word left                                |                                                       |
| `LWin + Shift + Right Arrow` | `Option + Shift + Right Arrow`  | Select one word right                               |                                                       |
| `Alt + Backspace`            | `Option + Delete`               | Delete word before caret                            |                                                       |
| `Ctrl + Backspace` (Explorer only) | `Cmd + Backspace`         | Delete file                                         | File Explorer-specific.                              |
| `Ctrl + Alt + Space`         | `Ctrl + Cmd + Space`            | Open emoji picker                                   | Mimics macOS emoji picker.                           |


Additionally, as `LWin + Left Arrow` and `LWin + Right Arrow` are remapped above, we are loosing the functionality to move/snap the current Active window, so the script remaps these commands to `LWin + PgUp` and `LWin + Right Up` respectively. This allows to still use the Window snapping with these new keys.


## 💻 Installation

1. Install [AutoHotkey v2](https://www.autohotkey.com/).
2. Download the [macos-keys-on-windows.ahk](macos-keys-on-windows.ahk) script or clone this repository.
3. Run the script by double-clicking it.
4. To run the script on startup, create a shortcut to the script in the `shell:startup` folder.

## ♻️ Credits

This script was adapted from the following code [here](https://github.com/stevenilsen123/mac-keyboard-behavior-in-windows/pull/21)

## 🪪 License

This project is licensed under the [Unlicense](https://choosealicense.com/licenses/unlicense/).

## 🤗 Author

Alexandre Mutel aka [XenoAtom](https://xoofx.github.io).


