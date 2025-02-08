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

#3. Replace with JerryKuKu’s Argon
rm -rf openwrt/feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git openwrt/feeds/luci/themes/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' openwrt/feeds/luci/collections/luci-light/Makefile

# #4
rm -rf openwrt/feeds/package/net/smartdns
rm -rf openwrt/feeds/luci/applications/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git openwrt/feeds/package/net/openwrt-smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git openwrt/feeds/luci/applications/luci-app-smartdns

rm -rf openwrt/feeds/luci/applications/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git openwrt/feeds/luci/applications/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git openwrt/feeds/package/net/openwrt-passwall-packages


