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
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    .line 25
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.rsupport.rs.activity.meizu"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.meizu.watch"

    aput-object v1, v0, v3

    const-string v1, "com.meizu.speaker"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "com.meizu.meijia"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.meizu.router"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_LIST:[Ljava/lang/String;

    .line 143
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.meizu.smart."

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_PREFIX_LIST:[Ljava/lang/String;

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

.method private static isInBlackList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 179
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_PREFIX_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 180
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 191
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 179
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_2
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_LIST:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 186
    .local v3, "name":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    const/4 v4, 0x0

    .line 174
    :cond_0
    :goto_0
    return v4

    .line 159
    :cond_1
    const/4 v4, 0x0

    .line 160
    .local v4, "result":Z
    const-string v5, "com.meizu"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    invoke-static {p0}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInBlackList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    const/4 v4, 0x0

    goto :goto_0

    .line 164
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 167
    :cond_3
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 168
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    const/4 v4, 0x1

    .line 170
    goto :goto_0

    .line 167
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isUseCustomSystem()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 217
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.meizu.customizecenter/custom_flag/no_custom"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "custom":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    :goto_0
    return v2

    .line 221
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isUseCustomizeTheme()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseFlymeTheme()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method
