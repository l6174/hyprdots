<div align="center">
    <h1>✨Hyprland Dot Files✨</h1>
    <h3></h3>
</div>

## Table of Contents
- [Gallery](#gallery)
- [Contents](#contents)

# Gallery
![](https://github.com/l6174/hyprdots/blob/main/Pictures/Screenshots/preview1.gif)
![](https://github.com/l6174/hyprdots/blob/main/Pictures/Screenshots/preview2.png)
![](https://github.com/l6174/hyprdots/blob/main/Pictures/Screenshots/preview3.png)
![](https://github.com/l6174/hyprdots/blob/main/Pictures/Screenshots/preview4.png)
![](https://github.com/l6174/hyprdots/blob/main/Pictures/Screenshots/preview5.png)

> [!note]
> ~~This setup is not suitable for monitors of resolution other then 1366x768.~~ This is setup is now suitable for any screen (Thanks to Hyprpanel).

# Contents
- Wallpaper: [Squiggly](https://github.com/l6174/hyprdots/blob/main/Wallpapers/Rose_Pine/Horizontal/squiggly.png)
- Browser: [Zen Browser](https://zen-browser.app/)
- Panel: [Hyprpanel](https://hyprpanel.com)
- Fetch Tool: [Nitch](https://github.com/ssleert/nitch)
- New Tab Page: [Excalith](https://github.com/excalith/excalith-start-page)
- Visualizer: [Cava](https://github.com/karlstav/cava)
- Prompt: [Starship](https://starship.rs/)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Color Scheme: [Rosé Pine](https://rosepinetheme.com)

## HyprPanel Config

### Steps to Install HyprPanel Config

1. Backup `~/.config/ags`
2. Execute these commands:
```
$ cd ~/.config
$ rm -r ags/
$ git clone https://github.com/l6174/HyprPanel
$ mv HyprPanel ags
$ pkill ags ; ags & disown
```
3. Open your HyprPanel options menu from dashboard or by running `ags -t settings-dialog` in terminal
4. Restore Configuration Files
	- Configuration > General > Import and Select `~/.config/backups/hyprpanel_config.json`
	- Configuration > General Settings > Import and Select `~/.config/backups/hyprpanel_theme.json`

## TODO
- [ ] Add Installation Script
