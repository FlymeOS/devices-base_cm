.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractonStateHandler"
.end annotation


# static fields
.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 1.3f


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 494
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 491
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    .line 495
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 496
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 497
    const v2, 0x1050015

    .line 496
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 499
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScalingThreshold:F

    .line 500
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 501
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 502
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 494
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 576
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    .line 575
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    .line 506
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 507
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 508
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get2(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 512
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    .line 513
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v1

    .line 514
    const v2, 0x3fa66666    # 1.3f

    .line 513
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 514
    const/high16 v2, 0x40a00000    # 5.0f

    .line 513
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 515
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap3(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap8(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get7(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 519
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1, v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 505
    .end local v0    # "scale":F
    :cond_2
    :goto_0
    return-void

    .line 521
    .restart local v0    # "scale":F
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 542
    iget-boolean v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    if-nez v3, :cond_2

    .line 543
    iget v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 544
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    .line 552
    :cond_0
    return v7

    .line 546
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    sub-float v0, v3, v4

    .line 547
    .local v0, "deltaScale":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScalingThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 548
    iput-boolean v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    .line 549
    return v6

    .line 554
    .end local v0    # "deltaScale":F
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v3

    .line 555
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    .line 554
    mul-float v1, v3, v4

    .line 556
    .local v1, "newScale":F
    const v3, 0x3fa66666    # 1.3f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 560
    .local v2, "normalizedNewScale":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    .line 561
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    .line 560
    invoke-virtual {v3, v2, v4, v5, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScale(FFFZ)V

    .line 562
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get2(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    .line 571
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get2(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 530
    return v2

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    .line 537
    return v2
.end method
