# https://x5.tencent.com/docs/access.html#13-%E6%B7%B7%E6%B7%86%E9%85%8D%E7%BD%AE

-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**

-keep class com.tencent.smtt.** {
    *;
}

-keep class com.tencent.tbs.** {
    *;
}

-keepattributes InnerClasses

-keepattributes Signature

-keep class MTT.ThirdAppInfoNew {
	*;
}
-keep class com.tencent.mtt.MttTraceEvent {
	*;
}

