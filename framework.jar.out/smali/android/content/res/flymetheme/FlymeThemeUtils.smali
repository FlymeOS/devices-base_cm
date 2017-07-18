.class public Landroid/content/res/flymetheme/FlymeThemeUtils;
.super Ljava/lang/Object;
.source "FlymeThemeUtils.java"


# static fields
.field public static final ANDROID_RES:I = 0x1

.field private static final BLACK_LIST:[Ljava/lang/String;

.field private static final BLACK_PREFIX_LIST:[Ljava/lang/String;

.field public static final CALENDAR_ICON:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_ICON_NO_NAME:Ljava/lang/String; = "com.android.calendar.nodate"

.field public static final CALENDAR_PKG:Ljava/lang/String; = "com.android.calendar"

.field public static final CLOCK_PKG:Ljava/lang/String; = "com.android.alarmclock"

.field public static final DEFAULT_THEME_ID:Ljava/lang/String; = "com.meizu.theme.default"

.field public static final DEF_ICON:Ljava/lang/String; = "def_icon.png"

.field public static final FILE_CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field public static final FILE_ICONFILTER_CONFIG_NAME:Ljava/lang/String; = "filter_config.xml"

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

.field public static final FLYME_THEME_OS:Ljava/lang/String; = "6"

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

.field public static final THEME_FLYME_ICON_SDCARD_PATH:Ljava/lang/String; = "/sdcard/Customize/.FlymeIcon/"

.field public static final THEME_FLYME_ICON_SYSTEM_PATH:Ljava/lang/String; = "/system/customizecenter/theme/"

.field public static final USE_CUSTOMIZE_THEME:I = 0x2

.field public static final USE_FLYME_THEME:I = 0x1

.field public static final USE_THEME:I = 0x3

.field private static final WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    .line 26
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    .line 130
    const-string/jumbo v1, "com.rsupport.rs.activity.meizu"

    aput-object v1, v0, v3

    .line 84
    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 137
    const-string/jumbo v1, "com.meizu.watch"

    aput-object v1, v0, v3

    .line 138
    const-string/jumbo v1, "com.meizu.speaker"

    aput-object v1, v0, v4

    .line 139
    const-string/jumbo v1, "com.meizu.meijia"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "com.meizu.router"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 136
    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_LIST:[Ljava/lang/String;

    .line 146
    new-array v0, v4, [Ljava/lang/String;

    .line 147
    const-string/jumbo v1, "com.meizu.smart."

    aput-object v1, v0, v3

    .line 146
    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_PREFIX_LIST:[Ljava/lang/String;

    .line 8
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
    .line 70
    const-string/jumbo v0, "android"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    const-string/jumbo v0, "flyme"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x2

    return v0

    .line 74
    :cond_1
    const-string/jumbo v0, "mediatek"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x3

    return v0

    .line 77
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isInBlackList(Ljava/lang/String;)Z
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 182
    sget-object v4, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_PREFIX_LIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 183
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    return v7

    .line 182
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_LIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 189
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    return v7

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    return v2

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 163
    .local v1, "result":Z
    const-string/jumbo v3, "com.meizu"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    invoke-static {p0}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    const/4 v1, 0x0

    .line 177
    :cond_1
    :goto_0
    return v1

    .line 167
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_3
    sget-object v3, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 171
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    const/4 v1, 0x1

    .line 173
    goto :goto_0

    .line 170
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isUseCustomSystem()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/data/com.meizu.customizecenter/custom_flag/no_custom"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "custom":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    return v3

    .line 225
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    return v3
.end method

.method public static isUseCustomizeTheme()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseFlymeTheme()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method
