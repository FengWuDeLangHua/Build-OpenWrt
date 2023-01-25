#!/bin/bash

rm -rf feeds/packages/net/smartdns

# git clone https://github.com/kenzok8/small-package package/lean/small-package
git clone https://github.com/fw876/helloworld.git package/lean/helloworld
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
# git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/lean/luci-app-passwall
# git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/lean/openwrt-passwall
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon-18.06
# git clone https://github.com/honwen/luci-app-aliddns.git package/lean/luci-app-aliddns
# git clone https://github.com/pymumu/openwrt-smartdns.git package/lean/openwrt-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
