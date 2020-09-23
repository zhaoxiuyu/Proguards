# https://github.com/huanghaibin-dev/CalendarView
# -------------------- 针对所有的 public Constructor(Context)构造方法 --------------------
#-keepclasseswithmembers class * {
#    public <init>(android.content.Context);
#}
# -------------------- 只针对日历控件 --------------------
-keep class your project path.MonthView {
    public <init>(android.content.Context);
}
-keep class your project path.WeekBar {
    public <init>(android.content.Context);
}
-keep class your project path.WeekView {
    public <init>(android.content.Context);
}
-keep class your project path.YearView {
    public <init>(android.content.Context);
}
