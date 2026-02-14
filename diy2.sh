#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
# Modify default IP
# immortalwrt
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# lede
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/luci2/bin/config_generate
# Lienol
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# openwrt
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Clear the login password
# immortalwrt
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/emortal/default-settings/files/99-default-settings
# lede
# sed -i 's/"终端"/"TTYD"/g' feeds/luci/applications/luci-app-ttyd/po/zh_Hans/ttyd.po
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# daed
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
