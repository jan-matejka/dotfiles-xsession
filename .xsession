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
xsetroot -solid '#000000'
# There is an issue with nvidia proprietary drivers and xmonad that causes the
# screen not to redraw when there is only the Xorg root window.
# Force full composition pipeline in nvidia-settings does not help.
# xsetroot does.
# Btw: the nvidia-open-kernel-dkms does not build with current kernel because
# API incompatibility - https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1143486
# Applying the patch is trivial but the open source driver does not support
# older GPU's such as GTX 1050 (pascal arch).
exec xmonad
