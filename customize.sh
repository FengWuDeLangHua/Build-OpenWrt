#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' openwrt/package/base-files/luci2/bin/config_generate

#2. Clear the login password
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' openwrt/package/emortal/default-settings/files/99-default-settings
sed -i '/CYXluq4wUazHjmCDBCqXF/d' openwrt/package/lean/default-settings/files/zzz-default-settings

sed -i 's/"终端"/"TTYD"/g' openwrt/feeds/luci/applications/luci-app-ttyd/po/zh_Hans/ttyd.po

#3. Replace with JerryKuKu’s Argon
rm -rf openwrt/feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git openwrt/feeds/luci/themes/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' openwrt/feeds/luci/collections/luci-light/Makefile

#4
rm -rf openwrt/feeds/luci/applications/luci-app-passwall
rm -rf openwrt/feeds/luci/applications/luci-app-passwall2
rm -rf openwrt/feeds/packages/net/{xray*,v2ray*,v2ray*,sing*,chinadns-ng,trojan*,dns2socks,dns2tcp,geoview,microsocks,pdnsd-alt,tcping}
rm -rf openwrt/feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang openwrt/feeds/packages/lang/golang
git clone https://github.com/xiaorouji/openwrt-passwall.git openwrt/package/lean/openwrt-passwall
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git openwrt/package/lean/openwrt-passwall-packages

