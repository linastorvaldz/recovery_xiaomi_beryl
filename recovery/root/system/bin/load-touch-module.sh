#!/sbin/sh
# Touch driver loader script for beryl
# This script was written by linastorvaldz @ github

# disable exit-on-error
set +e

mod_dir="/lib/modules"
mods=(
  lct_tp.ko
  scp_stub.ko
  xiaomi_tp.ko
  fts_touch_i2c.ko
)

# load the modules
for m in ${mods[@]}; do
  insmod $mod_dir/$m
done
