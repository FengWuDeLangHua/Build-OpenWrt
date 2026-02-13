#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
# immortalwrt
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# lede
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/luci2/bin/config_generate
# Lienol
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# openwrt
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#2. Clear the login password
# immortalwrt
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/emortal/default-settings/files/99-default-settings
# lede
# sed -i 's/"终端"/"TTYD"/g' feeds/luci/applications/luci-app-ttyd/po/zh_Hans/ttyd.po
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings
# Lienol
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
# immortalwrt
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile
# lede
# sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci-light/Makefile
# Lienol
# git clone https://github.com/jerrykuku/luci-theme-argon feeds/luci/themes/luci-theme-argon
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile
# openwrt
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile

#4

# openwrt
sudo apt-get update
sudo apt-get install subversion
svn checkout https://github.com/immortalwrt/luci.git/branches/openwrt-25.12/applications/luci-app-arpbind feeds/luci/applications/luci-app-arpbind
svn checkout https://github.com/immortalwrt/luci.git/branches/openwrt-25.12/applications/luci-app-autoreboot feeds/luci/applications/luci-app-autoreboot

# openclash
# rm -rf feeds/luci/applications/luci-app-openclash

# homeproxy
# rm -rf feeds/luci/applications/luci-app-homeproxy

# golang
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang

# daed
# rm -rf feeds/luci/applications/luci-app-dae
# rm -rf feeds/luci/applications/luci-app-daed
# rm -rf feeds/packages/net/dae
# rm -rf feeds/packages/net/daed
git clone https://github.com/QiuSimons/luci-app-daed package/dae
sudo apt-get update
sudo apt-get install -y clang llvm npm
sudo npm install -g pnpm
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

# passwall
# rm -rf feeds/luci/applications/luci-app-passwall2
# rm -rf feeds/luci/applications/luci-app-passwall
# rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
# git clone https://github.com/xiaorouji/openwrt-passwall package/passwall-luci
# git clone https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages

# smartdns
# rm -rf feeds/packages/net/smartdns
# rm -rf feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/pymumu/luci-app-smartdns feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/pymumu/openwrt-smartdns feeds/packages/net/smartdns

# nikki
# git clone https://github.com/nikkinikki-org/OpenWrt-nikki.git package/OpenWrt-nikki
