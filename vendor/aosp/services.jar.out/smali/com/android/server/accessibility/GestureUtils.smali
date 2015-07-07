.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D
    .locals 4
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 6
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I
    .param p3, "distance"    # I
    .param p4, "actionIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v2

    .line 31
    :cond_1
    invoke-static {p0, p1, p4}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v0

    .line 32
    .local v0, "deltaMove":D
    int-to-double v4, p3

    cmpl-double v3, v0, v4

    if-gez v3, :cond_0

    .line 35
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .locals 14
    .param p0, "firstPtrDownX"    # F
    .param p1, "firstPtrDownY"    # F
    .param p2, "secondPtrDownX"    # F
    .param p3, "secondPtrDownY"    # F
    .param p4, "firstPtrX"    # F
    .param p5, "firstPtrY"    # F
    .param p6, "secondPtrX"    # F
    .param p7, "secondPtrY"    # F
    .param p8, "maxDraggingAngleCos"    # F

    .prologue
    .line 65
    sub-float v1, p4, p0

    .line 66
    .local v1, "firstDeltaX":F
    sub-float v2, p5, p1

    .line 68
    .local v2, "firstDeltaY":F
    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-nez v11, :cond_0

    .line 69
    const/4 v11, 0x1

    .line 100
    :goto_0
    return v11

    .line 72
    :cond_0
    mul-float v11, v1, v1

    mul-float v12, v2, v2

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    .line 74
    .local v3, "firstMagnitude":F
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_1

    div-float v4, v1, v3

    .line 76
    .local v4, "firstXNormalized":F
    :goto_1
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_2

    div-float v5, v2, v3

    .line 79
    .local v5, "firstYNormalized":F
    :goto_2
    sub-float v6, p6, p2

    .line 80
    .local v6, "secondDeltaX":F
    sub-float v7, p7, p3

    .line 82
    .local v7, "secondDeltaY":F
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-nez v11, :cond_3

    .line 83
    const/4 v11, 0x1

    goto :goto_0

    .end local v4    # "firstXNormalized":F
    .end local v5    # "firstYNormalized":F
    .end local v6    # "secondDeltaX":F
    .end local v7    # "secondDeltaY":F
    :cond_1
    move v4, v1

    .line 74
    goto :goto_1

    .restart local v4    # "firstXNormalized":F
    :cond_2
    move v5, v2

    .line 76
    goto :goto_2

    .line 86
    .restart local v5    # "firstYNormalized":F
    .restart local v6    # "secondDeltaX":F
    .restart local v7    # "secondDeltaY":F
    :cond_3
    mul-float v11, v6, v6

    mul-float v12, v7, v7

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v8, v12

    .line 88
    .local v8, "secondMagnitude":F
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_4

    div-float v9, v6, v8

    .line 90
    .local v9, "secondXNormalized":F
    :goto_3
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_5

    div-float v10, v7, v8

    .line 93
    .local v10, "secondYNormalized":F
    :goto_4
    mul-float v11, v4, v9

    mul-float v12, v5, v10

    add-float v0, v11, v12

    .line 96
    .local v0, "angleCos":F
    cmpg-float v11, v0, p8

    if-gez v11, :cond_6

    .line 97
    const/4 v11, 0x0

    goto :goto_0

    .end local v0    # "angleCos":F
    .end local v9    # "secondXNormalized":F
    .end local v10    # "secondYNormalized":F
    :cond_4
    move v9, v6

    .line 88
    goto :goto_3

    .restart local v9    # "secondXNormalized":F
    :cond_5
    move v10, v7

    .line 90
    goto :goto_4

    .line 100
    .restart local v0    # "angleCos":F
    .restart local v10    # "secondYNormalized":F
    :cond_6
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 1
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "multiTapTimeSlop"    # I
    .param p3, "multiTapDistanceSlop"    # I
    .param p4, "actionIndex"    # I

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 1
    .param p0, "down"    # Landroid/view/MotionEvent;
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "tapTimeSlop"    # I
    .param p3, "tapDistanceSlop"    # I
    .param p4, "actionIndex"    # I

    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 45
    .local v0, "deltaTime":J
    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
