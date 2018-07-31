# BBS - BSPWM Bar Scripts

Scripts to render a Linux desktop bar (top panel). Intended to be used with [lemonbar](https://github.com/LemonBoy/bar)
and [BSWPM](https://github.com/baskerville/bspwm).

![Screenshot](https://raw.githubusercontent.com/andornaut/bbs/master/screenshot.png)

## Usage

```
sudo make install
bbs &
```

## Configuration

[bbs](./bbs) creates and sources a file at `~/.config/bbs/bbs.env`, which you can use to change the following settings.

Name|Default Value
---|---
CENTER_TITLE|false
COLOR_DEFAULT_FG|#a7a5a5
COLOR_DEFAULT_BG|#333232
COLOR_FREE_FG|#737171
COLOR_FREE_BG|#333232
COLOR_FOCUSED_FREE_FG|#000000
COLOR_FOCUSED_FREE_BG|#504e4e
COLOR_OCCUPIED_FG|#a7a5a5
COLOR_OCCUPIED_BG|#333232
COLOR_FOCUSED_OCCUPIED_FG|#d6d3d2
COLOR_FOCUSED_OCCUPIED_BG|#504e4e
COLOR_URGENT_FG|#f15d66
COLOR_URGENT_BG|#333232
COLOR_FOCUSED_URGENT_FG|#501d1f
COLOR_FOCUSED_URGENT_BG|#d5443e
COLOR_TITLE_FG|#a8a2c0
COLOR_TITLE_BG|#333232
COLOR_SYS_FG|#b1a57d
COLOR_SYS_BG|#333232

DATE_FORMAT|%a %d, %H:%M
ICON_DESKTOP_FREE|□
ICON_DESKTOP_FOCUSED_FREE|□
ICON_DESKTOP_OCCUPIED|■
ICON_DESKTOP_FOCUSED_OCCUPIED|■
ICON_DESKTOP_URGENT|☼
ICON_DESKTOP_FOCUSED_URGENT|☼
ICON_BATTERY_PLUGGED_IN|⚡
ICON_BATTERY_DISCHARGING|⚡
ICON_CLOCK|☀
ICON_SENSORS|♥
ICON_VOLUME|♫
ICON_VOLUME_DOWN|‒
ICON_VOLUME_UP|+
ICON_WIFI|☎
LEMONBAR_EXTRA_ARGS|
    -f -10 \
    -a $(($(bspc query --desktops|wc -l)+5)) \
    -g $(xrandr|grep '+0+0'|head -n1|tr -d primary|awk '{print $3}'|cut -dx -f1)x28+0+0
SHOW_BATTERY|true
SHOW_CLOCK|true
SHOW_DESKTOP_SWITCHER|true
SHOW_SENSORS|true
SHOW_TITLE|true
SHOW_VOLUME|true
SHOW_WIFI|true

[Example Configuration](https://github.com/andornaut/dotfiles/blob/master/.config/bbs/bbs.env)

## Dependencies

*An asterisk denotes a required dependency*

* [BSWPM](https://github.com/baskerville/bspwm)\*
* [lemonbar](https://github.com/LemonBoy/bar)\*
  (the [krypt-n fork](https://github.com/krypt-n/bar) is required for XFT font support)
* [xdo](https://github.com/baskerville/xdo)*
* [acpi](http://www.tldp.org/HOWTO/html_single/ACPI-HOWTO/)
* [DejaVuSans](https://dejavu-fonts.github.io/)
* [font-awesome](http://fontawesome.io)
* [lm-sensors](https://github.com/groeck/lm-sensors)
* [nmcli](https://wiki.gnome.org/Projects/NetworkManager/nmcli)
* [pavolume](https://github.com/andornaut/pavolume)
* [sutils](https://github.com/baskerville/sutils)
* [xtitle](https://github.com/baskerville/xtitle)

## Credits

Originally inspired by the
[BSPWM example panel scripts](https://github.com/baskerville/bspwm/tree/master/examples/panel).
This project is not affiliated with, or endorsed by, BSPWM.
