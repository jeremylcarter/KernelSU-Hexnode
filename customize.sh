# boot mode
if [ "$BOOTMODE" != true ]; then
  abort "- Please install via Magisk/KernelSU app only!"
fi

AUTOMOUNT=true
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=false
SKIPUNZIP=0

set_perm_recursive  $MODPATH  0  0  0777  0777
APPS="`ls $MODPATH/system/priv-app` `ls $MODPATH/system/app`"