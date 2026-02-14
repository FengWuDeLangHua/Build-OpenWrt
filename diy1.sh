#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================

# theme
# immortalwrt
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile
# lede
# sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci-light/Makefile
# Official
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile

# passwall
# sed -i 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' feeds.conf.default
# sed -i 'src-git passwall_luci https://github.com/Openwrt-Passwall/openwrt-passwall.git;main' feeds.conf.default

# golang
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang -b 1.25 feeds/packages/lang/golang

# openwrt
wget -O luci.zip https://github.com/immortalwrt/luci/archive/refs/heads/openwrt-25.12.zip
unzip -q luci.zip
mv luci-openwrt-25.12/applications/luci-app-arpbind package/
mv luci-openwrt-25.12/applications/luci-app-autoreboot package/
sed -i 's#../../luci.mk#$(TOPDIR)/feeds/luci/luci.mk#g' package/luci-app-arpbind/Makefile
sed -i 's#../../luci.mk#$(TOPDIR)/feeds/luci/luci.mk#g' package/luci-app-autoreboot/Makefile
rm -rf luci-openwrt-25.12 luci.zip

# openclash
# rm -rf feeds/luci/applications/luci-app-openclash

# homeproxy
# rm -rf feeds/luci/applications/luci-app-homeproxy

# daed
# rm -rf feeds/luci/applications/luci-app-dae
# rm -rf feeds/luci/applications/luci-app-daed
# rm -rf feeds/packages/net/dae
# rm -rf feeds/packages/net/daed
git clone https://github.com/QiuSimons/luci-app-daed package/dae
sudo apt-get update
sudo apt-get install -y clang llvm npm
sudo npm install -g pnpm

# smartdns
# rm -rf feeds/packages/net/smartdns
# rm -rf feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/pymumu/luci-app-smartdns feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/pymumu/openwrt-smartdns feeds/packages/net/smartdns

# nikki
# git clone https://github.com/nikkinikki-org/OpenWrt-nikki.git package/OpenWrt-nikki
