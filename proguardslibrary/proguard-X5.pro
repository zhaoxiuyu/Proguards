
# TBS 浏览器服务 X5浏览器内核
-keep class com.tencent.smtt.export.external.**{
    *;
}
-keep class com.tencent.tbs.video.interfaces.IUserStateChangedListener {
	*;
}
-keep class com.tencent.smtt.sdk.CacheManager {
	public *;
}
-keep class com.tencent.smtt.sdk.CookieManager {
	public *;
}
-keep class com.tencent.smtt.sdk.WebHistoryItem {
	public *;
}
-keep class com.tencent.smtt.sdk.WebViewDatabase {
	public *;
}
-keep class com.tencent.smtt.sdk.WebBackForwardList {
	public *;
}
-keep public class com.tencent.smtt.sdk.WebView {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.WebView$HitTestResult {
	public static final <fields>;
	public java.lang.String getExtra();
	public int getType();
}
-keep public class com.tencent.smtt.sdk.WebView$WebViewTransport {
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.WebView$PictureListener {
	public <fields>;
	public <methods>;
}

-keepattributes InnerClasses

-keep public enum com.tencent.smtt.sdk.WebSettings$** {
    *;
}
-keep public enum com.tencent.smtt.sdk.QbSdk$** {
    *;
}
-keep public class com.tencent.smtt.sdk.WebSettings {
    public *;
}

-keepattributes Signature

-keep public class com.tencent.smtt.sdk.ValueCallback {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.WebViewClient {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.DownloadListener {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.WebChromeClient {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.WebChromeClient$FileChooserParams {
	public <fields>;
	public <methods>;
}
-keep class com.tencent.smtt.sdk.SystemWebChromeClient{
	public *;
}
# 1. extension interfaces should be apparent 继承
-keep public class com.tencent.smtt.export.external.extension.interfaces.* {
	public protected *;
}

# 2. interfaces should be apparent 接口
-keep public class com.tencent.smtt.export.external.interfaces.* {
	public protected *;
}
-keep public class com.tencent.smtt.sdk.WebViewCallbackClient {
	public protected *;
}
-keep public class com.tencent.smtt.sdk.WebStorage$QuotaUpdater {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.WebIconDatabase {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.WebStorage {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.DownloadListener {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.QbSdk {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.QbSdk$PreInitCallback {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.CookieSyncManager {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.Tbs* {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.utils.LogFileUtils {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.utils.TbsLog {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.utils.TbsLogClient {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.CookieSyncManager {
	public <fields>;
	public <methods>;
}

# Added for game demos 游戏演示
-keep public class com.tencent.smtt.sdk.TBSGamePlayer {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.TBSGamePlayerClient* {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.TBSGamePlayerClientExtension {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.sdk.TBSGamePlayerService* {
	public <fields>;
	public <methods>;
}
-keep public class com.tencent.smtt.utils.Apn {
	public <fields>;
	public <methods>;
}
-keep class com.tencent.smtt.** {
	*;
}
# end

-keep public class com.tencent.smtt.export.external.extension.proxy.ProxyWebViewClientExtension {
	public <fields>;
	public <methods>;
}
-keep class MTT.ThirdAppInfoNew {
	*;
}
-keep class com.tencent.mtt.MttTraceEvent {
	*;
}

# Game related 游戏相关
-keep public class com.tencent.smtt.gamesdk.* {
	public protected *;
}
-keep public class com.tencent.smtt.sdk.TBSGameBooter {
        public <fields>;
        public <methods>;
}
-keep public class com.tencent.smtt.sdk.TBSGameBaseActivity {
	public protected *;
}
-keep public class com.tencent.smtt.sdk.TBSGameBaseActivityProxy {
	public protected *;
}
-keep public class com.tencent.smtt.gamesdk.internal.TBSGameServiceClient {
	public *;
}
