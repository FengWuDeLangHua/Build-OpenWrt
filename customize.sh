#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
# sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i '/CYXluq4wUazHjmCDBCqXF/d' openwrt/package/emortal/default-settings/files/99-default-settings

# #3. Replace with JerryKuKu’s Argon
# rm -rf openwrt/package/lean/luci-theme-argon
rm -rf openwrt/feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git openwrt/feeds/luci/themes/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' openwrt/feeds/luci/collections/luci-light/Makefile

# #4
# git clone https://github.com/fw876/helloworld.git openwrt/package/lean/helloworld

# # rm -rf openwrt/feeds/packages/net/smartdns
# # rm -rf openwrt/feeds/luci/applications/luci-app-smartdns
# # git clone https://github.com/pymumu/openwrt-smartdns.git openwrt/feeds/packages/net/smartdns
# # git clone -b lede https://github.com/pymumu/luci-app-smartdns.git openwrt/package/lean/luci-app-smartdns

# rm -rf openwrt/feeds/packages/net/mosdns
# rm -rf openwrt/feeds/luci/applications/luci-app-mosdns
# git clone https://github.com/sbwml/luci-app-mosdns.git openwrt/package/lean/luci-app-mosdns
