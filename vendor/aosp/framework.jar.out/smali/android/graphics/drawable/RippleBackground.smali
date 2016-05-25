.class Landroid/graphics/drawable/RippleBackground;
.super Ljava/lang/Object;
.source "RippleBackground.java"


# static fields
.field private static final ENTER_DURATION:I = 0x29b

.field private static final ENTER_DURATION_FAST:I = 0x64

.field private static final GLOBAL_SPEED:F = 1.0f

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_OUTER_OPACITY_EXIT_VELOCITY_MAX:F = 4.5f

.field private static final WAVE_OUTER_OPACITY_EXIT_VELOCITY_MIN:F = 1.5f

.field private static final WAVE_OUTER_SIZE_INFLUENCE_MAX:F = 200.0f

.field private static final WAVE_OUTER_SIZE_INFLUENCE_MIN:F = 40.0f


# instance fields
.field private mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanUseHardware:Z

.field private mColor:I

.field private mDensity:F

.field private mHardwareAnimating:Z

.field private mHasMaxRadius:Z

.field private mHasPendingHardwareExit:Z

.field private mOuterOpacity:F

.field private mOuterRadius:F

.field private mOuterX:F

.field private mOuterY:F

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private mPendingInflectionDuration:I

.field private mPendingInflectionOpacity:I

.field private mPendingOpacityDuration:I

.field private mPropOuterPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropOuterRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropOuterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropOuterY:Landroid/graphics/CanvasProperty;
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

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mRunningAnimations:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    .line 443
    new-instance v0, Landroid/graphics/drawable/RippleBackground$2;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleBackground$2;-><init>(Landroid/graphics/drawable/RippleBackground;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 104
    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    .line 105
    iput-object p2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    .line 106
    return-void
.end method

.method static synthetic access$000()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/drawable/RippleBackground;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/RippleBackground;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$202(Landroid/graphics/drawable/RippleBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleBackground;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 38
    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$302(Landroid/graphics/drawable/RippleBackground;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleBackground;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    return p1
.end method

.method private cancelHardwareAnimations(Z)V
    .locals 5
    .param p1, "jumpToEnd"    # Z

    .prologue
    const/4 v4, 0x0

    .line 416
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mRunningAnimations:Ljava/util/ArrayList;

    .line 417
    .local v2, "runningAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 418
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 419
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->end()V

    .line 418
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->cancel()V

    goto :goto_1

    .line 425
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 427
    iget-boolean v3, p0, Landroid/graphics/drawable/RippleBackground;->mHasPendingHardwareExit:Z

    if-eqz v3, :cond_2

    .line 429
    iput-boolean v4, p0, Landroid/graphics/drawable/RippleBackground;->mHasPendingHardwareExit:Z

    .line 431
    if-eqz p1, :cond_2

    .line 432
    const/4 v3, 0x0

    iput v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    .line 436
    :cond_2
    iput-boolean v4, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    .line 437
    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 410
    :cond_0
    return-void
.end method

.method private createPendingHardwareExit(III)V
    .locals 1
    .param p1, "opacityDuration"    # I
    .param p2, "inflectionDuration"    # I
    .param p3, "inflectionOpacity"    # I

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHasPendingHardwareExit:Z

    .line 258
    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mPendingOpacityDuration:I

    .line 259
    iput p2, p0, Landroid/graphics/drawable/RippleBackground;->mPendingInflectionDuration:I

    .line 260
    iput p3, p0, Landroid/graphics/drawable/RippleBackground;->mPendingInflectionOpacity:I

    .line 263
    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->invalidateSelf()V

    .line 264
    return-void
.end method

.method private drawHardware(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/HardwareCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 170
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHasPendingHardwareExit:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleBackground;->startPendingHardwareExit(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)V

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method private drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 184
    .local v2, "paintAlpha":I
    int-to-float v4, v2

    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 185
    .local v0, "alpha":I
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    .line 186
    .local v3, "radius":F
    if-lez v0, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 187
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    invoke-virtual {p1, v4, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    const/4 v1, 0x1

    .line 193
    :cond_0
    return v1
.end method

.method private endSoftwareAnimations()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 338
    :cond_0
    return-void
.end method

.method private exitSoftware(III)V
    .locals 8
    .param p1, "opacityDuration"    # I
    .param p2, "inflectionDuration"    # I
    .param p3, "inflectionOpacity"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 350
    if-lez p2, :cond_1

    .line 352
    const-string/jumbo v2, "outerOpacity"

    new-array v3, v6, [F

    int-to-float v4, p3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 354
    .local v1, "outerOpacityAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 355
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 356
    sget-object v2, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    sub-int v0, p1, p2

    .line 360
    .local v0, "outerDuration":I
    if-lez v0, :cond_0

    .line 361
    new-instance v2, Landroid/graphics/drawable/RippleBackground$1;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Landroid/graphics/drawable/RippleBackground;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    .end local v0    # "outerDuration":I
    :goto_0
    iput-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 393
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 394
    return-void

    .line 382
    .restart local v0    # "outerDuration":I
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 385
    .end local v0    # "outerDuration":I
    .end local v1    # "outerOpacityAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    const-string/jumbo v2, "outerOpacity"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 386
    .restart local v1    # "outerOpacityAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 387
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 388
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getTempPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "original"    # Landroid/graphics/Paint;

    .prologue
    .line 341
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mTempPaint:Landroid/graphics/Paint;

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 345
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mTempPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private invalidateSelf()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 441
    return-void
.end method

.method private startPendingHardwareExit(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "c"    # Landroid/view/HardwareCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 267
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/graphics/drawable/RippleBackground;->mHasPendingHardwareExit:Z

    .line 269
    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mPendingOpacityDuration:I

    .line 270
    .local v2, "opacityDuration":I
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mPendingInflectionDuration:I

    .line 271
    .local v0, "inflectionDuration":I
    iget v1, p0, Landroid/graphics/drawable/RippleBackground;->mPendingInflectionOpacity:I

    .line 273
    .local v1, "inflectionOpacity":I
    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleBackground;->getTempPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    .line 274
    .local v6, "outerPaint":Landroid/graphics/Paint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    .line 276
    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    invoke-static {v7}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterRadius:Landroid/graphics/CanvasProperty;

    .line 277
    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    invoke-static {v7}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterX:Landroid/graphics/CanvasProperty;

    .line 278
    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    invoke-static {v7}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterY:Landroid/graphics/CanvasProperty;

    .line 281
    if-lez v0, :cond_1

    .line 283
    new-instance v5, Landroid/view/RenderNodeAnimator;

    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    int-to-float v8, v1

    invoke-direct {v5, v7, v10, v8}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 285
    .local v5, "outerOpacityAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v8, v0

    invoke-virtual {v5, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 286
    sget-object v7, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    sub-int v3, v2, v0

    .line 290
    .local v3, "outerDuration":I
    if-lez v3, :cond_0

    .line 291
    new-instance v4, Landroid/view/RenderNodeAnimator;

    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    invoke-direct {v4, v7, v10, v11}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 293
    .local v4, "outerFadeOutAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v8, v3

    invoke-virtual {v4, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 294
    sget-object v7, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 296
    int-to-float v7, v1

    invoke-virtual {v4, v7}, Landroid/view/RenderNodeAnimator;->setStartValue(F)V

    .line 297
    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v7}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    invoke-virtual {v4, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 299
    invoke-virtual {v4}, Landroid/view/RenderNodeAnimator;->start()V

    .line 301
    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v3    # "outerDuration":I
    .end local v4    # "outerFadeOutAnim":Landroid/view/RenderNodeAnimator;
    :goto_0
    invoke-virtual {v5, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 314
    invoke-virtual {v5}, Landroid/view/RenderNodeAnimator;->start()V

    .line 316
    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iput-boolean v10, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    .line 321
    iput v11, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    .line 322
    return-void

    .line 303
    .restart local v3    # "outerDuration":I
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v5, v7}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 306
    .end local v3    # "outerDuration":I
    .end local v5    # "outerOpacityAnim":Landroid/view/RenderNodeAnimator;
    :cond_1
    new-instance v5, Landroid/view/RenderNodeAnimator;

    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    invoke-direct {v5, v7, v10, v11}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 308
    .restart local v5    # "outerOpacityAnim":Landroid/view/RenderNodeAnimator;
    sget-object v7, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    int-to-long v8, v2

    invoke-virtual {v5, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 310
    iget-object v7, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v5, v7}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->cancelSoftwareAnimations()V

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    .line 403
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mColor:I

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    .line 149
    .local v0, "canUseHardware":Z
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eqz v2, :cond_0

    .line 151
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    .line 153
    :cond_0
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    .line 156
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mHasPendingHardwareExit:Z

    if-eqz v2, :cond_2

    .line 157
    :cond_1
    check-cast p1, Landroid/view/HardwareCanvas;

    .end local p1    # "c":Landroid/graphics/Canvas;
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleBackground;->drawHardware(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)Z

    move-result v1

    .line 162
    .local v1, "hasContent":Z
    :goto_0
    return v1

    .line 159
    .end local v1    # "hasContent":Z
    .restart local p1    # "c":Landroid/graphics/Canvas;
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleBackground;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v1

    .restart local v1    # "hasContent":Z
    goto :goto_0
.end method

.method public enter(Z)V
    .locals 4
    .param p1, "fast"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleBackground;->cancel()V

    .line 212
    const-string/jumbo v1, "outerOpacity"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 213
    .local v0, "opacity":Landroid/animation/ObjectAnimator;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 214
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x64

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    sget-object v1, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 222
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 223
    return-void

    .line 214
    :cond_0
    const-wide/16 v2, 0x29b

    goto :goto_0

    .line 212
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public exit()V
    .locals 12

    .prologue
    const/16 v11, 0x14d

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 229
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleBackground;->cancel()V

    .line 233
    const/16 v2, 0x14d

    .line 234
    .local v2, "opacityDuration":I
    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mDensity:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x43480000    # 200.0f

    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mDensity:F

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    .line 237
    .local v4, "outerSizeInfluence":F
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v6, 0x40900000    # 4.5f

    invoke-static {v5, v6, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    .line 243
    .local v3, "outerOpacityVelocity":F
    const/4 v5, 0x0

    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    sub-float v6, v9, v6

    mul-float/2addr v6, v10

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v7, v3

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 245
    .local v0, "inflectionDuration":I
    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    int-to-float v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v4

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v1, v5

    .line 248
    .local v1, "inflectionOpacity":I
    iget-boolean v5, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eqz v5, :cond_0

    .line 249
    invoke-direct {p0, v11, v0, v1}, Landroid/graphics/drawable/RippleBackground;->createPendingHardwareExit(III)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-direct {p0, v11, v0, v1}, Landroid/graphics/drawable/RippleBackground;->exitSoftware(III)V

    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 200
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    float-to-int v0, v3

    .line 201
    .local v0, "outerX":I
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    float-to-int v1, v3

    .line 202
    .local v1, "outerY":I
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 203
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    return-void
.end method

.method public getOuterOpacity()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    return v0
.end method

.method public jump()V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->endSoftwareAnimations()V

    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    .line 331
    return-void
.end method

.method public onHotspotBoundsChanged()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 124
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mHasMaxRadius:Z

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 126
    .local v1, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 127
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    .line 129
    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    :cond_0
    return-void
.end method

.method public setOuterOpacity(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 133
    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    .line 134
    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->invalidateSelf()V

    .line 135
    return-void
.end method

.method public setup(IF)V
    .locals 5
    .param p1, "maxRadius"    # I
    .param p2, "density"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 109
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mHasMaxRadius:Z

    .line 111
    int-to-float v2, p1

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    .line 118
    :goto_0
    iput v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    .line 119
    iput v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    .line 120
    iput p2, p0, Landroid/graphics/drawable/RippleBackground;->mDensity:F

    .line 121
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 114
    .local v1, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 115
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    goto :goto_0
.end method

.method public shouldDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
