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

配置文件 | 该库地址 | 说明
---|---|---
[混淆配置说明](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-rules.pro) | .. | ..
[Common通用配置](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Common.pro) | .. | ..
[ARouter](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ARouter.pro) | [URL](https://github.com/alibaba/ARouter) | ..
[AliPay](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-AliPay.pro) | .. | ..
[Androidanimations](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Androidanimations.pro) | .. | ..
[BaiduMap](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-BaiduMap.pro) | [该库地址](http://lbsyun.baidu.com/index.php?title=androidsdk/guide/create-project/androidstudio) | ..
[Banner](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Banner.pro) | [该库地址](https://github.com/youth5201314/banner) | row 2 col 3
[Bugly](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Bugly.pro) | [该库地址](https://bugly.qq.com/docs/user-guide/instruction-manual-android-upgrade/?v=20200622202242) | row 2 col 3
[CalendarView](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-CalendarView.pro#L3) | row 2 col 2 | row 2 col 3
[Easing](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Easing.pro#L2) | row 2 col 2 | row 2 col 3
[EventBus](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-EventBus.pro) | [该库地址](https://github.com/greenrobot/EventBus) | row 2 col 3
[GaoDeMap](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-GaoDeMap.pro) | [该库地址](https://lbs.amap.com/api/android-sdk/guide/create-project/dev-attention#obfuscated-code) | row 2 col 3
[Glide](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Glide.pro) | [该库地址](https://github.com/bumptech/glide) | row 2 col 3
[GreenDAO](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-GreenDAO.pro) | [该库地址](https://github.com/greenrobot/greenDAO) | row 2 col 3
[Gson](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Gson.pro) | [该库地址](https://github.com/google/gson) | row 2 col 3
[Ijkplayer](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Ijkplayer.pro) | [该库地址](https://travis-ci.org/Bilibili/ci-ijk-ffmpeg-android) | row 2 col 3
[Immersionbar](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Immersionbar.pro) | [该库地址](https://github.com/gyf-dev/ImmersionBar) | row 2 col 3
[JPush](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-JPush.pro) | [该库地址](https://docs.jiguang.cn/jpush/client/Android/android_guide/#jpush-android-sdk) | row 2 col 3
[LitePal](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-LitePal.pro#L6) | row 2 col 3 | row 2 col 3
[MMKV](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-MMKV.pro) | row 2 col 3 | row 2 col 3
[OkHttp](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-OkHttp.pro) | [该库地址](https://github.com/square/okhttp) | row 2 col 3
[Retrofit](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Retrofit.pro) | [该库地址](https://github.com/square/retrofit) | row 2 col 3
[RxJava](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-RxJava.pro) | [该库地址](https://github.com/ReactiveX/RxJava) | row 2 col 3
[RxLife](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-RxLife.pro) | row 2 col 3 | row 2 col 3
[ShareSDK](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ShareSDK.pro) | [该库地址](https://www.mob.com/wiki/detailed/?wiki=ShareSDK_Others_Share_Confused&id=undefined) | row 2 col 3
[SuperTextView](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-SuperTextView.pro) | row 2 col 3 | row 2 col 3
[Tencent](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Tencent.pro) | row 2 col 3 | row 2 col 3
[UMeng](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-UMeng.pro) | [该库地址](https://developer.umeng.com/docs/66632/detail/66639) | row 2 col 3
[ViewAnimator](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ViewAnimator.pro) | row 2 col 3 | row 2 col 3
[X5](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-X5.pro) | [该库地址](https://x5.tencent.com/docs/access.html#13-%E6%B7%B7%E6%B7%86%E9%85%8D%E7%BD%AE) | row 2 col 3
[XPopup](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-XPopup.pro) | [该库地址](https://github.com/li-xiaojun/XPopup) | row 2 col 3
[ZXing](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ZXing.pro) | row 2 col 3 | row 2 col 3
row 2 col 3 | row 2 col 3 | row 2 col 3


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


