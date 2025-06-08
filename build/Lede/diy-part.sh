#!/bin/bash
# 版权所有 (c) 2019-2020 P3TERX <https://p3terx.com>
# DIY扩展二合一了，在此处可以增加插件
# 自行拉取插件之前请SSH连接进入固件配置里面确认过没有你要的插件再单独拉取你需要的插件
# 不要一下就拉取别人一个插件包N多插件的，多了没用，增加编译错误，自己需要的才好


# 后台IP设置
导出 Ipv4_ipaddr="192.168.2.2"            # 修改openwrt后台地址(填0为关闭)Ipv4_ipaddr="192.168.2.2"            # 修改openwrt后台地址(填0为关闭)
导出导出 Netmask_netm="255.255.255.0"         # IPv4 子网掩码（默认：255.255.255.0）(填0为不作修改)Netmask_netm="255.255.255.0"         # IPv4 子网掩码（默认：255.255.255.0）(填0为不作修改)
导出导出 Op_name="OpenWrt-123"                

# 内核和系统分区大小（不是每个机型都可用）
导出 Kernel_partition_size="0"            # 内核分区大小,每个机型默认值不一样 (填写您想要的数值,默认一般16,数值以MB计算，填0为不作修改),如果你不懂就填0
导出导出 Rootfs_partition_size="0"            # 系统分区大小,每个机型默认值不一样 (填写您想要的数值,默认一般300左右,数值以MB计算，填0为不作修改),如果你不懂就填0Rootfs_partition_size="0"            # 系统分区大小,每个机型默认值不一样 (填写您想要的数值,默认一般300左右,数值以MB计算，填0为不作修改),如果你不懂就填0

# 默认主题设置
导出导出强制主题="0"              # 将bootstrap替换为您需要的主题为必选主题(可自行更改您要的,源码要带此主题就行,填写名称也要写对) (填写主题名称,填0为不作修改)Mandatory_theme="argon"              # 将bootstrap替换为您需要的主题为必选主题(可自行更改您要的,源码要带此主题就行,填写名称也要写对) (填写主题名称,填0为不作修改)
导出导出 默认主题="argon"                # 多主题时,选择某主题为默认第一主题 (填写主题名称,填0为不作修改)默认主题="argon"                # 多主题时,选择某主题为默认第一主题 (填写主题名称,填0为不作修改)

# 旁路由选项
导出导出 旁路由 设置 IPv4 网关="0"                 # 旁路由设置 IPv4 网关(填入您的网关IP为启用)(填0为不作修改)旁路由 设置 IPv4 网关(填入您的网关IP为启用)(填0为不作修改)
导出导出 DNS 设置="0"                     # 旁路由设置 DNS(填入DNS，多个DNS要用空格分开)(填0为不作修改)DNS_Settings="0"                     # 旁路由设置 DNS(填入DNS，多个DNS要用空格分开)(填0为不作修改)
导出导出 Broadcast_Ipv4="0"                   # 设置 IPv4 广播(填入您的IP为启用)(填0为不作修改)Broadcast_Ipv4="0"                   # 设置 IPv4 广播(填入您的IP为启用)(填0为不作修改)
导出导出 禁用DHCP="0"                     
导出 禁用桥接="0"                   # 旁路由禁用桥接模式(1为启用命令,填0为不作修改)禁用桥接="0"                   # 旁路由禁用桥接模式(1为启用命令,填0为不作修改)
导出导出 创建_Ipv6_Lan="0"                  # 爱快+OP双系统时,爱快接管IPV6,在OP创建IPV6的lan口接收IPV6信息(1为启用命令,填0为不作修改)Create_Ipv6_Lan="0"                  # 爱快+OP双系统时,爱快接管IPV6,在OP创建IPV6的lan口接收IPV6信息(1为启用命令,填0为不作修改)

# IPV6、IPV4 选择
导出导出 启用_IPV6功能="0"             # 编译IPV6固件(1为启用命令,填0为不作修改)(如果跟Create_Ipv6_Lan一起启用命令的话,Create_Ipv6_Lan命令会自动关闭)启用_IPV6功能="0"             # 编译IPV6固件(1为启用命令,填0为不作修改)(如果跟Create_Ipv6_Lan一起启用命令的话,Create_Ipv6_Lan命令会自动关闭)
导出导出 启用_IPV4功能="0"             # 编译IPV4固件(1为启用命令,填0为不作修改)(如果跟Enable_IPV6_function一起启用命令的话,此命令会自动关闭)Enable_IPV4_function="0"             # 编译IPV4固件(1为启用命令,填0为不作修改)(如果跟Enable_IPV6_function一起启用命令的话,此命令会自动关闭)

# 替换OpenClash的源码（默认master分支）
导出导出 OpenClash分支="0"                 # OpenClash的源码分别有【master分支】和【dev分支】(填0为关闭,填1为使用master分支,填2为使用dev分支,填入1或2的时候固件自动增加此插件)OpenClash分支="0"                 # OpenClash的源码分别有【master分支】和【dev分支】(填0为关闭,填1为使用master分支,填2为使用dev分支,填入1或2的时候固件自动增加此插件)

# 个性签名，默认增加年月日[$(TZ=UTC-8 date +"%Y.%m.%d")]
导出导出自定义信息="$(TZ=UTC-8 date +"%Y.%m.%d")"  

# 更换固件内核
导出 替换内核="0"                    # 更换内核版本,在对应源码的[target/linux/架构]查看patches-x.x,看看x.x有啥就有啥内核了(填入内核x.x版本号,填0为不作修改)

# 设置免密码登录(个别源码本身就没密码的)
导出 无密码登录="1"               # 设置首次登录后台密码为空（进入openwrt后自行修改密码）(1为启用命令,填0为不作修改)

# 增加AdGuardHome插件和核心

## 插件

AdGuardHome插件是一个非常重要的组件，它负责在AdGuardHome环境中实现各种功能。插件的存在使得AdGuardHome能够提供强大的网络过滤和广告拦截功能。要增加一个新的AdGuardHome插件，你需要遵循以下步骤：

1. **创建插件目录**：
   在AdGuardHome的根目录下创建一个名为`plugins`的目录。这个目录将用于存放所有的插件文件。

2. **编写插件代码**：
   在`plugins`目录下创建一个新的目录，这个目录将用于存放你的插件文件。目录的名称可以是任何你想要的名称，但请确保它没有特殊的字符或空格。

3. **定义插件信息**：
   在你的插件目录中创建一个名为`info.json`的文件。这个文件用于定义插件的基本信息，如插件的名称、版本、描述等。以下是一个示例`info.json`文件的内容：
   ```json
```
   {
     "名称": "MyNewPlugin",
     "版本": "1.0",
     "描述": "这是一个 AdGuardHome 的新插件",
     "作者": "你的名字",
     "网址": "https://www.example.com",
     "图标": "icon.png"
   }
   ```

4. **编写插件逻辑**：
   在你的插件目录中创建一个或多个JavaScript文件，这些文件将包含插件的逻辑代码。插件的入口文件通常是一个名为`main.js`的文件，这个文件将被AdGuardHome加载并执行。

## 核心

AdGuardHome的核心是一个负责处理网络请求和执行插件逻辑的组件。要增加一个新的AdGuardHome核心，你需要遵循以下步骤：

1. **创建核心目录**：
   在AdGuardHome的根目录下创建一个名为`core`的目录。这个目录将用于存放核心的文件。

2. **编写核心代码**：
   在`core`目录下创建一个新的目录，这个目录将用于存放你的核心文件。目录的名称可以是任何你想要的名称，但请确保它没有特殊的字符或空格。

3. **定义核心信息**：
   在你的核心目录中创建一个名为`info.json`的文件。这个文件用于定义核心的基本信息，如核心的名称、版本、描述等。以下是一个示例`info.json`文件的内容：
   ```json
```
   {
     "名称": "MyNewCore","名称": "MyNewCore",
     "版本": "1.0",
     "描述": "这是 AdGuardHome 的一个新核心",
     "作者": "你的名字",
     "网址": "https://www.example.com",
     "icon": "icon.png""图标": "icon.png"
   }
   ```

4. **编写核心逻辑**：
   在你的核心目录中创建一个或多个JavaScript文件，这些文件将包含核心的逻辑代码。核心的入口文件通常是一个名为`main.js`的文件，这个文件将被AdGuardHome加载并执行。

## 注意事项

- 在创建插件和核心目录时，请确保目录名称唯一，以便AdGuardHome能够正确地识别和加载它们。
- 插件和核心的`info.json`文件是AdGuardHome识别和管理它们的重要依据，请确保这些文件的格式和内容正确无误。
- 插件和核心的JavaScript文件是其逻辑实现的核心部分，请确保这些文件的代码逻辑正确，功能实现完整。

## 插件

AdGuardHome插件是一个非常重要的组件，它负责在AdGuardHome环境中实现各种功能。插件的存在使得AdGuardHome能够提供强大的网络过滤和广告拦截功能。要增加一个新的AdGuardHome插件，你需要遵循以下步骤：

1. **创建插件目录**：
   在AdGuardHome的根目录下创建一个名为`plugins`的目录。这个目录将用于存放所有的插件文件。

2. **编写插件代码**：
   在`plugins`目录下创建一个新的目录，这个目录将用于存放你的插件文件。目录的名称可以是任何你想要的名称，但请确保它没有特殊的字符或空格。

3. **定义插件信息**：
   在你的插件目录中创建一个名为`info.json`的文件。这个文件用于定义插件的基本信息，如插件的名称、版本、描述等。以下是一个示例`info.json`文件的内容：
   ```json
   {
     "name": "MyNewPlugin",
     "version": "1.0",
     "description": "This is a new plugin for AdGuardHome",
     "author": "Your Name",
     "url": "https://www.example.com",
     "icon": "icon.png"
   }
   ```

4. **编写插件逻辑**：
   在你的插件目录中创建一个或多个JavaScript文件，这些文件将包含插件的逻辑代码。插件的入口文件通常是一个名为`main.js`的文件，这个文件将被AdGuardHome加载并执行。

## 核心

AdGuardHome的核心是一个负责处理网络请求和执行插件逻辑的组件。要增加一个新的AdGuardHome核心，你需要遵循以下步骤：

1. **创建核心目录**：
   在AdGuardHome的根目录下创建一个名为`core`的目录。这个目录将用于存放核心的文件。

2. **编写核心代码**：
   在`core`目录下创建一个新的目录，这个目录将用于存放你的核心文件。目录的名称可以是任何你想要的名称，但请确保它没有特殊的字符或空格。

3. **定义核心信息**：
   在你的核心目录中创建一个名为`info.json`的文件。这个文件用于定义核心的基本信息，如核心的名称、版本、描述等。以下是一个示例`info.json`文件的内容：
   ```json
   {
     "name": "MyNewCore",
     "version": "1.0",
     "description": "This is a new core for AdGuardHome",
     "author": "Your Name",
     "url": "https://www.example.com",
     "icon": "icon.png"
   }
   ```

4. **编写核心逻辑**：
   在你的核心目录中创建一个或多个JavaScript文件，这些文件将包含核心的逻辑代码。核心的入口文件通常是一个名为`main.js`的文件，这个文件将被AdGuardHome加载并执行。

## 注意事项

- 在创建插件和核心目录时，请确保目录名称唯一，以便AdGuardHome能够正确地识别和加载它们。
- 插件和核心的`info.json`文件是AdGuardHome识别和管理它们的重要依据，请确保这些文件的格式和内容正确无误。
- 插件和核心的JavaScript文件是其逻辑实现的核心部分，请确保这些文件的代码逻辑正确，功能实现完整。
导出 AdGuardHome_Core="0"                  # 编译固件时自动增加AdGuardHome插件和AdGuardHome插件核心,需要注意的是一个核心20多MB的,小闪存机子搞不来(1为启用命令,填0为不作修改)

# 开启NTFS格式盘挂载
导出 自动挂载设置="0"          # 编译时加入开启NTFS格式盘挂载的所需依赖(1为启用命令,填0为不作修改)

# 去除网络共享（自动共享）
导出 禁用自动samba="1"# 去掉源码默认自选的luci-app-samba或luci-app-samba4(1为启用命令,填0为不作修改)                 

# 其他
导出 Ttyd_account_free_login="0"           # 设置ttyd免密登录(1为启用命令,填0为不作修改)
导出 删除多余项="0"          # 个别机型内一堆其他机型固件,删除其他机型的,只保留当前主机型固件(1为启用命令,填0为不作修改)
导出 禁用_53_重定向="0"
            # 删除DNS强制重定向53端口防火墙规则(个别源码本身不带此功能)(1为启用命令,填0为不作修改)禁用_53_重定向="0"
            # 删除DNS强制重定向53端口防火墙规则(个别源码本身不带此功能)(1为启用命令,填0为不作修改)
导出导出 取消运行="0"
                    # 取消路由器每天跑分任务(个别源码本身不带此功能)(1为启用命令,填0为不作修改)Cancel_running="0"
                    # 取消路由器每天跑分任务(个别源码本身不带此功能)(1为启用命令,填0为不作修改)


# 晶晨CPU系列打包固件设置（不懂请看说明）
导出导出 amlogic_model="s905d"amlogic_model="s905d"
导出导出 amlogic_kernel="6.1.120_6.12.15"amlogic_kernel="6.1.120_6.12.15"
导出导出自动内核="真"自动内核="真"
export rootfs_size="512/2560"
export kernel_usage="stable"


# 修改插件名字
grep -rl '"终端"' . | xargs -r sed -i 's?"终端"?"TTYD"?g'
grep -rl '"TTYD 终端"' . | xargs -r sed -i 's?"TTYD 终端"?"TTYD"?g'
grep -rl '"网络存储"' . | xargs -r sed -i 's?"网络存储"?"NAS"?g'
grep -rl '"实时流量监测"' . | xargs -r sed -i 's?"实时流量监测"?"流量"?g'
grep -rl '"KMS 服务器"' . | xargs -r sed -i 's?"KMS 服务器"?"KMS激活"?g'
grep -rl '"USB 打印服务器"' . | xargs -r sed -i 's?"USB 打印服务器"?"打印服务"?g'
grep -rl '"Web 管理"' . | xargs -r sed -i 's?"Web 管理"?"Web管理"?g'
grep -rl '"管理权"' . | xargs -r sed -i 's?"管理权"?"改密码"?g'
grep -rl '"带宽监控"' . | xargs -r sed -i 's?"带宽监控"?"监控"?g'


# 整理固件包时候,删除您不想要的固件或者文件,让它不需要上传到Actions空间(根据编译机型变化,自行调整删除名称)
cat >"$CLEAR_PATH" <<-EOF
packages
config.buildinfo
feeds.buildinfo
sha256sums
version.buildinfo
profiles.json
openwrt-x86-64-generic-kernel.bin
openwrt-x86-64-generic.manifest
openwrt-x86-64-generic-squashfs-rootfs.img.gz
EOF

# 在线更新时，删除不想保留固件的某个文件，在EOF跟EOF之间加入删除代码，记住这里对应的是固件的文件路径，比如： rm -rf /etc/config/luci
cat >>$DELETE <<-EOF
EOF
