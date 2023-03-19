---
layout: post
title: 微雪 UPS_HAT 显示电量脚本 和 Fan_HAT 无法同时运行的问题
date: 2022-10-24 20:20:43
tags: [文章, 树莓派, 微雪拓展板, 折腾]
---

# 微雪 UPS_HAT 显示电量脚本 和 Fan_HAT 无法同时运行的问题

事情是这样的，在我兴高采烈地把微雪的 [UPS_HAT](https://www.waveshare.net/wiki/UPS_HAT) 装到我的树莓派4b上的时候，UPS_HAT 能够正常为树莓派供电，但执行 [微雪官网给出的 Python 程序](https://www.waveshare.net/w/upload/d/d9/UPS_HAT.7z) 后 Python 报错。

<!--more-->

![](./1.png)

最后经过和微雪售后的一番 debug，发现了是由于我安装的 [微雪 Fan_HAT](https://www.waveshare.net/wiki/Fan_HAT) 使用的官方提供的 C 程序调用 bcm 库时出现了问题。解决办法也很简单，只要把 C 换成官方提供的同样用于控制 Fan_HAT 的 Python 程序后硬重启即可，当然别忘了把 local.rc 下的开机自启执行 C 程序指令也换成 Python 的。

![](./2.png)

完结撒花~

