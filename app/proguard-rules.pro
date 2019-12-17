

# json 对应的实体类不混淆
-keep class com.sendinfo.leshan.platform.entitys.response.** {*;}
-keep class com.base.library.entitys.** {*;}

#Android4.2以上 WebView 需要添加以下的两个混淆配置
-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
-keepclassmembers class packageName$内部类名 {
    public *;
}
