.class Landroid/graphics/drawable/Ripple;
.super Ljava/lang/Object;
.source "Ripple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Ripple$LogInterpolator;
    }
.end annotation


# static fields
.field private static final DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final GLOBAL_SPEED:F = 1.0f

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final RIPPLE_ENTER_DELAY:J = 0x50L

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 1024.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 3400.0f


# instance fields
.field private mAnimOpacity:Landroid/animation/ObjectAnimator;

.field private mAnimRadius:Landroid/animation/ObjectAnimator;

.field private mAnimX:Landroid/animation/ObjectAnimator;

.field private mAnimY:Landroid/animation/ObjectAnimator;

.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanUseHardware:Z

.field private mCanceled:Z

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mColorOpaque:I

.field private mDensity:F

.field private mHardwareAnimating:Z

.field private mHasMaxRadius:Z

.field private mOpacity:F

.field private mOuterRadius:F

.field private mOuterX:F

.field private mOuterY:F

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingX:F

.field private mStartingY:F

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 41
    new-instance v0, Landroid/graphics/drawable/Ripple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Ripple$LogInterpolator;-><init>(Landroid/graphics/drawable/Ripple$1;)V

    sput-object v0, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FF)V
    .locals 2
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "startingX"    # F
    .param p4, "startingY"    # F

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    .line 96
    iput v1, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    .line 97
    iput v1, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    .line 98
    iput v1, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    .line 554
    new-instance v0, Landroid/graphics/drawable/Ripple$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/Ripple$1;-><init>(Landroid/graphics/drawable/Ripple;)V

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 116
    iput-object p1, p0, Landroid/graphics/drawable/Ripple;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    .line 117
    iput-object p2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    .line 119
    iput p3, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    .line 120
    iput p4, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    .line 121
    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/Ripple;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/Ripple;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->removeSelf()V

    return-void
.end method

.method private cancelHardwareAnimations(Z)V
    .locals 4
    .param p1, "cancelPending"    # Z

    .prologue
    .line 529
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    .line 530
    .local v2, "runningAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 531
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 532
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 536
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 537
    iget-object v3, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 540
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    .line 541
    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 506
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 511
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 514
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 516
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 519
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 521
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 523
    :cond_3
    return-void
.end method

.method private clampStartingPosition()V
    .locals 12

    .prologue
    .line 147
    iget-object v7, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 148
    .local v2, "cX":F
    iget-object v7, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 149
    .local v3, "cY":F
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    sub-float v4, v7, v2

    .line 150
    .local v4, "dX":F
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    sub-float v5, v7, v3

    .line 151
    .local v5, "dY":F
    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .line 152
    .local v6, "r":F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 154
    float-to-double v8, v5

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 155
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v2

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v3

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    .line 161
    .end local v0    # "angle":D
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    .line 159
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    goto :goto_0
.end method

.method private drawHardware(Landroid/view/HardwareCanvas;)Z
    .locals 8
    .param p1, "c"    # Landroid/view/HardwareCanvas;

    .prologue
    const/4 v7, 0x1

    .line 239
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    .line 240
    .local v2, "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 241
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 242
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 245
    iput-boolean v7, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    .line 247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 249
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 253
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 256
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/Ripple;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Landroid/graphics/drawable/Ripple;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Landroid/graphics/drawable/Ripple;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/HardwareCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 258
    return v7
.end method

.method private drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "hasContent":Z
    iget v5, p0, Landroid/graphics/drawable/Ripple;->mColorOpaque:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    const/high16 v5, 0x437f0000    # 255.0f

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 266
    .local v0, "alpha":I
    iget v5, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    invoke-static {v7, v5, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    .line 267
    .local v2, "radius":F
    if-lez v0, :cond_0

    cmpl-float v5, v2, v7

    if-lez v5, :cond_0

    .line 268
    iget v5, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    iget-object v6, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    .line 270
    .local v3, "x":F
    iget v5, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    iget-object v6, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    .line 272
    .local v4, "y":F
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 275
    const/4 v1, 0x1

    .line 278
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return v1
.end method

.method private endSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 433
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 438
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 441
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 443
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 446
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 448
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 450
    :cond_3
    return-void
.end method

.method private exitHardware(II)V
    .locals 11
    .param p1, "radiusDuration"    # I
    .param p2, "opacityDuration"    # I

    .prologue
    .line 367
    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 369
    iget v8, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    iget-object v9, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    iget v10, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    invoke-static {v8, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    .line 371
    .local v4, "startX":F
    iget v8, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    iget-object v9, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    iget v10, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    invoke-static {v8, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    .line 374
    .local v5, "startY":F
    const/4 v8, 0x0

    iget v9, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    iget v10, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    invoke-static {v8, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    .line 375
    .local v3, "startRadius":F
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->getTempPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 376
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 377
    iget v8, p0, Landroid/graphics/drawable/Ripple;->mColorOpaque:I

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    const/high16 v8, 0x437f0000    # 255.0f

    iget v9, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 381
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 382
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropX:Landroid/graphics/CanvasProperty;

    .line 383
    invoke-static {v5}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropY:Landroid/graphics/CanvasProperty;

    .line 385
    new-instance v2, Landroid/view/RenderNodeAnimator;

    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget v9, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    invoke-direct {v2, v8, v9}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 386
    .local v2, "radiusAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v8, p1

    invoke-virtual {v2, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 387
    sget-object v8, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v8}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    new-instance v6, Landroid/view/RenderNodeAnimator;

    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropX:Landroid/graphics/CanvasProperty;

    iget v9, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    invoke-direct {v6, v8, v9}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 390
    .local v6, "xAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v8, p1

    invoke-virtual {v6, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 391
    sget-object v8, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    new-instance v7, Landroid/view/RenderNodeAnimator;

    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropY:Landroid/graphics/CanvasProperty;

    iget v9, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    invoke-direct {v7, v8, v9}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 394
    .local v7, "yAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 395
    sget-object v8, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v7, v8}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPropPaint:Landroid/graphics/CanvasProperty;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v8, v9, v10}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 399
    .local v0, "opacityAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v8, p2

    invoke-virtual {v0, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 400
    sget-object v8, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v8}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 403
    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v8, p0, Landroid/graphics/drawable/Ripple;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    .line 411
    const/4 v8, 0x0

    iput v8, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    .line 412
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    .line 413
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    .line 414
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    .line 416
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 417
    return-void
.end method

.method private exitSoftware(II)V
    .locals 9
    .param p1, "radiusDuration"    # I
    .param p2, "opacityDuration"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 460
    const-string v4, "radiusGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 461
    .local v1, "radiusAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 462
    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 463
    sget-object v4, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    const-string v4, "xGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 466
    .local v2, "xAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 467
    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 468
    sget-object v4, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    const-string v4, "yGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 471
    .local v3, "yAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 472
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 473
    sget-object v4, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    const-string v4, "opacity"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 476
    .local v0, "opacityAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 477
    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 479
    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 482
    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 483
    iput-object v2, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 484
    iput-object v3, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 486
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 487
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 488
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 489
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 490
    return-void
.end method

.method private getTempPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mTempPaint:Landroid/graphics/Paint;

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mTempPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private invalidateSelf()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 552
    return-void
.end method

.method private removeSelf()V
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/RippleDrawable;->removeRipple(Landroid/graphics/drawable/Ripple;)V

    .line 548
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 498
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->cancelSoftwareAnimations()V

    .line 499
    invoke-direct {p0, v0}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 501
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    .line 220
    .local v0, "canUseHardware":Z
    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    if-eqz v2, :cond_0

    .line 222
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 224
    :cond_0
    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    .line 227
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    if-eqz v2, :cond_1

    .line 228
    check-cast p1, Landroid/view/HardwareCanvas;

    .end local p1    # "c":Landroid/graphics/Canvas;
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Ripple;->drawHardware(Landroid/view/HardwareCanvas;)Z

    move-result v1

    .line 233
    .local v1, "hasContent":Z
    :goto_0
    return v1

    .line 230
    .end local v1    # "hasContent":Z
    .restart local p1    # "c":Landroid/graphics/Canvas;
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/Ripple;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v1

    .restart local v1    # "hasContent":Z
    goto :goto_0
.end method

.method public enter()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x50

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 306
    invoke-virtual {p0}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 308
    const-wide v4, 0x408f400000000000L    # 1000.0

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v6, v7

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mDensity:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 311
    .local v3, "radiusDuration":I
    const-string v4, "radiusGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 312
    .local v2, "radius":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 313
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 317
    const-string v4, "xGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 318
    .local v0, "cX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 319
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 323
    const-string v4, "yGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 324
    .local v1, "cY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 325
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 329
    iput-object v2, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 330
    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 331
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 336
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 337
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 338
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 339
    return-void
.end method

.method public exit()V
    .locals 8

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 347
    const/4 v4, 0x0

    iget v5, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    invoke-static {v4, v5, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 349
    .local v1, "radius":F
    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    iget v4, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    sub-float v3, v4, v1

    .line 355
    .local v3, "remaining":F
    :goto_0
    const-wide v4, 0x408f400000000000L    # 1000.0

    const v6, 0x458a4000    # 4424.0f

    div-float v6, v3, v6

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mDensity:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 357
    .local v2, "radiusDuration":I
    const/high16 v4, 0x447a0000    # 1000.0f

    iget v5, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 359
    .local v0, "opacityDuration":I
    iget-boolean v4, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    if-eqz v4, :cond_1

    .line 360
    invoke-direct {p0, v2, v0}, Landroid/graphics/drawable/Ripple;->exitHardware(II)V

    .line 364
    :goto_1
    return-void

    .line 352
    .end local v0    # "opacityDuration":I
    .end local v2    # "radiusDuration":I
    .end local v3    # "remaining":F
    :cond_0
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .restart local v3    # "remaining":F
    goto :goto_0

    .line 362
    .restart local v0    # "opacityDuration":I
    .restart local v2    # "radiusDuration":I
    :cond_1
    invoke-direct {p0, v2, v0}, Landroid/graphics/drawable/Ripple;->exitSoftware(II)V

    goto :goto_1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 285
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    float-to-int v0, v3

    .line 286
    .local v0, "outerX":I
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    float-to-int v1, v3

    .line 287
    .local v1, "outerY":I
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 288
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    return-void
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    return v0
.end method

.method public getRadiusGravity()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    return v0
.end method

.method public getXGravity()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    return v0
.end method

.method public getYGravity()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    return v0
.end method

.method public isHardwareAnimating()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    return v0
.end method

.method public jump()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 425
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->endSoftwareAnimations()V

    .line 426
    invoke-direct {p0, v0}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 428
    return-void
.end method

.method public move(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 296
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    .line 297
    iput p2, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    .line 299
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->clampStartingPosition()V

    .line 300
    return-void
.end method

.method public onHotspotBoundsChanged()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 164
    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mHasMaxRadius:Z

    if-nez v2, :cond_0

    .line 165
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 166
    .local v1, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 167
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .line 169
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->clampStartingPosition()V

    .line 171
    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 174
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    .line 175
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 176
    return-void
.end method

.method public setRadiusGravity(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 184
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    .line 185
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 186
    return-void
.end method

.method public setXGravity(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 195
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    .line 196
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 197
    return-void
.end method

.method public setYGravity(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 206
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    .line 207
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 208
    return-void
.end method

.method public setup(IIF)V
    .locals 5
    .param p1, "maxRadius"    # I
    .param p2, "color"    # I
    .param p3, "density"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 124
    const/high16 v2, -0x1000000

    or-int/2addr v2, p2

    iput v2, p0, Landroid/graphics/drawable/Ripple;->mColorOpaque:I

    .line 126
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 127
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mHasMaxRadius:Z

    .line 128
    int-to-float v2, p1

    iput v2, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .line 135
    :goto_0
    iput v4, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    .line 136
    iput v4, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    .line 137
    iput p3, p0, Landroid/graphics/drawable/Ripple;->mDensity:F

    .line 139
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->clampStartingPosition()V

    .line 140
    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 131
    .local v1, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 132
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    goto :goto_0
.end method
