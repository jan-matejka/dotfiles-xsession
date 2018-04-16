#! /bin/sh

# stdout/stderr and errors executing xsession are written into
# ~/.xsession-errors. At least under xdm.

export PATH="$HOME/.local/bin:$PATH"

trayer --edge top \
  --align right \
  --SetDockType true \
  --SetPartialStrut true \
  --expand true \
  --widthtype request \
  --transparent true \
  --alpha 256 \
  --height 12 &

setxkbmap -option "caps:swapescape"

exec xmonad
