#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
# Modify default IP
# immortalwrt
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# lede
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/luci2/bin/config_generate
# Lienol
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# Official
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Clear the login password
# immortalwrt
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/emortal/default-settings/files/99-default-settings
# lede
# sed -i 's/"终端"/"TTYD"/g' feeds/luci/applications/luci-app-ttyd/po/zh_Hans/ttyd.po
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# theme
# immortalwrt
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile
# lede
# sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci-light/Makefile
# Official
# git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile

# golang
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/kenzok8/golang -b 1.25 feeds/packages/lang/golang

# arpbind/autoreboot
# wget -O luci.zip https://github.com/immortalwrt/luci/archive/refs/heads/openwrt-25.12.zip
# unzip -q luci.zip
# mv luci-openwrt-25.12/applications/luci-app-arpbind package/
# mv luci-openwrt-25.12/applications/luci-app-autoreboot package/
# sed -i 's#../../luci.mk#$(TOPDIR)/feeds/luci/luci.mk#g' package/luci-app-arpbind/Makefile
# sed -i 's#../../luci.mk#$(TOPDIR)/feeds/luci/luci.mk#g' package/luci-app-autoreboot/Makefile
# rm -rf luci-openwrt-25.12 luci.zip

# openclash
rm -rf feeds/luci/applications/luci-app-openclash

# homeproxy
rm -rf feeds/luci/applications/luci-app-homeproxy

# daed
rm -rf feeds/luci/applications/luci-app-dae
rm -rf feeds/luci/applications/luci-app-daed
rm -rf feeds/packages/net/dae
rm -rf feeds/packages/net/daed
git clone https://github.com/QiuSimons/luci-app-daed package/dae
apt-get update
apt-get install -y clang llvm npm
npm install -g pnpm
echo -e "\nCONFIG_DEVEL=y" >> .config
echo -e "\nCONFIG_KERNEL_DEBUG_INFO=y" >> .config
echo -e "\nCONFIG_KERNEL_DEBUG_INFO_REDUCED=n" >> .config
echo -e "\nCONFIG_KERNEL_DEBUG_INFO_BTF=y" >> .config
echo -e "\nCONFIG_KERNEL_CGROUPS=y" >> .config
echo -e "\nCONFIG_KERNEL_CGROUP_BPF=y" >> .config
echo -e "\nCONFIG_KERNEL_BPF_EVENTS=y" >> .config
echo -e "\nCONFIG_BPF_TOOLCHAIN_HOST=y" >> .config
echo -e "\nCONFIG_KERNEL_XDP_SOCKETS=y" >> .config
echo -e "\nCONFIG_PACKAGE_kmod-xdp-sockets-diag=y" >> .config

# smartdns
# rm -rf feeds/packages/net/smartdns
# rm -rf feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/pymumu/luci-app-smartdns feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/pymumu/openwrt-smartdns feeds/packages/net/smartdns

# nikki
# git clone https://github.com/nikkinikki-org/OpenWrt-nikki.git package/OpenWrt-nikki

# passwall
rm -rf feeds/luci/applications/luci-app-passwall

