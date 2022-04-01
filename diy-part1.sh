#!/bin/bash

rm -rf feeds/packages/net/smartdns

svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/net/smartdns feeds/packages/net/smartdns
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06-k5.4/applications/luci-app-smartdns feeds/luci/applications/luci-app-smartdns

git clone https://github.com/fw876/helloworld.git package/lean/helloworld
# git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/lean/luci-app-passwall
# git clone https://github.com/xiaorouji/openwrt-passwall2 package/lean/luci-app-passwall2
# git clone -b packages https://github.com/xiaorouji/openwrt-passwall package/lean/openwrt-passwall
# git clone https://github.com/QiuSimons/openwrt-mos.git package/lean/openwrt-mos
git clone https://github.com/honwen/luci-app-aliddns.git package/lean/luci-app-aliddns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon-18.06
