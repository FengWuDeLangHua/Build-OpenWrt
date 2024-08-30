#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
rm package/lean/luci-theme-argon -rf
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon-jerrykuku
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

#4
rm -rf feeds/packages/net/smartdns -rf
rm -rf feeds/luci/applications/luci-app-smartdns -rf
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git


rm -rf feeds/packages/net/mosdns -rf
rm -rf feeds/luci/applications/luci-app-mosdns -rf
git clone https://github.com/sbwml/luci-app-mosdns.git package/lean/luci-app-mosdns
