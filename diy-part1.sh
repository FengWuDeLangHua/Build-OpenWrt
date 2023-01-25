#!/bin/bash

rm -rf feeds/packages/net/smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns

git clone https://github.com/fw876/helloworld.git package/lean/helloworld
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon-18.06
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
