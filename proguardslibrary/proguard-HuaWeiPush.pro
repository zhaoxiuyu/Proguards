# https://developer.huawei.com/consumer/cn/doc/development/HMSCore-Guides-V5/android-config-obfuscation-scripts-0000001050176973-V5

# -------------------- 华为推送 --------------------
-ignorewarnings
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keep class com.huawei.hianalytics.**{*;}
-keep class com.huawei.updatesdk.**{*;}
-keep class com.huawei.hms.**{*;}
