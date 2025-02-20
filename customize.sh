#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/luci2/bin/config_generate

#2. Clear the login password
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/emortal/default-settings/files/99-default-settings
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

sed -i 's/"终端"/"TTYD"/g' feeds/luci/applications/luci-app-ttyd/po/zh_Hans/ttyd.po

#3. Replace with JerryKuKu’s Argon
rm -rf feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile

#4
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall2
rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,microsocks,pdnsd-alt}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
$svn https://github.com/kenzok8/small/trunk/v2dat feeds/packages/utils/v2dat
git clone https://github.com/xiaorouji/openwrt-passwall.git package/lean/openwrt-passwall
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/lean/openwrt-passwall-package
cp -Rf package/lean/openwrt-passwall-package/* feeds/packages/net/

