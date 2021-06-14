# ddns-script-getwanip

## OpenWRT DDNS
支持通过三种方式获取WAN IP （公网IP）并通过第三方的动态域名服务器进行实时设置。

https://openwrt.org/docs/guide-user/base-system/ddns#section_service


1. 网卡 ip_network, ip_interface
2. 公网IP查询服务器 ip_url
3. 自定义脚本 ip_script

其中网卡和查询服务都比较方便，但部分情况因为网络部署的不同，需要脚本来获取。

下面主要提供通过路由器（route， model）提供的web服务进行查询。

## 获取原理
登录本地路由服务，进入相关页面解析

# 获取路由器

## 华为路由AX3 Pro

 产品名称 华为路由AX3 Pro  
 软件版本 11.0.2.13(patch02)  
 EMUI Router 版本	11.0.2.6(C01)  

## 电信智能网关

 设备类型 EPON天翼网关(4口单频)  
 产品型号 TEWA-708E  
 软件版本号  Tianyi_V1.0.1  
 
