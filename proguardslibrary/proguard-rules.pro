
# json 对应的实体类不混淆
# -keep class com.sendinfo.leshan.platform.entitys.response.** {*;}
# -keep class com.base.library.entitys.** {*;}

# 关键字                      描述
# keep                        保留类和类中的成员，防止被混淆或移除
# keepnames                   保留类和类中的成员，防止被混淆，成员没有被引用会被移除
# keepclassmembers            只保留类中的成员，防止被混淆或移除
# keepclassmembernames        只保留类中的成员，防止被混淆，成员没有引用会被移除
# keepclasseswithmembers      保留类和类中的成员，防止被混淆或移除，保留指明的成员
# keepclasseswithmembernames  保留类和类中的成员，防止被混淆，保留指明的成员，成员没有引用会被移除

# 通配符      描述
# <field>     匹配类中的所有字段
# <method>    匹配类中所有的方法
# <init>      匹配类中所有的构造函数
# *           匹配任意长度字符，不包含包名分隔符(.)
# **          匹配任意长度字符，包含包名分隔符(.)
# ***         匹配任意参数类型

################################## 自带配置 ##################################
# SmartRefreshLayout
# rxhttp
# utilcodex
# lottie
# transformations
# BaseRecyclerViewAdapterHelper
# banner
# bga-qrcode-zxing

################################## 不用配置 ##################################
# rippleeffect
# PickerView
# bottom-navigation
# switch-button
# flexibledivider

################################## 没有找到 ##################################
# ShadowLayout
# smart-swipe
# PinnedSectionItemDecoration
# FlexItemDecoration
# AndPermission

