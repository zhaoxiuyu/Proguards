# https://docs.open.alipay.com/59/103683/

# 需防混 jar(-libraryjars libs/alipaySDK-20150602.jar)
# -libraryjars libs/alipaySDK-20150602.jar

-keep class com.alipay.android.app.IAlixPay { *; }
-keep class com.alipay.android.app.IAlixPay$Stub { *; }
-keep class com.alipay.android.app.IRemoteServiceCallback { *; }
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub { *; }
-keep class com.alipay.sdk.app.PayTask { public *; }
-keep class com.alipay.sdk.app.AuthTask { public *; }

