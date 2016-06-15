.class public Landroid/content/res/flymetheme/FlymeThemeUtils;
.super Ljava/lang/Object;
.source "FlymeThemeUtils.java"


# static fields
.field public static final ANDROID_RES:I = 0x1

.field public static final CALENDAR_ICON:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_ICON_NO_NAME:Ljava/lang/String; = "com.android.calendar.nodate"

.field public static final CALENDAR_PKG:Ljava/lang/String; = "com.android.calendar"

.field public static final CLOCK_PKG:Ljava/lang/String; = "com.android.alarmclock"

.field public static final DEFAULT_THEME_ID:Ljava/lang/String; = "com.meizu.theme.default"

.field public static final DEF_ICON:Ljava/lang/String; = "def_icon.png"

.field public static final FILE_CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field public static final FILE_THEME_VALUE:Ljava/lang/String; = "theme_values.xml"

.field public static final FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLYME_PACKAGE_NAME:Ljava/lang/String; = "flyme"

.field public static final FLYME_PATH_NAME:Ljava/lang/String; = "flyme-res"

.field public static final FLYME_RES:I = 0x2

.field public static final FLYME_THEME_OS:Ljava/lang/String; = "5"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final FRAMEWORK_PATH_NAME:Ljava/lang/String; = "framework-res"

.field public static final ICON_BACKGROUND:Ljava/lang/String; = "icon_background.png"

.field public static final ICON_BORDER:Ljava/lang/String; = "icon_border.png"

.field public static final ICON_MASK:Ljava/lang/String; = "icon_mask.png"

.field public static final ICON_PATH_NAME:Ljava/lang/String; = "icons"

.field public static final ICON_WHITE_LIST_PREFIX:Ljava/lang/String; = "com.meizu"

.field public static final MEDIATEK_PACKAGE_NAME:Ljava/lang/String; = "mediatek"

.field public static final MEDIATEK_PATH_NAME:Ljava/lang/String; = "mediatek-res"

.field public static final MEDIATEK_RES:I = 0x3

.field public static final PACKAGE_RES:I = 0x0

.field public static final PNG:Ljava/lang/String; = ".png"

.field public static final SHORTCUT_BACKGROUND:Ljava/lang/String; = "shortcut_background.png"

.field public static final THEME_CHANGE_INTENT:Ljava/lang/String; = "com.meizu.theme.change"

.field public static final THEME_CUSTOM_MTPK_PATH:Ljava/lang/String; = "/custom/meizu/mtpk/"

.field public static final THEME_CUSTOM_PATH:Ljava/lang/String; = "/custom/meizu/theme/"

.field public static final THEME_DATA_PATH:Ljava/lang/String; = "/data/data/com.meizu.customizecenter/theme/"

.field public static final THEME_SYSTEM_PATH:Ljava/lang/String; = "/system/customizecenter/theme/"

.field public static final USE_CUSTOMIZE_THEME:I = 0x2

.field public static final USE_FLYME_THEME:I = 0x1

.field public static final USE_THEME:I = 0x3

.field private static final WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    .line 25
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.rsupport.rs.activity.meizu"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResType(Ljava/lang/String;)I
    .locals 1
    .param p0, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 69
    :cond_0
    const-string v0, "flyme"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x2

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v0, "mediatek"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x3

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v4, 0x0

    .line 137
    .local v4, "result":Z
    if-eqz p0, :cond_1

    const-string v5, "com.meizu"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    const/4 v4, 0x1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 140
    :cond_1
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 141
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    const/4 v4, 0x1

    .line 143
    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isUseCustomSystem()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 172
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.meizu.customizecenter/custom_flag/no_custom"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "custom":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    :goto_0
    return v2

    .line 176
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isUseCustomizeTheme()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseFlymeTheme()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method
