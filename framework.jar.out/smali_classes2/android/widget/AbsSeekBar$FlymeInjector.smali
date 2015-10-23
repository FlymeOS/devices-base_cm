.class Landroid/widget/AbsSeekBar$FlymeInjector;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIntFromFloat(F)I
    .locals 1
    .param p0, "num"    # F

    .prologue
    .line 977
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static getPosByProgress(Landroid/widget/AbsSeekBar;I)I
    .locals 6
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 982
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    .line 983
    .local v0, "available":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingLeft()I

    move-result v3

    .line 984
    .local v3, "x":I
    int-to-float v4, p1

    iget v5, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .line 985
    .local v1, "prog":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    move v4, v3

    .line 998
    :goto_0
    return v4

    .line 989
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 990
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v3

    .line 994
    goto :goto_0

    .line 997
    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move v4, v3

    .line 998
    goto :goto_0
.end method

.method static initExtFlymeFields(Landroid/widget/AbsSeekBar;)V
    .locals 3
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    const/4 v2, 0x0

    .line 938
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldScaledTouchSlop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldScaledTouchSlop()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzTouchSlopSquare:I

    .line 939
    iput v2, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    .line 940
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownY:F

    .line 941
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    .line 942
    iput v2, p0, Landroid/widget/AbsSeekBar;->mMzHalfThumbWidth:I

    .line 943
    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 944
    return-void
.end method

.method static invalidateThumb(Landroid/widget/AbsSeekBar;)V
    .locals 7
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 1098
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumbOffset()I

    move-result v4

    sub-int v0, v3, v4

    .line 1102
    .local v0, "delta":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1103
    .local v2, "thumbBound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1104
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method static mzDrawThumb(Landroid/widget/AbsSeekBar;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->isColorTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 953
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 955
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 956
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 957
    .local v3, "thumbWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 958
    .local v4, "width":I
    const/4 v0, 0x0

    .line 959
    .local v0, "delta":I
    if-le v4, v3, :cond_0

    .line 960
    sub-int v5, v4, v3

    div-int/lit8 v0, v5, 0x2

    .line 962
    :cond_0
    int-to-float v5, v0

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 974
    .end local v0    # "delta":I
    .end local v3    # "thumbWidth":I
    .end local v4    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 966
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 967
    .local v2, "thumbHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingBottom()I

    move-result v6

    sub-int v1, v5, v6

    .line 968
    .local v1, "height":I
    const/4 v0, 0x0

    .line 969
    .restart local v0    # "delta":I
    if-le v1, v2, :cond_3

    .line 970
    sub-int v5, v1, v2

    div-int/lit8 v0, v5, 0x2

    .line 972
    :cond_3
    int-to-float v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method static mzInitTouchDownStates(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V
    .locals 2
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1065
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    .line 1068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownY:F

    .line 1069
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    .line 1070
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    .line 1071
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzAttemptClaimDrag()V

    .line 1073
    :cond_0
    return-void
.end method

.method static mzInitTouchDownStates2(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V
    .locals 3
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1076
    iput v2, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    .line 1077
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    .line 1079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownY:F

    .line 1080
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    .line 1081
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    .line 1085
    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->mzTrackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method static mzProcessTouchAction(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V
    .locals 12
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1003
    .local v7, "x":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldKeyProgressIncrement()I

    move-result v3

    .line 1004
    .local v3, "keyProgressIncrement":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v11, v8, :cond_4

    .line 1005
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v8, v11, :cond_2

    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    if-nez v8, :cond_2

    .line 1007
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    add-int/2addr v8, v3

    invoke-static {p0, v8}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_1

    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    invoke-static {p0, v8}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMzHalfThumbWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_1

    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    invoke-static {p0, v9}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mMzHalfThumbWidth:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 1010
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v8, v11}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    sub-int/2addr v8, v3

    invoke-static {p0, v8}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    invoke-static {p0, v8}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMzHalfThumbWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    invoke-static {p0, v9}, Landroid/widget/AbsSeekBar$FlymeInjector;->getPosByProgress(Landroid/widget/AbsSeekBar;I)I

    move-result v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mMzHalfThumbWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 1014
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    sub-int/2addr v8, v3

    invoke-virtual {p0, v8, v11}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 1016
    :cond_2
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v8, v11, :cond_3

    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    if-ne v8, v11, :cond_3

    .line 1018
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingRight()I

    move-result v9

    sub-int v0, v8, v9

    .line 1019
    .local v0, "available":I
    if-eqz v0, :cond_0

    .line 1022
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    sub-float v1, v7, v8

    .line 1023
    .local v1, "deltaX":F
    int-to-float v8, v0

    div-float v6, v1, v8

    .line 1024
    .local v6, "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 1026
    .local v4, "max":I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    int-to-float v9, v4

    mul-float/2addr v9, v6

    invoke-static {v9}, Landroid/widget/AbsSeekBar$FlymeInjector;->getIntFromFloat(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0, v8, v11}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 1028
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v4    # "max":I
    .end local v6    # "scale":F
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->mzTrackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1030
    :cond_4
    const/4 v8, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 1031
    iget v8, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v8, v11, :cond_6

    .line 1032
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1033
    .restart local v1    # "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1038
    .local v2, "deltaY":F
    mul-float v8, v1, v1

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMzTouchSlopSquare:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 1039
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    if-nez v8, :cond_5

    .line 1040
    iput v7, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    .line 1041
    iput-boolean v11, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    .line 1045
    :cond_5
    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    if-eqz v8, :cond_0

    .line 1049
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldPaddingRight()I

    move-result v9

    sub-int v0, v8, v9

    .line 1050
    .restart local v0    # "available":I
    if-eqz v0, :cond_0

    .line 1053
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzDragTouchDownX:F

    sub-float v8, v7, v8

    int-to-float v9, v0

    div-float v6, v8, v9

    .line 1054
    .restart local v6    # "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 1056
    .restart local v4    # "max":I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mMzTouchDownProgress:I

    int-to-float v9, v4

    mul-float/2addr v9, v6

    invoke-static {v9}, Landroid/widget/AbsSeekBar$FlymeInjector;->getIntFromFloat(F)I

    move-result v9

    add-int v5, v8, v9

    .line 1057
    .local v5, "progress":I
    invoke-virtual {p0, v5, v11}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 1059
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v4    # "max":I
    .end local v5    # "progress":I
    .end local v6    # "scale":F
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->mzTrackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method static mzSetInDragoning(Landroid/widget/AbsSeekBar;)V
    .locals 1
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 1088
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mMzInDragoning:Z

    .line 1089
    return-void
.end method

.method static setThumbWidth(Landroid/widget/AbsSeekBar;)V
    .locals 1
    .param p0, "absSeekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 947
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->mzGetFieldThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMzHalfThumbWidth:I

    .line 950
    :cond_0
    return-void
.end method
