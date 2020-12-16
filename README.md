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

配置文件 | 地址 | 说明
---|---|---
[混淆配置说明](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-rules.pro) | .. | ..
[Common通用配置](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Common.pro) | .. | ..
[ARouter](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ARouter.pro) | [URL](https://github.com/alibaba/ARouter) | ..
[AliPay](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-AliPay.pro) | [URL](https://opendocs.alipay.com/open/59/103683/) | 需防混 jar
[Androidanimations](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Androidanimations.pro) | [URL](https://github.com/daimajia/AndroidViewAnimations) | View动画效果集合
[BaiduMap](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-BaiduMap.pro) | [URL](http://lbsyun.baidu.com/index.php?title=androidsdk/guide/create-project/androidstudio) | 需防混 jar
[Banner](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Banner.pro) | [URL](https://github.com/youth5201314/banner) | ..
[Bugly](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Bugly.pro) | [URL](https://bugly.qq.com/docs/user-guide/instruction-manual-android-upgrade/?v=20200622202242) | ..
[CalendarView](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-CalendarView.pro#L3) | [URL](https://github.com/huanghaibin-dev/CalendarView) | ..
[Easing](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Easing.pro#L2) | [URL](https://github.com/daimajia/AnimationEasingFunctions) | 该库被Androidanimations依赖
[EventBus](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-EventBus.pro) | [URL](https://github.com/greenrobot/EventBus) | ..
[GaoDeMap](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-GaoDeMap.pro) | [URL](https://lbs.amap.com/api/android-sdk/guide/create-project/dev-attention#obfuscated-code) | ..
[Glide](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Glide.pro) | [URL](https://github.com/bumptech/glide) | ..
[GreenDAO](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-GreenDAO.pro) | [URL](https://github.com/greenrobot/greenDAO) | ..
[Gson](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Gson.pro) | [URL](https://github.com/google/gson) | ..
[Ijkplayer](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Ijkplayer.pro) | [URL](https://travis-ci.org/Bilibili/ci-ijk-ffmpeg-android) | ..
[Immersionbar](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Immersionbar.pro) | [URL](https://github.com/gyf-dev/ImmersionBar) | ..
[JPush](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-JPush.pro) | [URL](https://docs.jiguang.cn/jpush/client/Android/android_guide/#jpush-android-sdk) | ..
[LitePal](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-LitePal.pro#L6) | [URL](https://github.com/guolindev/LitePal) | ..
[MMKV](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-MMKV.pro) | [URL](https://github.com/Tencent/MMKV) | ..
[OkHttp](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-OkHttp.pro) | [URL](https://github.com/square/okhttp) | ..
[Retrofit](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Retrofit.pro) | [URL](https://github.com/square/retrofit) | ..
[RxJava](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-RxJava.pro) | [URL](https://github.com/ReactiveX/RxJava) | ..
[RxLife](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-RxLife.pro) | [URL](https://github.com/liujingxing/rxjava-RxLife) | ..
[ShareSDK](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ShareSDK.pro) | [URL](https://www.mob.com/wiki/detailed/?wiki=ShareSDK_Others_Share_Confused&id=undefined) | ..
[SuperTextView](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-SuperTextView.pro) | [URL](https://github.com/chenBingX/SuperTextView) | ..
[Tencent](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-Tencent.pro) | .. |配置里面有连接可以查看
[UMeng](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-UMeng.pro) | [URL](https://developer.umeng.com/docs/66632/detail/66639) | ..
[ViewAnimator](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ViewAnimator.pro) | [URL](https://github.com/florent37/ViewAnimator) | ..
[X5](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-X5.pro) | [URL](https://x5.tencent.com/docs/access.html#13-%E6%B7%B7%E6%B7%86%E9%85%8D%E7%BD%AE) | ..
[XPopup](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-XPopup.pro) | [URL](https://github.com/li-xiaojun/XPopup) | ..
[ZXing](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-ZXing.pro) | [URL](https://github.com/zxing/zxing) | ..
.. | .. | ..
[viewbinding](https://github.com/zhaoxiuyu/Proguards/blob/master/proguardslibrary/proguard-viewbinding.pro) | [URL]() | ..
.. | .. | ..


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


