[![](https://www.jitpack.io/v/zhaoxiuyu/Proguards.svg)](https://www.jitpack.io/#zhaoxiuyu/Proguards)

1.平常项目中用到很多第三方库，就把用到的混淆配置累计到这里面了，方便以后使用。

2.利用consumerProguardFiles 来传递 aar 中的防混淆配置到主工程中，依赖该库后常用的主流三方库不再需要手动配置了,已经添加的混淆文件可以查看工程，以后会继续添加完善。


#### 说明：
```
1.首先开启混淆设置 minifyEnabled true
```

```
2.加入依赖
allprojects {
        repositories {
			maven { url 'https://jitpack.io' }
		}
	}
	dependencies {
	   implementation 'com.github.zhaoxiuyu:Proguards:Tag'
	}
```

```
3.把项目中的实体类加入到 proguard-rules.pro 文件中，一般为 : 

# -keep class com.sendinfo.leshan.platform.entitys.response.** {*;}
# -keep class com.base.library.entitys.** {*;}
```


```
4.把项目中需要防混淆的jar加入到 proguard-rules.pro 文件中。
比如支付宝SDk的：
-libraryjars libs/alipaySDK-20150602.jar：
如果要对所有的jar防混，那么使用：
-libraryjars libs 
```

```
5.把项目中用的到一些不包括在如上列表中的三方库配置到 proguard-rules.pro 文件中。
我会不定时更新 和 累加以上混淆配置。
```

#### 已配置的防混文件：

配置文件 | 地址
---|---
[混淆配置说明](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-rules.pro) | ..
[Common通用配置](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Common.pro) | ..
[ARouter - 路由](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ARouter.pro) | ..
[AliPay - 支付宝](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-AliPay.pro) |需防混 jar
[Androidanimations - 动画](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Androidanimations.pro) |..
[BaiduMap - 百度地图](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-BaiduMap.pro) |需防混 jar
[Banner - 轮播图](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Banner.pro) | ..
[Bugly](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Bugly.pro) | ..
[CalendarView - 日历](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-CalendarView.pro#L3) | ..
[Easing](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Easing.pro#L2) | 该库被Androidanimations依赖
[EventBus](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-EventBus.pro) |..
[GaoDeMap - 高德地图](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-GaoDeMap.pro) | ..
[Glide - 图片加载](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Glide.pro) | ..
[GreenDAO - 数据库](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-GreenDAO.pro) | ..
[Gson](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Gson.pro) | ..
[Ijkplayer](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Ijkplayer.pro) | ..
[Immersionbar - 沉浸式](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Immersionbar.pro) | ..
[JPush - 极光推送](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-JPush.pro) | ..
[XiaoMiPush - 小米推送](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-XiaoMiPush.pro) | ..
[VivoPush - vivo推送](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-VivoPush.pro)     | ..
[MeiZuPush - 魅族推送](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-MeiZuPush.pro)|  ..
[HuaWeiPush - 华为推送](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-HuaWeiPush.pro) | ..
[OPPOPush - oppo推送](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-OPPOPush.pro) | ..
[LitePal - 数据库](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-LitePal.pro#L6) |..
[MMKV](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-MMKV.pro) |..
[OkHttp](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-OkHttp.pro) |..
[Retrofit](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Retrofit.pro) |..
[RxJava](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-RxJava.pro) | ..
[RxLife - 解决RxJava内存泄漏](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-RxLife.pro) |..
[ShareSDK](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ShareSDK.pro) |..
[SuperTextView](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-SuperTextView.pro) |..
[Tencent - 腾讯相关](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Tencent.pro) | ..
[UMeng - 友盟相关](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-UMeng.pro) | ..
[ViewAnimator -  View动画](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ViewAnimator.pro) | 这个不需要混淆配置,如果出问题可以把这个加上
[X5 - 浏览器](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-X5.pro) | ..
[XPopup - 弹窗](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-XPopup.pro) | ..
[ZXing - 二维码](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ZXing.pro) | ..
.. | ..


#### 混淆说明 : 
1. 开启混淆会将代码中的所有变量、函数、类的名称变为简短的英文字母代号（也可自定义），在缺乏相应的函数名和程序注释的情况下，即使被反编译，也将难以阅读，提升应用的安全性；
2. 混淆通过分析字节码，去掉冗余代码，再加上缩短了变量、函数、类的名称，可以进一步缩减应用大小。
3. 如果想混淆资源文件，可以使用微信的 [AndResGuard](https://github.com/shwenzhang/AndResGuard)




---

#### 其他常用库
```
------- 自带混淆配置的库 -------
SmartRefreshLayout
rxhttp
utilcodex
lottie
transformations
BaseRecyclerViewAdapterHelper
banner
bga-qrcode-zxing
```

```
------- 可混淆,不用配置 -------
rippleeffect
PickerView
bottom-navigation
switch-button
flexibledivider
```

```
------- 没有找到 -------
ShadowLayout
smart-swipe
PinnedSectionItemDecoration
FlexItemDecoration
AndPermission
```


