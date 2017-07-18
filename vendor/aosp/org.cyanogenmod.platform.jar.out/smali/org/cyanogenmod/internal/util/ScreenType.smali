.class public Lorg/cyanogenmod/internal/util/ScreenType;
.super Ljava/lang/Object;
.source "ScreenType.java"


# static fields
.field private static final DEVICE_HYBRID:I = 0x1

.field private static final DEVICE_PHONE:I = 0x0

.field private static final DEVICE_TABLET:I = 0x2

.field private static sDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, -0x1

    sput v0, Lorg/cyanogenmod/internal/util/ScreenType;->sDeviceType:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getScreenType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget v4, Lorg/cyanogenmod/internal/util/ScreenType;->sDeviceType:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 35
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 36
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 37
    .local v0, "outDisplayInfo":Landroid/view/DisplayInfo;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 38
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    .local v1, "shortSize":I
    mul-int/lit16 v4, v1, 0xa0

    .line 40
    iget v5, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 39
    div-int v2, v4, v5

    .line 41
    .local v2, "shortSizeDp":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_1

    .line 43
    const/4 v4, 0x0

    sput v4, Lorg/cyanogenmod/internal/util/ScreenType;->sDeviceType:I

    .line 52
    .end local v0    # "outDisplayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "shortSize":I
    .end local v2    # "shortSizeDp":I
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    sget v4, Lorg/cyanogenmod/internal/util/ScreenType;->sDeviceType:I

    return v4

    .line 44
    .restart local v0    # "outDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "shortSize":I
    .restart local v2    # "shortSizeDp":I
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/16 v4, 0x2d0

    if-ge v2, v4, :cond_2

    .line 46
    const/4 v4, 0x1

    sput v4, Lorg/cyanogenmod/internal/util/ScreenType;->sDeviceType:I

    goto :goto_0

    .line 49
    :cond_2
    const/4 v4, 0x2

    sput v4, Lorg/cyanogenmod/internal/util/ScreenType;->sDeviceType:I

    goto :goto_0
.end method

.method public static isHybrid(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/ScreenType;->getScreenType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/ScreenType;->getScreenType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/ScreenType;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
