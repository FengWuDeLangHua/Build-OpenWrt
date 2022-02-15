#!/bin/bash

sed -i 's/PATCHVER:=5.10/PATCHVER:=5.15/g' target/linux/x86/Makefile

sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

sed -i 's/luci-theme-bootstrap/luci-theme-argon-18.06/g' feeds/luci/collections/luci/Makefile
# sed -i 's/luci-theme-bootstrap/luci-theme-netgear/g' feeds/luci/collections/luci/Makefile
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/default-settings/files/zzz-default-settings
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/emortal/default-settings/files/99-default-settings

# sed -i '/REDIRECT/,+4d' package/lean/default-settings/files/zzz-default-settings
