.class Landroid/graphics/drawable/RippleForeground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;,
        Landroid/graphics/drawable/RippleForeground$1;,
        Landroid/graphics/drawable/RippleForeground$2;,
        Landroid/graphics/drawable/RippleForeground$3;,
        Landroid/graphics/drawable/RippleForeground$4;
    }
.end annotation


# static fields
.field private static final BOUNDED_OPACITY_EXIT_DURATION:I = 0x190

.field private static final BOUNDED_ORIGIN_EXIT_DURATION:I = 0x12c

.field private static final BOUNDED_RADIUS_EXIT_DURATION:I = 0x320

.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final MAX_BOUNDED_RADIUS:F = 350.0f

.field private static final OPACITY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final RIPPLE_ENTER_DELAY:I = 0x50

.field private static final TWEEN_ORIGIN:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWEEN_RADIUS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 1024.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 3400.0f


# instance fields
.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBoundedRadius:F

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mHasFinishedExit:Z

.field private mIsBounded:Z

.field private mOpacity:F

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

.field private mStartingX:F

.field private mStartingY:F

.field private mTargetX:F

.field private mTargetY:F

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return v0
.end method

.method static synthetic -get2(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/RippleForeground;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return p1
.end method

.method static synthetic -set1(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return p1
.end method

.method static synthetic -set2(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return p1
.end method

.method static synthetic -set3(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return p1
.end method

.method static synthetic -set4(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 39
    new-instance v0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;

    .line 40
    const/4 v1, 0x0

    const/high16 v2, 0x43c80000    # 400.0f

    const v3, 0x3fb33333    # 1.4f

    .line 39
    invoke-direct {v0, v2, v3, v1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;-><init>(FFF)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 387
    new-instance v0, Landroid/graphics/drawable/RippleForeground$2;

    const-string/jumbo v1, "tweenRadius"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$2;-><init>(Ljava/lang/String;)V

    .line 386
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    .line 404
    new-instance v0, Landroid/graphics/drawable/RippleForeground$3;

    const-string/jumbo v1, "tweenOrigin"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$3;-><init>(Ljava/lang/String;)V

    .line 403
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    .line 422
    new-instance v0, Landroid/graphics/drawable/RippleForeground$4;

    const-string/jumbo v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$4;-><init>(Ljava/lang/String;)V

    .line 421
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZZ)V
    .locals 4
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "startingX"    # F
    .param p4, "startingY"    # F
    .param p5, "isBounded"    # Z
    .param p6, "forceSoftware"    # Z

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p6}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    .line 69
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    .line 70
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    .line 73
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    .line 79
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    .line 80
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    .line 81
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    .line 349
    new-instance v0, Landroid/graphics/drawable/RippleForeground$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleForeground$1;-><init>(Landroid/graphics/drawable/RippleForeground;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 93
    iput-boolean p5, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    .line 94
    iput p3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    .line 95
    iput p4, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    .line 97
    if-eqz p5, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4075e00000000000L    # 350.0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 98
    const v1, 0x439d8000    # 315.0f

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    .line 90
    :goto_0
    return-void

    .line 101
    :cond_0
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    goto :goto_0
.end method

.method private clampStartingPosition()V
    .locals 12

    .prologue
    .line 333
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 334
    .local v2, "cX":F
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 335
    .local v3, "cY":F
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    sub-float v4, v7, v2

    .line 336
    .local v4, "dX":F
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    sub-float v5, v7, v3

    .line 337
    .local v5, "dY":F
    iget v6, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    .line 338
    .local v6, "r":F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 340
    float-to-double v8, v5

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 341
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v2

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    .line 342
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v3

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    .line 332
    .end local v0    # "angle":D
    :goto_0
    return-void

    .line 344
    :cond_0
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    .line 345
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    goto :goto_0
.end method

.method private computeBoundedTargetValues()V
    .locals 3

    .prologue
    const v2, 0x3f333333    # 0.7f

    .line 222
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    .line 223
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    .line 224
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    .line 221
    return-void
.end method

.method private getCurrentRadius()F
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getCurrentX()F
    .locals 3

    .prologue
    .line 197
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getCurrentY()F
    .locals 3

    .prologue
    .line 201
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getOpacityExitDuration()I
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getRadiusExitDuration()I
    .locals 6

    .prologue
    .line 205
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v2

    sub-float v0, v1, v2

    .line 206
    .local v0, "remainingRadius":F
    const v1, 0x458a4000    # 4424.0f

    div-float v1, v0, v1

    .line 207
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mDensity:F

    .line 206
    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    .line 207
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 206
    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method


# virtual methods
.method protected createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 14
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 271
    iget-boolean v11, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    if-eqz v11, :cond_0

    .line 272
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    .line 274
    const/16 v4, 0x320

    .line 275
    .local v4, "radiusDuration":I
    const/16 v2, 0x12c

    .line 276
    .local v2, "originDuration":I
    const/16 v1, 0x190

    .line 283
    .local v1, "opacityDuration":I
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v7

    .line 284
    .local v7, "startX":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v8

    .line 285
    .local v8, "startY":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v6

    .line 287
    .local v6, "startRadius":F
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {p1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 289
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 290
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 291
    invoke-static {v7}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    .line 292
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    .line 294
    new-instance v3, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    invoke-direct {v3, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 295
    .local v3, "radius":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v4

    invoke-virtual {v3, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 296
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    new-instance v9, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    invoke-direct {v9, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 299
    .local v9, "x":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v2

    invoke-virtual {v9, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 300
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v9, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    new-instance v10, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    invoke-direct {v10, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 303
    .local v10, "y":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v2

    invoke-virtual {v10, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 304
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v10, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 307
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 306
    invoke-direct {v0, v11, v13, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 308
    .local v0, "opacity":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v1

    invoke-virtual {v0, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 309
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v11}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    new-instance v5, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-direct {v5}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    .line 313
    .local v5, "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 314
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 315
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 316
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .line 318
    return-object v5

    .line 278
    .end local v0    # "opacity":Landroid/view/RenderNodeAnimator;
    .end local v1    # "opacityDuration":I
    .end local v2    # "originDuration":I
    .end local v3    # "radius":Landroid/view/RenderNodeAnimator;
    .end local v4    # "radiusDuration":I
    .end local v5    # "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .end local v6    # "startRadius":F
    .end local v7    # "startX":F
    .end local v8    # "startY":F
    .end local v9    # "x":Landroid/view/RenderNodeAnimator;
    .end local v10    # "y":Landroid/view/RenderNodeAnimator;
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    move-result v4

    .line 279
    .restart local v4    # "radiusDuration":I
    move v2, v4

    .line 280
    .restart local v2    # "originDuration":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    move-result v1

    .restart local v1    # "opacityDuration":I
    goto/16 :goto_0
.end method

.method protected createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 10
    .param p1, "fast"    # Z

    .prologue
    .line 166
    iget-boolean v5, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    if-eqz v5, :cond_0

    .line 167
    const/4 v5, 0x0

    return-object v5

    .line 171
    :cond_0
    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    iget v6, p0, Landroid/graphics/drawable/RippleForeground;->mDensity:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    .line 170
    double-to-int v0, v6

    .line 173
    .local v0, "duration":I
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 174
    .local v4, "tweenRadius":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 175
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    const-wide/16 v6, 0x50

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 179
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 180
    .local v3, "tweenOrigin":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 181
    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    const-wide/16 v6, 0x50

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 185
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 186
    .local v1, "opacity":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 187
    const-wide/16 v6, 0x78

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 191
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 193
    return-object v2
.end method

.method protected createSoftwareExit()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 232
    iget-boolean v7, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    if-eqz v7, :cond_0

    .line 233
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    .line 235
    const/16 v3, 0x320

    .line 236
    .local v3, "radiusDuration":I
    const/16 v2, 0x12c

    .line 237
    .local v2, "originDuration":I
    const/16 v1, 0x190

    .line 244
    .local v1, "opacityDuration":I
    :goto_0
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    new-array v8, v10, [F

    aput v12, v8, v11

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 245
    .local v6, "tweenRadius":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 246
    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    new-array v8, v10, [F

    aput v12, v8, v11

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 250
    .local v5, "tweenOrigin":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 251
    int-to-long v8, v2

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    new-array v8, v10, [F

    const/4 v9, 0x0

    aput v9, v8, v11

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 255
    .local v0, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 256
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 257
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 260
    .local v4, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 261
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    return-object v4

    .line 239
    .end local v0    # "opacity":Landroid/animation/ObjectAnimator;
    .end local v1    # "opacityDuration":I
    .end local v2    # "originDuration":I
    .end local v3    # "radiusDuration":I
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    .end local v5    # "tweenOrigin":Landroid/animation/ObjectAnimator;
    .end local v6    # "tweenRadius":Landroid/animation/ObjectAnimator;
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    move-result v3

    .line 240
    .restart local v3    # "radiusDuration":I
    move v2, v3

    .line 241
    .restart local v2    # "originDuration":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    move-result v1

    .restart local v1    # "opacityDuration":I
    goto :goto_0
.end method

.method protected drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 115
    .local v2, "origAlpha":I
    int-to-float v6, v2

    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 116
    .local v0, "alpha":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v3

    .line 117
    .local v3, "radius":F
    if-lez v0, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v4

    .line 119
    .local v4, "x":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v5

    .line 120
    .local v5, "y":F
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    invoke-virtual {p1, v4, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    const/4 v1, 0x1

    .line 126
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 139
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    float-to-int v0, v3

    .line 140
    .local v0, "outerX":I
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    float-to-int v1, v3

    .line 141
    .local v1, "outerY":I
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 142
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 138
    return-void
.end method

.method public hasFinishedExit()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return v0
.end method

.method protected jumpValuesToExit()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    .line 324
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    .line 325
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    .line 326
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    .line 322
    return-void
.end method

.method public move(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 150
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    .line 151
    iput p2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    .line 153
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    .line 149
    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    .line 106
    return-void
.end method
