#!/bin/bash

# shellcheck disable=SC2034
declare -f assertConfirmation &>/dev/null ||  source "$HOME/.dotfiles/install/declarations.sh"

dconf write /org/gnome/nm-applet/disable-disconnected-notifications true
dconf write /org/gnome/nm-applet/disable-connected-notifications true

################################################################################
#### Update Manager
################################################################################
dconf write /com/linuxmint/updates/hide-window-after-update true
dconf write /com/linuxmint/updates/hide-systray true
dconf write /com/linuxmint/updates/default-repo-is-ok true
dconf write /com/linuxmint/updates/show-configuration false
dconf write /com/linuxmint/updates/level1-is-visible true
dconf write /com/linuxmint/updates/level2-is-visible true
dconf write /com/linuxmint/updates/level3-is-visible true
dconf write /com/linuxmint/updates/level4-is-visible false
dconf write /com/linuxmint/updates/level5-is-visible false
dconf write /com/linuxmint/updates/security-updates-are-visible false
dconf write /com/linuxmint/updates/security-updates-are-safe false
dconf write /com/linuxmint/updates/kernel-updates-are-visible false
dconf write /com/linuxmint/updates/kernel-updates-are-safe false
dconf write /com/linuxmint/updates/level1-is-safe true
dconf write /com/linuxmint/updates/level2-is-safe true
dconf write /com/linuxmint/updates/level3-is-safe true
dconf write /com/linuxmint/updates/level4-is-safe false
dconf write /com/linuxmint/updates/level5-is-safe false
dconf write /com/linuxmint/updates/security-updates-are-visible true
dconf write /com/linuxmint/updates/security-updates-are-safe false
dconf write /com/linuxmint/updates/kernel-updates-are-visible true
dconf write /com/linuxmint/updates/kernel-updates-are-safe false
dconf write /com/linuxmint/updates/refresh-days 7
dconf write /com/linuxmint/updates/refresh-hours 0
dconf write /com/linuxmint/updates/refresh-minutes 10
dconf write /com/linuxmint/updates/autorefresh-days 7
dconf write /com/linuxmint/updates/autorefresh-hours 2
dconf write /com/linuxmint/updates/autorefresh-minutes 0
dconf write /com/linuxmint/updates/dist-upgrade true

################################################################################
#### File Manager
################################################################################
dconf write /org/mate/caja/list-view/default-visible-columns "['name', 'size', 'type', 'date_modified', 'owner', 'permissions']"
dconf write /org/mate/caja/desktop/computer-icon-visible false
dconf write /org/mate/caja/desktop/home-icon-visible false
dconf write /org/mate/caja/desktop/volumes-visible false
dconf write /org/mate/caja/preferences/always-use-location-entry true
dconf write /org/mate/caja/preferences/click-policy "'single'"
dconf write /org/mate/caja/preferences/confirm-trash false
dconf write /org/mate/caja/preferences/show-image-thumbnails "'never'"
dconf write /org/mate/caja/preferences/show-advanced-permissions true
dconf write /org/mate/caja/window-state/start-with-sidebar false
dconf write /org/mate/caja/window-state/maximized true

################################################################################
#### Multimedia Player
################################################################################
dconf write /org/x/player/remember-position true
dconf write /org/x/player/autoload-subtitles true
dconf write /org/x/player/repeat true
dconf write /org/x/player/shuffle true

################################################################################
#### Desktop
################################################################################
dconf write /org/mate/desktop/lockdown/disable-lock-screen true
dconf write /org/mate/desktop/lockdown/disable-user-switching true
dconf write /org/mate/desktop/peripherals/keyboard/delay 200
dconf write /org/mate/desktop/peripherals/keyboard/repeat true
dconf write /org/mate/desktop/peripherals/keyboard/rate 100

dconf write /org/mate/desktop/peripherals/mouse/cursor-size 24
dconf write /org/mate/desktop/peripherals/mouse/cursor-theme "'DMZ-Black'"
dconf write /org/mate/desktop/peripherals/mouse/motion-threshold 2.0
dconf write /org/mate/desktop/peripherals/mouse/motion-acceleration 5.5

dconf write /org/mate/desktop/peripherals/touchpad/disable-while-typing false
dconf write /org/mate/desktop/peripherals/touchpad/horizontal-edge-scrolling true
dconf write /org/mate/desktop/peripherals/touchpad/horizontal-two-finger-scrolling true
dconf write /org/mate/desktop/peripherals/touchpad/natural-scroll false

dconf write /org/mate/desktop/interface/gtk-theme "'Mint-Y-Dark'"
dconf write /org/mate/desktop/interface/icon-theme "'Mint-Y'"
dconf write /org/mate/desktop/interface/menus-have-icons true
dconf write /org/mate/desktop/interface/can-change-accels false
dconf write /org/mate/desktop/interface/toolbar-style "'icons'"
dconf write /org/mate/desktop/interface/cursor-blink true
dconf write /org/mate/desktop/interface/cursor-blink-time 1200
dconf write /org/mate/desktop/session/idle-delay 120
dconf write /org/mate/screensaver/idle-activation-enabled false
dconf write /org/mate/marco/global-keybindings/run-command-terminal "'disabled'"
dconf write /org/mate/desktop/keybindings/custom0/binding "'disabled'"
dconf write /org/mate/desktop/keybindings/custom0/name "'Fullscreen Terminal'"
dconf write /org/mate/desktop/keybindings/custom0/binding "'<Primary><Alt>t'"
dconf write /org/mate/desktop/keybindings/custom0/action "'mate-terminal --window --full-screen'"

if ! (( ${autoConfirm:?} )); then
  clear
  read -n 1 -p "Enable typing break? (yes/No) "
  printf '\n========================================================================'
  if [[ $REPLY =~ ^([Yy]|[Ss])$ ]]; then
    dconf write /org/mate/desktop/typing-break/enabled true
    dconf write /org/mate/desktop/typing-break/type-time 25
    dconf write /org/mate/desktop/typing-break/break-time 5
    dconf write /org/mate/desktop/typing-break/allow-postpone true
  fi
fi

################################################################################
#### Marco
################################################################################
dconf write /org/mate/marco/general/action-double-click-titlebar "'toggle_maximize'"
dconf write /org/mate/marco/general/action-middle-click-titlebar "'toggle_maximize'"
dconf write /org/mate/marco/general/action-right-click-titlebar "'menu'"
dconf write /org/mate/marco/general/application-based false
dconf write /org/mate/marco/general/audible-bell false
dconf write /org/mate/marco/general/auto-raise false
dconf write /org/mate/marco/general/auto-raise-delay 500
dconf write /org/mate/marco/general/center-new-windows true
dconf write /org/mate/marco/general/focus-mode "'click'"
dconf write /org/mate/marco/general/focus-new-windows "'smart'"
dconf write /org/mate/marco/general/num-workspaces 8
dconf write /org/mate/marco/general/reduced-resources true
dconf write /org/mate/marco/general/side-by-side-tiling true
dconf write /org/mate/marco/general/theme "'Mint-Y-Dark'"
dconf write /org/mate/marco/general/visual-bell false
dconf write /org/mate/marco/general/visual-bell-type "'fullscreen'"
dconf write /org/mate/marco/general/wrap-style "'no wrap'"

dconf write /org/mate/marco/window-keybindings/move-to-workspace-1 "'<Shift><Alt>1'"
dconf write /org/mate/marco/window-keybindings/move-to-workspace-2 "'<Shift><Alt>2'"
dconf write /org/mate/marco/window-keybindings/move-to-workspace-3 "'<Shift><Alt>3'"
dconf write /org/mate/marco/window-keybindings/move-to-workspace-4 "'<Shift><Alt>4'"
dconf write /org/mate/marco/window-keybindings/move-to-workspace-5 "'<Shift><Alt>5'"
dconf write /org/mate/marco/window-keybindings/move-to-workspace-6 "'<Shift><Alt>6'"
dconf write /org/mate/marco/window-keybindings/move-to-workspace-7 "'<Shift><Alt>7'"
dconf write /org/mate/marco/window-keybindings/move-to-workspace-8 "'<Shift><Alt>8'"

dconf write /org/mate/marco/workspace-names/name-1 "'Concu'"
dconf write /org/mate/marco/workspace-names/name-2 "'OOP'"
dconf write /org/mate/marco/workspace-names/name-3 "'Compu'"
dconf write /org/mate/marco/workspace-names/name-4 "'RySD'"
dconf write /org/mate/marco/workspace-names/name-5 "'software'"
dconf write /org/mate/marco/workspace-names/name-6 "'code'"
dconf write /org/mate/marco/workspace-names/name-7 "'config'"
dconf write /org/mate/marco/workspace-names/name-8 "'other'"

################################################################################
#### Panel
################################################################################
dconf write /org/mate/panel/toplevels/bottom/auto-hide true
dconf write /org/mate/panel/toplevels/bottom/size 30

################################################################################
#### Power manager
################################################################################
dconf write /org/mate/power-manager/action-critical-battery "'suspend'"
dconf write /org/mate/power-manager/action-sleep-type-ac "'nothing'"
dconf write /org/mate/power-manager/action-sleep-type-battery "'nothing'"
dconf write /org/mate/power-manager/backlight-battery-reduce false
dconf write /org/mate/power-manager/brightness-dim-battery 0
dconf write /org/mate/power-manager/button-lid-ac "'nothing'"
dconf write /org/mate/power-manager/button-lid-battery "'nothing'"
dconf write /org/mate/power-manager/button-power "'suspend'"
dconf write /org/mate/power-manager/enable-sound false
dconf write /org/mate/power-manager/event-when-closed-battery true
#dconf write /org/mate/power-manager/idle-brightness 100
dconf write /org/mate/power-manager/idle-dim-ac true
dconf write /org/mate/power-manager/idle-dim-battery true
dconf write /org/mate/power-manager/idle-dim-time 1800
dconf write /org/mate/power-manager/lock-hibernate false
dconf write /org/mate/power-manager/lock-blank-screen false
dconf write /org/mate/power-manager/lock-keyring-hibernate false
dconf write /org/mate/power-manager/lock-suspend false
dconf write /org/mate/power-manager/lock-use-screensaver false
dconf write /org/mate/power-manager/notify-discharging false
dconf write /org/mate/power-manager/sleep-computer-ac 3600
dconf write /org/mate/power-manager/sleep-computer-battery 3600
dconf write /org/mate/power-manager/sleep-display-ac 1800
dconf write /org/mate/power-manager/sleep-display-battery 1800

################################################################################
#### Terminal
################################################################################
dconf write /org/mate/terminal/profiles/default/silent-bell
dconf write /org/mate/terminal/profiles/default/default-show-menubar false
dconf write /org/mate/terminal/profiles/default/scrollback-unlimited true
dconf write /org/mate/terminal/global/profile-list "['defaul', 'profile0']"
dconf write /org/mate/terminal/profiles/profile0/visible-name "'onedark'"
dconf write /org/mate/terminal/profiles/profile0/palette "'#28272C2B3433:\
  #E0DF6C6B7574:#9897C3C27978:#E5E5C0BF7B7B:#6160AFAFEFEF:#C6C57877DDDD:\
  #5656B6B6C2C1:#63636D6C8382:#28272C2B3433:#BEBE504F4646:#9897C3C27978:\
  #D1D09A996665:#6160AFAFEFEF:#C6C57877DDDD:#5656B6B6C2C1:#5C5B6363706F'"
dconf write /org/mate/terminal/profiles/profile0/background-color "'#28272C2B3433'"
dconf write /org/mate/terminal/profiles/profile0/foreground-color "'#ABAAB2B1BFBF'"
dconf write /org/mate/terminal/global/default-profile "'profile0'"

################################################################################
#### Fonts
################################################################################
dconf write /org/mate/caja/desktop/font "'Noto Sans 16'"
dconf write /org/mate/desktop/interface/font-name "'Noto Sans 14'"
dconf write /org/mate/desktop/interface/document-font-name "'Noto Sans 14'"
dconf write /org/mate/desktop/interface/monospace-font-name "'Monospace 14'"
dconf write /org/mate/marco/general/titlebar-uses-system-font false
dconf write /org/mate/marco/general/titlebar-font "'Noto Sans Bold 10'"
if [ -f ~/.local/share/fonts/Hack-Regular.ttf ]; then
  dconf write /org/mate/terminal/profiles/default/use-system-font false
  dconf write /org/mate/terminal/profiles/default/font "'Hack 14'"
fi
