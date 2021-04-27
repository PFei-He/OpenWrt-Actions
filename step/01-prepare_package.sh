#!/bin/bash
clear

# remove other coremark
rm -rf feeds/packages/utils/coremark
rm -rf package/feeds/packages/coremark
./scripts/feeds update -a && ./scripts/feeds install -a

#OLED display
git clone https://github.com/natelol/luci-app-oled package/natelol/luci-app-oled

#wrt bw monitor
git clone -b master --single-branch https://github.com/brvphoenix/wrtbwmon package/new/wrtbwmon
git clone -b master --single-branch https://github.com/brvphoenix/luci-app-wrtbwmon package/new/luci-app-wrtbwmon

#iputils
svn co https://github.com/openwrt/openwrt/branches/openwrt-19.07/package/network/utils/iputils package/network/utils/iputils

git clone https://github.com/fw876/helloworld package/helloworld
git clone https://github.com/coolsnowwolf/lede/tree/master/package/lean package/lean
git clone https://github.com/xiaorouji/openwrt-passwall package/xiaorouji/openwrt-passwall
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash

#生成默认配置及缓存
rm -rf .config

exit 0
