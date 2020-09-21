[![](https://jitpack.io/v/zhaoxiuyu/Proguards.svg)](https://jitpack.io/#zhaoxiuyu/Proguards)


平常项目中用到很多第三方库，就把用到的混淆配置累计到这里面了，方便以后使用。
利用了consumerProguardFiles 来传递 aar 中的防混淆配置到主工程中，依赖该库之后，就不需要在手动配置了。

已配置的防混淆文件如下：



Add it in your root build.gradle at the end of repositories:

	allprojects {
		repositories {
			...
			maven { url 'https://jitpack.io' }
		}
	}
	
Step 2. Add the dependency

	dependencies {
	        implementation 'com.github.zhaoxiuyu:Proguards:Tag'
	}



1 首先开启混淆，设置 minifyEnabled true；

2 添加上面的依赖 

3 把项目中的实体类加入到 proguard-rules.pro 文件中，

	比如 : -keep class com.sendinfo.leshan.platform.entitys.response.** {*;}
	
	或者 : 使用 @Keep 注解这些实体类；
	
4 把项目中需要防混淆的 jar 加入到 proguard-rules.pro 文件中，

	比如支付宝 SDK 的 -libraryjars libs/alipaySDK-20***.jar
	
	或者百度地图的 jar(-libraryjars libs/baidumapapi_v2_**_*.jar)
	
	如果要对所有 jar 都防混，那么使用 -libraryjars libs 即可；


说明 : 

1.开启混淆会将代码中的所有变量、函数、类的名称变为简短的英文字母代号（也可自定义），在缺乏相应的函数名和程序注释的情况下，即使被反编译，也将难以阅读，提升应用的安全性；


2.混淆通过分析字节码，去掉冗余代码，再加上缩短了变量、函数、类的名称，可以进一步缩减应用大小，如果想混淆资源文件，可以使用微信的 AndResGuard。

3.利用consumerProguardFiles 来传递 aar 中的防混淆配置到主工程中，所以依赖了该库后常用的主流三方库便不再需要手动配置了,已经添加的混淆文件可以查看工程，以后会继续添加完善。

