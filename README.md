# autoOpen-dingding-pro
## autoOpen-dingding-pro 是 autoOpen-dingding（https://github.com/guqing1315/autoOpen-dingding ） 的升级版，主要增加已下几个功能：
1. 增加界面ui,将需要配置到代码的参数都可通过页面进行配置，无需在修改代码；
2. 支持钉钉在不开极速打卡的情况下，可以自动跳转到钉钉打卡页面，进行打卡。因为发现部分时候，打开钉钉之后，极速打卡不好使，没有进行打卡，所以增该功能（有多个团队时，请提前切换好到对应需要打卡的团队，后期可增加自动选择到对应的团队）；
3. 增加选择在某一个时间段内进行打卡，可防止触动精灵的定时功能失效，以及每次打卡都是固定时间点的问题。
4. 增加操作日志以及打卡成功截图到到数据库，可以方便在其他地方查看打卡情况，具体查看日志信息autoOpen-dingding-logsUI（https://github.com/guqing1315/autoOpen-dingding-logsUI )
5. 增加远程操作手机脚本功能（暂定）
6. 增加脚本deviceInfo.lua用于将手机设备信息：型号，版本号、电量等信息到后台数据库日志，用于远程查看设备信息autoOpen-dingding-logsUI（https://github.com/guqing1315/autoOpen-dingding-logsUI )


 
## 目录

- [上手指南](#上手指南)
  - [使用前准备](#使用前准备)
  - [使用步骤](#使用步骤)
- [严肃声明](#严肃声明)

### 上手指南

 1. 由于该脚本用于手机端，安卓和ios需要不同的版本才可以使用，目前该版本是ios端，安卓端后续如果需要再进行开发。
 2. 脚本中每次操作间隔都比较长，是因为每个手机的反应程度和网速的快慢不一样，所以脚本在运行时，每个操作间隔都会看起来比较长，属于正常现象，可根据自己修改间隔时间。
 3. 脚本已经完整运行过，暂未发现其他问题，如果有问题，请 issue。
 4. 由于懒，所以没有截图和视频，如果在使用中遇到问题，请 issue。



###### 使用前准备

1. 手机未设置密码的iOS 越狱手机（最好找专门用来打卡的手机），越狱可参考 https://www.i4.cn/news_4.html
2. iOS触动精灵软件，下载地址 https://www.touchsprite.com/download

###### **使用步骤**

1. clone 下代码，将main.lua文件放到ios端触动精灵，将自己的钉钉账号和密码替换。
2. 将代码中img下的图片都放到手机端res文件夹下,iOS 默认图片路径为 /var/mobile/Media/TouchSprite/res
3. 启动脚本时在ui界面设置相应参数

### 严肃声明
1. 项目只供用于学习交流，如在实际生活中遇到的任何问题和本项目无关。
2. 请勿用于商业。

