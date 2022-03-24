#!/bin/bash

# git clone https://github.com/fw876/helloworld.git package/lean/helloworld
git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/lean/luci-app-passwall
git clone -b packages https://github.com/xiaorouji/openwrt-passwall package/lean/openwrt-passwall
# git clone https://github.com/QiuSimons/openwrt-mos.git package/lean/openwrt-mos
git clone https://github.com/honwen/luci-app-aliddns.git package/lean/luci-app-aliddns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon-18.06
