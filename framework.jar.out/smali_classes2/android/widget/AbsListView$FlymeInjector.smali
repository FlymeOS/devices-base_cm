.class final Landroid/widget/AbsListView$FlymeInjector;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8483
    return-void
.end method

.method private static flymeCheckInRegion(Landroid/widget/AbsListView;II)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8603
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8604
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 8608
    :goto_0
    return-void

    .line 8606
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    goto :goto_0
.end method

.method static flymeContentFits(Landroid/widget/AbsListView;)Z
    .locals 5
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x0

    .line 8419
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8420
    .local v0, "childCount":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static flymeOnOverScrolled(Landroid/widget/AbsListView;)V
    .locals 3
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 8631
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8635
    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    .line 8637
    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 8638
    .local v0, "flag":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 8639
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 8642
    .end local v0    # "flag":Z
    :cond_1
    return-void
.end method

.method static flymeOnSizeChanged(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 8530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8531
    return-void
.end method

.method static flymeOnTouchDown(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 8611
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 8627
    :cond_0
    :goto_0
    return-void

    .line 8614
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 8615
    .local v0, "motionPosition":I
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 8616
    if-gez v0, :cond_2

    .line 8617
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8621
    :cond_2
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 8622
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    if-nez v1, :cond_3

    .line 8623
    new-instance v1, Landroid/widget/AbsListView$MzCheckForLittleTap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$MzCheckForLittleTap;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    .line 8625
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static flymeOnTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 8585
    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_4

    .line 8586
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8590
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8591
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 8592
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 8594
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 8595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0, v1, v2}, Landroid/widget/AbsListView$FlymeInjector;->flymeCheckInRegion(Landroid/widget/AbsListView;II)V

    .line 8597
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 8598
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 8600
    :cond_3
    return-void

    .line 8588
    .end local v0    # "action":I
    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    goto :goto_0
.end method

.method static flymeOnWindowFocusChanged(Landroid/widget/AbsListView;Z)V
    .locals 2
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 8534
    if-eqz p1, :cond_1

    .line 8541
    :cond_0
    :goto_0
    return-void

    .line 8537
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8538
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_0
.end method

.method static flymeStopPositionScroller(Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 8663
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 8664
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8665
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_0

    .line 8666
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 8669
    :cond_0
    return-void
.end method

.method static flymeTrackMotionScroll(Landroid/widget/AbsListView;I)V
    .locals 11
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "incrementalDeltaY"    # I

    .prologue
    const/4 v8, 0x1

    .line 8545
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-eqz v9, :cond_1

    if-eqz p1, :cond_1

    .line 8546
    if-gez p1, :cond_2

    move v7, v8

    .line 8547
    .local v7, "up":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 8548
    .local v5, "size":I
    const/4 v1, 0x0

    .line 8549
    .local v1, "child":Landroid/view/View;
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 8550
    .local v6, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v9, v10

    .line 8551
    .local v0, "bottom":I
    const/4 v2, 0x0

    .line 8552
    .local v2, "findNewFocus":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 8553
    .local v3, "focusedChild":Landroid/view/View;
    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 8554
    const/4 v2, 0x1

    .line 8560
    :cond_0
    :goto_1
    if-ne v2, v8, :cond_1

    .line 8561
    if-eqz v7, :cond_5

    .line 8562
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 8563
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8564
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-nez v8, :cond_4

    .line 8566
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 8582
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "findNewFocus":Z
    .end local v3    # "focusedChild":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "top":I
    .end local v7    # "up":Z
    :cond_1
    :goto_3
    return-void

    .line 8546
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 8555
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "findNewFocus":Z
    .restart local v3    # "focusedChild":Landroid/view/View;
    .restart local v5    # "size":I
    .restart local v6    # "top":I
    .restart local v7    # "up":Z
    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8556
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 8557
    const/4 v2, 0x1

    goto :goto_1

    .line 8562
    .restart local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8571
    .end local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v5, -0x1

    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_1

    .line 8572
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8573
    if-eqz v1, :cond_6

    invoke-virtual {p0, v1, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-nez v8, :cond_6

    .line 8575
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 8571
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method

.method static getEdgeYGlowBottom(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "edgeY"    # I

    .prologue
    .line 8655
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    if-eqz v0, :cond_0

    .line 8656
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 8658
    :cond_0
    return p1
.end method

.method static getEdgeYGlowTop(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "edgeY"    # I

    .prologue
    .line 8646
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    if-eqz v0, :cond_0

    .line 8647
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    .line 8649
    :cond_0
    return p1
.end method

.method static getFlymeChoiceMode(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 8400
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-eqz v0, :cond_0

    .line 8401
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 8404
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    goto :goto_0
.end method

.method static initFlymeExtraFields(Landroid/widget/AbsListView;)V
    .locals 7
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8370
    iput v4, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 8371
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 8372
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 8373
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8374
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    .line 8375
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    .line 8376
    iput v4, p0, Landroid/widget/AbsListView;->mDragOffsetX:I

    .line 8377
    iput v4, p0, Landroid/widget/AbsListView;->mDragOffsetY:I

    .line 8378
    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_long_pressed:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackground:I

    .line 8379
    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_filter:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I

    .line 8380
    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_delete:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I

    .line 8381
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFlymeCanNfcShare:Z

    .line 8383
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsFlymeFlingToScroll:Z

    .line 8384
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    .line 8385
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mEnableLoadAllItems:Z

    .line 8386
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlymeEnablePressStateOnCheck:Z

    .line 8387
    iput-object v6, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    .line 8388
    iput-object v6, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 8389
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8390
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_check_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mDefaultCheckWidth:I

    .line 8391
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    .line 8392
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setDelayTopOverScrollEnabled(Z)V

    .line 8393
    new-instance v1, Landroid/widget/AbsListView$DelayUpdate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$DelayUpdate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDelayUpdate:Ljava/lang/Runnable;

    .line 8394
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mCenterContent:Z

    .line 8395
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlymeHasActionDrop:Z

    .line 8396
    return-void
.end method

.method private static mzConfirmDragView(Landroid/widget/AbsListView;)V
    .locals 14
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v7, 0x0

    .line 8499
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 8527
    :cond_0
    :goto_0
    return-void

    .line 8501
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 8502
    .local v2, "dragAndDrapId":J
    iget v10, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lt v10, v11, :cond_2

    iget v10, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_2

    const/4 v5, 0x1

    .line 8505
    .local v5, "isDragViewOnScreen":Z
    :goto_1
    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v10, v2, v10

    if-nez v10, :cond_3

    if-eqz v5, :cond_3

    .line 8506
    iget v10, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    .line 8507
    iget-object v10, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    .line 8508
    iget-object v10, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    invoke-static {p0, v10, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .end local v5    # "isDragViewOnScreen":Z
    :cond_2
    move v5, v7

    .line 8502
    goto :goto_1

    .line 8511
    .restart local v5    # "isDragViewOnScreen":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8514
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-ge v4, v1, :cond_0

    .line 8515
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v6, v10, v4

    .line 8516
    .local v6, "position":I
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 8517
    .local v8, "searchId":J
    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v10, v8, v10

    if-nez v10, :cond_4

    .line 8518
    iput v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8519
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8520
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    .line 8521
    invoke-static {p0, v0, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8522
    iput-object v0, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    goto :goto_0

    .line 8514
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method static mzOnLayout(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 8425
    iget-wide v0, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 8426
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlymeCurrentDragChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8428
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeHasActionDrop:Z

    if-eqz v0, :cond_0

    .line 8429
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8430
    iput-wide v2, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    .line 8434
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 8435
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 8436
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 8437
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 8440
    :cond_1
    return-void
.end method

.method static mzOnLayout2(Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 8466
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 8467
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 8468
    new-instance v0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 8469
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 8474
    :cond_0
    invoke-static {p0}, Landroid/widget/AbsListView$FlymeInjector;->mzConfirmDragView(Landroid/widget/AbsListView;)V

    .line 8476
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeFirstInit:Z

    if-nez v0, :cond_1

    .line 8477
    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isThemeLight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    .line 8478
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeFirstInit:Z

    .line 8481
    :cond_1
    return-void
.end method

.method static mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 5
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8443
    if-eqz p1, :cond_1

    .line 8444
    if-eqz p2, :cond_2

    move v0, v3

    .line 8445
    .local v0, "alpha":I
    :goto_0
    instance-of v2, p1, Lcom/meizu/widget/ListDragShadowItem;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 8446
    check-cast v2, Lcom/meizu/widget/ListDragShadowItem;

    invoke-interface {v2}, Lcom/meizu/widget/ListDragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    .line 8447
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 8448
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 8454
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    if-nez v2, :cond_1

    .line 8455
    if-nez p2, :cond_4

    .line 8456
    invoke-virtual {p1, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .line 8462
    .end local v0    # "alpha":I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v4

    .line 8444
    goto :goto_0

    .line 8451
    .restart local v0    # "alpha":I
    :cond_3
    int-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 8458
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_2
.end method

.method static setFlymeChoiceMode(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "choiceMode"    # I

    .prologue
    .line 8408
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 8410
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 8411
    const/4 p1, 0x3

    .line 8415
    :goto_0
    return p1

    .line 8413
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    goto :goto_0
.end method
