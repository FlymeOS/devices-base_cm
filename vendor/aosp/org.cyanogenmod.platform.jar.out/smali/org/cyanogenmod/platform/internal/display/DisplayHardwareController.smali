.class public Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;
.super Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.source "DisplayHardwareController.java"


# static fields
.field private static final DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

.field private static final DISPLAY_CABC:Landroid/net/Uri;

.field private static final DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

.field private static final DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;


# instance fields
.field private final mAdditionalAdjustment:[F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorAdjustment:[F

.field private final mDefaultAutoContrast:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private final mMaxColor:I

.field private final mUseAutoContrast:Z

.field private final mUseCABC:Z

.field private final mUseColorAdjustment:Z

.field private final mUseColorEnhancement:Z

.field private final mUseDisplayModes:Z


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)Lcyanogenmod/hardware/CMHardwareManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    return v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->screenRefresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "display_auto_contrast"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    .line 69
    const-string/jumbo v0, "display_color_adjustment"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    .line 71
    const-string/jumbo v0, "display_color_enhance"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    .line 73
    const-string/jumbo v0, "display_low_power"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    sput-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 58
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    .line 59
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    .line 78
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 79
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 80
    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    .line 81
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x3f070006

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultCABC:Z

    .line 84
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 85
    const/4 v1, 0x2

    .line 84
    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    .line 86
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x3f070005

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    .line 89
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 90
    const/16 v1, 0x1000

    .line 89
    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    .line 91
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    const v1, 0x3f070003

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    .line 94
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 95
    const/4 v1, 0x4

    .line 94
    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    .line 97
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 98
    const/16 v1, 0x2000

    .line 97
    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    .line 100
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationMax()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    .line 102
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 75
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    goto :goto_0
.end method

.method private declared-synchronized animateDisplayColor([F)V
    .locals 7
    .param p1, "targetColors"    # [F

    .prologue
    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibration()[I

    move-result-object v1

    .line 276
    .local v1, "currentInts":[I
    const/4 v4, 0x3

    new-array v0, v4, [F

    .line 277
    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 278
    const/4 v4, 0x1

    aget v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 279
    const/4 v4, 0x2

    aget v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 281
    .local v0, "currentColors":[F
    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, p1, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 282
    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 283
    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, p1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    monitor-exit p0

    .line 284
    return-void

    .line 289
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, p1, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 290
    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 288
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 291
    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v6, p1, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 288
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v5, 0x443b8000    # 750.0f

    mul-float/2addr v4, v5

    float-to-long v2, v4

    .line 293
    .local v2, "duration":J
    sget-boolean v4, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 294
    const-string/jumbo v4, "LiveDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "animateDisplayColor current="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 295
    const-string/jumbo v6, " targetColors="

    .line 294
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 295
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    .line 294
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 295
    const-string/jumbo v6, " duration="

    .line 294
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 299
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 300
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 304
    :cond_2
    new-instance v4, Landroid/animation/FloatArrayEvaluator;

    const/4 v5, 0x3

    new-array v5, v5, [F

    invoke-direct {v4, v5}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    .line 303
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 304
    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 303
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 305
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;

    invoke-direct {v5, p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;-><init>(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 272
    return-void

    .end local v0    # "currentColors":[F
    .end local v1    # "currentInts":[I
    .end local v2    # "duration":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private copyColors([F[F)V
    .locals 5
    .param p1, "src"    # [F
    .param p2, "dst"    # [F

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 496
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    if-ne v0, v4, :cond_0

    array-length v0, p2

    if-ne v0, v4, :cond_0

    .line 497
    aget v0, p1, v1

    aput v0, p2, v1

    .line 498
    aget v0, p1, v2

    aput v0, p2, v2

    .line 499
    aget v0, p1, v3

    aput v0, p2, v3

    .line 495
    :cond_0
    return-void
.end method

.method private static getDefaultAdjustment()[F
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private parseColorAdjustment(Ljava/lang/String;[F)Z
    .locals 5
    .param p1, "rgbString"    # Ljava/lang/String;
    .param p2, "dest"    # [F

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 365
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 367
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eq v2, v3, :cond_2

    .line 368
    :cond_0
    return v4

    .line 365
    :cond_1
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "adj":[Ljava/lang/String;
    goto :goto_0

    .line 367
    .end local v0    # "adj":[Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_0

    array-length v2, p2

    if-ne v2, v3, :cond_0

    .line 372
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, p2, v3

    .line 373
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 374
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aput v2, p2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    invoke-direct {p0, p2}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v2

    return v2

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "LiveDisplay"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    return v4
.end method

.method private saveColorAdjustmentString([F)V
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 484
    const-string/jumbo v1, "display_color_adjustment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private screenRefresh()V
    .locals 6

    .prologue
    .line 332
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 333
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LiveDisplay"

    const-string/jumbo v4, "Failed to refresh screen"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAutoContrast()V
    .locals 3

    .prologue
    .line 217
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 221
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v0

    .line 220
    :goto_0
    const/16 v2, 0x1000

    invoke-virtual {v1, v2, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 216
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCABCMode()V
    .locals 3

    .prologue
    .line 239
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 243
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v0

    .line 242
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 238
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateColorAdjustment()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 247
    :try_start_0
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    .line 248
    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 253
    .local v0, "rgb":[F
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, v1, v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 255
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 256
    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 257
    const/4 v1, 0x2

    aget v2, v0, v1

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 260
    :cond_1
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 261
    const-string/jumbo v1, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateColorAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2
    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->animateDisplayColor([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 246
    return-void

    .end local v0    # "rgb":[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateColorEnhancement()V
    .locals 3

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 232
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v0

    .line 231
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 227
    return-void

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateHardware()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateCABCMode()V

    .line 173
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateAutoContrast()V

    .line 174
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateColorEnhancement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 170
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateColors([F)Z
    .locals 5
    .param p1, "colors"    # [F

    .prologue
    const/4 v4, 0x3

    .line 351
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eq v1, v4, :cond_1

    .line 352
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 355
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 356
    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 197
    const-string/jumbo v0, "DisplayHardwareController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 204
    const-string/jumbo v0, "  DisplayHardwareController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAdditionalAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    hardware setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibration()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_0

    .line 135
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_1

    .line 138
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 140
    :cond_1
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_2

    .line 141
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 143
    :cond_2
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_3

    .line 144
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 146
    :cond_3
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    if-eqz v0, :cond_4

    .line 147
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 149
    :cond_4
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez v0, :cond_5

    .line 150
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    .line 149
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getColorAdjustment()[F
    .locals 2

    .prologue
    .line 460
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez v1, :cond_0

    .line 461
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v1

    return-object v1

    .line 463
    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 464
    .local v0, "cur":[F
    const-string/jumbo v1, "display_color_adjustment"

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->parseColorAdjustment(Ljava/lang/String;[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 467
    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    .line 469
    :cond_1
    return-object v0
.end method

.method getDefaultAutoContrast()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    return v0
.end method

.method getDefaultCABC()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultCABC:Z

    return v0
.end method

.method getDefaultColorEnhancement()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    return v0
.end method

.method hasColorAdjustment()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    return v0
.end method

.method isAutoContrastEnabled()Z
    .locals 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_0

    .line 421
    const-string/jumbo v0, "display_auto_contrast"

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCABCEnabled()Z
    .locals 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_0

    .line 434
    const-string/jumbo v0, "display_low_power"

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultCABC:Z

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isColorEnhancementEnabled()Z
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_0

    .line 447
    const-string/jumbo v0, "display_color_enhance"

    .line 448
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    .line 447
    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onScreenStateChanged()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 184
    return-void

    .line 187
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 155
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateCABCMode()V

    .line 158
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    :cond_2
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateAutoContrast()V

    .line 161
    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    :cond_4
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateColorEnhancement()V

    .line 164
    :cond_5
    if-eqz p1, :cond_6

    sget-object v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    :cond_6
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 166
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    .line 154
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v1, :cond_1

    .line 116
    sget-object v1, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v1, :cond_2

    .line 119
    sget-object v1, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v1, :cond_3

    .line 122
    sget-object v1, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 126
    return-void

    .line 129
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->registerSettings([Landroid/net/Uri;)V

    .line 109
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateHardware()V

    .line 179
    return-void
.end method

.method declared-synchronized setAdditionalAdjustment([F)Z
    .locals 4
    .param p1, "adj"    # [F

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 390
    :try_start_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 391
    return v3

    .line 394
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 395
    const-string/jumbo v0, "LiveDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdditionalAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-direct {p0, p1, v0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 401
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    monitor-exit p0

    .line 404
    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setAutoContrastEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 425
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    const-string/jumbo v0, "display_auto_contrast"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method setCABCEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 438
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    const-string/jumbo v0, "display_low_power"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method setColorAdjustment([F)Z
    .locals 1
    .param p1, "adj"    # [F

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    .line 478
    const/4 v0, 0x1

    return v0

    .line 475
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setColorEnhancementEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 452
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_0
    const-string/jumbo v0, "display_color_enhance"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    const/4 v0, 0x1

    return v0
.end method
