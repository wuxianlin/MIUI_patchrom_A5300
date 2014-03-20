MIUI patchrom for CUBE A5300（酷比魔方 Talk 5H）
===========

开源说明
----------------

1.开源的代码由[wuxianlin](http://www.wuxianlin.tk)基于CUBE A5300官方1.03版本固件适配MIUI V5 jellybean42-mtk分支的代码

2.MIUI代码更新至2014.3.21第181周版本代码，后期可能不再更新维护

3.目前MIUI官网的[MIUI for A5300](http://www.miui.com/download-210.html)是以官方1.05版本固件为底包适配的，故开源旧版本代码

4.如果你对本项目感兴趣或者有什么意见或建议,欢迎联系[wuxianlinwxl@gmail.com](mailto:wuxianlinwxl@gmail.com)

编译教程
---------------
1.安装Java SDK和Android SDK 附：[AOSP编译环境搭建](https://source.android.com/source/initializing.html) [一键搭建编译环境脚本](https://github.com/TeamRadium/tr-be-script)

2.安装[Git and Repo](https://source.android.com/source/downloading.html)

$ mkdir ~/bin

$ PATH=~/bin:$PATH

$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

$ chmod a+x ~/bin/repo


3.同步代码

$ mkdir MIUI && cd MIUI

$ repo init -u git://github.com/MiCode/patchrom.git -b jellybean42-mtk

$ repo sync -j4

$ git clone https://github.com/wuxianlin/MIUI_patchrom_A5300 A5300

4.编译MIUI

$ source build/envsetup.sh && cd A5300

$ make fullota

5.输出目录out下的fullota.zip即为所得MIUI ROM

感谢
--------
感谢MIUI官方开源patchrom

感谢github上无私奉献代码的朋友

