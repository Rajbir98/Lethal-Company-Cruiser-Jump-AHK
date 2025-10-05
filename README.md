# Lethal Company Cruiser Jump Script (AutoHotkey)

A simple AutoHotkey script that automates cruiser jump movements in Lethal Company.  
Includes multiple movement modes with accurate timing based on gameplay footage.

---

## Features

- Three movement modes:
  1. TO SHIP WITH MAGNET
  2. TO FIRE EXIT (ECLIPSE JUMP)
  3. TO SHIP NO MAGNET
- Frame-accurate jump and movement timing
- On-screen ToolTips to show current mode
- Easy hotkey controls

---

## Requirements

- AutoHotkey (https://www.autohotkey.com/)
- Windows PC
- Lethal Company

---

## Installation

1. Copy the script into a text file.
2. Save it as `LethalCompanyCruiser.ahk`.
3. Run the file by double-clicking it.

---

## Controls

| Key | Action |
|-----|---------|
| `\` | Toggle between modes |
| `]` | Run the current mode’s sequence |
| `F11` | Exit the script |

---

## Modes

### 1. TO SHIP WITH MAGNET
- Uses `A` for movement.
- Performs two short jumps, then `W + Space`, then `S + Space`.

### 2. TO FIRE EXIT (ECLIPSE JUMP)
- Uses `D` for movement.
- Performs a triple jump, then `S + W + Space`, ending with `E`.

### 3. TO SHIP NO MAGNET
- Uses `A` for movement.
- Frame-perfect jump version for non-magnet travel.

---

## Notes

- Make sure you are facing the correct direction before running a sequence.
- Adjust `Sleep` values (in milliseconds) if timing feels off.
- The script only sends keyboard inputs — it does not modify game files.
- Use responsibly in multiplayer.

---

## Credits

Special thanks to **Bread** (YouTube: [@call_me_bread](https://www.youtube.com/@call_me_bread))  
for the original gameplay footage and input timings used to base this script on.

---

## Example

1. Press `\` to select a mode.  
2. Press `]` to execute the jump sequence.  
3. ToolTip will display when it finishes.  
4. Press `F11` to close the script.
