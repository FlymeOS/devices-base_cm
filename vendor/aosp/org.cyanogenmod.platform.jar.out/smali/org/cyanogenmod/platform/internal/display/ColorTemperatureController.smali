.class public Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;
.super Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.source "ColorTemperatureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;
    }
.end annotation


# static fields
.field private static final DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

.field private static final DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x36ee80L


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorBalanceCurve:[D

.field private final mColorBalanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorTemperature:I

.field private final mColorTemperatureRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDayTemperature:I

.field private final mDefaultDayTemperature:I

.field private final mDefaultNightTemperature:I

.field private final mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

.field private final mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mNightTemperature:I

.field private final mTransitionRunnable:Ljava/lang/Runnable;

.field private final mUseColorBalance:Z

.field private final mUseTemperatureAdjustment:Z


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)Lcyanogenmod/hardware/CMHardwareManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "display_temperature_day"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    .line 70
    const-string/jumbo v0, "display_temperature_night"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "displayHardware"    # Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 169
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$1;-><init>(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 75
    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    .line 76
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 78
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 79
    const/high16 v1, 0x20000

    .line 78
    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    .line 80
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    .line 82
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->hasColorAdjustment()Z

    move-result v0

    .line 82
    :goto_0
    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    .line 85
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    const v1, 0x3f090001

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 87
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x3f090002

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    .line 91
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    const v1, 0x3f090006

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    const v2, 0x3f090007

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    .line 97
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    .line 98
    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    int-to-double v2, v2

    .line 99
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    .line 96
    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/internal/util/MathUtils;->powerCurve(DDD)[D

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorBalanceCurve:[D

    .line 73
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static adj(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "sunset"    # J
    .param p4, "sunrise"    # J

    .prologue
    const-wide/16 v8, 0x0

    const v6, 0x4a5bba00    # 3600000.0f

    const-wide/32 v4, 0x36ee80

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 295
    cmp-long v0, p2, v8

    if-ltz v0, :cond_0

    cmp-long v0, p4, v8

    if-gez v0, :cond_1

    .line 297
    :cond_0
    return v3

    .line 296
    :cond_1
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    add-long v0, p4, v4

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 300
    add-long v0, p2, v4

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 302
    sub-long v0, p0, p2

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 301
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 305
    :cond_2
    cmp-long v0, p0, p4

    if-ltz v0, :cond_3

    .line 307
    add-long v0, p4, v4

    sub-long/2addr v0, p0

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 306
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 310
    :cond_3
    return v2
.end method

.method private declared-synchronized animateColorBalance(I)V
    .locals 6
    .param p1, "balance"    # I

    .prologue
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getColorBalance()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 218
    .local v0, "current":I
    if-ne v0, p1, :cond_0

    monitor-exit p0

    .line 219
    return-void

    .line 222
    :cond_0
    sub-int v1, v0, p1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    int-to-long v2, v1

    .line 225
    .local v2, "duration":J
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 226
    const-string/jumbo v1, "LiveDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animateDisplayColor current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    const-string/jumbo v5, " target="

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    const-string/jumbo v5, " duration="

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 232
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 235
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v4, 0x1

    aput p1, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 236
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$2;

    invoke-direct {v4, p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController$2;-><init>(Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 213
    return-void

    .end local v0    # "current":I
    .end local v2    # "duration":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTwilightK()I
    .locals 9

    .prologue
    .line 320
    const/high16 v6, 0x3f800000    # 1.0f

    .line 321
    .local v6, "adjustment":F
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getTwilight()Lcom/android/server/twilight/TwilightState;

    move-result-object v7

    .line 323
    .local v7, "twilight":Lcom/android/server/twilight/TwilightState;
    if-eqz v7, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    .local v0, "now":J
    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->adj(JJJ)F

    move-result v8

    .line 326
    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->adj(JJJ)F

    move-result v2

    .line 325
    mul-float v6, v8, v2

    .line 329
    .end local v0    # "now":J
    :cond_0
    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    int-to-float v2, v2

    iget v3, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private isTransitioning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 178
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    if-eq v1, v2, :cond_0

    .line 179
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    iget v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 177
    :cond_0
    return v0
.end method

.method private mapColorTemperatureToBalance(I)I
    .locals 6
    .param p1, "temperature"    # I

    .prologue
    .line 257
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorBalanceCurve:[D

    int-to-double v4, p1

    invoke-static {v2, v4, v5}, Lorg/cyanogenmod/internal/util/MathUtils;->powerCurveToLinear([DD)D

    move-result-wide v0

    .line 258
    .local v0, "z":D
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v3, v2

    .line 259
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    double-to-float v4, v0

    .line 258
    invoke-static {v3, v2, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private declared-synchronized setDisplayTemperature(I)V
    .locals 5
    .param p1, "temperature"    # I

    .prologue
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Color temperature out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 265
    return-void

    .line 268
    :cond_0
    :try_start_1
    iput p1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 270
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v2, :cond_1

    .line 271
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mapColorTemperatureToBalance(I)I

    move-result v0

    .line 272
    .local v0, "balance":I
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set color balance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (temperature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->animateColorBalance(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 274
    return-void

    .line 277
    .end local v0    # "balance":I
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcyanogenmod/util/ColorUtils;->temperatureToRGB(I)[F

    move-result-object v1

    .line 278
    .local v1, "rgb":[F
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v2, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->setAdditionalAdjustment([F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 280
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adjust display temperature to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    .line 262
    return-void

    .end local v1    # "rgb":[F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateColorTemperature()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 183
    :try_start_0
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 187
    .local v1, "temperature":I
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getMode()I

    move-result v0

    .line 189
    .local v0, "mode":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isLowPowerMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    :cond_0
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 197
    :cond_1
    :goto_0
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 198
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateColorTemperature mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    const-string/jumbo v4, " temperature="

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    const-string/jumbo v4, " mColorTemperature="

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    iget v4, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2
    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->setDisplayTemperature(I)V

    .line 204
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isTransitioning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 182
    return-void

    .end local v0    # "mode":I
    .end local v1    # "temperature":I
    :cond_4
    monitor-exit p0

    .line 184
    return-void

    .line 191
    .restart local v0    # "mode":I
    .restart local v1    # "temperature":I
    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 192
    :try_start_1
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    goto :goto_0

    .line 193
    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 194
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getTwilightK()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "mode":I
    .end local v1    # "temperature":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 160
    const-string/jumbo v0, "ColorTemperatureController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 164
    const-string/jumbo v0, "  ColorTemperatureController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    isTransitioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isTransitioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 118
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 120
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v0, :cond_0

    .line 121
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 124
    :cond_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    return v0
.end method

.method getColorBalanceRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    return-object v0
.end method

.method getColorTemperature()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    return v0
.end method

.method getColorTemperatureRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    return-object v0
.end method

.method getDayColorTemperature()I
    .locals 2

    .prologue
    .line 345
    const-string/jumbo v0, "display_temperature_day"

    .line 346
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 345
    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getDefaultDayTemperature()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    return v0
.end method

.method getDefaultNightTemperature()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    return v0
.end method

.method getNightColorTemperature()I
    .locals 2

    .prologue
    .line 354
    const-string/jumbo v0, "display_temperature_night"

    .line 355
    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    .line 354
    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onScreenStateChanged()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 133
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method protected declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 148
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    .line 154
    :cond_3
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 147
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 109
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->registerSettings([Landroid/net/Uri;)V

    .line 103
    return-void
.end method

.method protected onTwilightUpdated()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 142
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 128
    return-void
.end method

.method setDayColorTemperature(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 350
    const-string/jumbo v0, "display_temperature_day"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->putInt(Ljava/lang/String;I)V

    .line 349
    return-void
.end method

.method setNightColorTemperature(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 359
    const-string/jumbo v0, "display_temperature_night"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/ColorTemperatureController;->putInt(Ljava/lang/String;I)V

    .line 358
    return-void
.end method
