.class Landroid/widget/AbsListView$FlymeInjector;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initExtFlymeFields(Landroid/widget/AbsListView;)V
    .locals 7
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8473
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    .line 8474
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDelaySpringBackEnabled:Z

    .line 8475
    iput v4, p0, Landroid/widget/AbsListView;->mHoldIndicatorOffset:I

    .line 8476
    iput v4, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 8477
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 8478
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    .line 8479
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8480
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    .line 8481
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    .line 8482
    iput v4, p0, Landroid/widget/AbsListView;->mDragOffsetX:I

    .line 8483
    iput v4, p0, Landroid/widget/AbsListView;->mDragOffsetY:I

    .line 8484
    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_long_pressed:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackground:I

    .line 8485
    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_filter:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I

    .line 8486
    sget v1, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_delete:I

    iput v1, p0, Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I

    .line 8487
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mCanNfcShare:Z

    .line 8488
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsFlingToScroll:Z

    .line 8489
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    .line 8490
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mEnableLoadAllItems:Z

    .line 8491
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mEnablePressStateOnCheck:Z

    .line 8492
    iput-object v6, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    .line 8493
    iput-object v6, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 8494
    new-instance v1, Landroid/widget/AbsListView$MzDelaySpringBack;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$MzDelaySpringBack;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    .line 8495
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8496
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/flyme/internal/R$dimen;->mz_over_scroll_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 8497
    iget v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 8498
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_check_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mDefaultCheckWidth:I

    .line 8499
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_hold_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mHoldDistance:I

    .line 8500
    sget v1, Lcom/flyme/internal/R$dimen;->mz_delay_spring_back_max_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mListWindowTop:I

    .line 8501
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    .line 8502
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setDelayTopOverScrollEnabled(Z)V

    .line 8503
    new-instance v1, Landroid/widget/AbsListView$DelayUpdate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$DelayUpdate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDelayUpdate:Ljava/lang/Runnable;

    .line 8504
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mCenterContent:Z

    .line 8506
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 8507
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 8509
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->isThemeLight()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    .line 8510
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHasActionDrop:Z

    .line 8511
    return-void
.end method

.method private static mzCheckInRegion(Landroid/widget/AbsListView;II)V
    .locals 1
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8922
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8923
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    .line 8927
    :goto_0
    return-void

    .line 8925
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    goto :goto_0
.end method

.method private static mzConfirmDragView(Landroid/widget/AbsListView;)V
    .locals 14
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v7, 0x0

    .line 8602
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 8631
    :cond_0
    :goto_0
    return-void

    .line 8605
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 8606
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

    .line 8609
    .local v5, "isDragViewOnScreen":Z
    :goto_1
    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v10, v2, v10

    if-nez v10, :cond_3

    if-eqz v5, :cond_3

    .line 8610
    iget v10, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    .line 8611
    iget-object v10, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    .line 8612
    iget-object v10, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    invoke-static {p0, v10, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .end local v5    # "isDragViewOnScreen":Z
    :cond_2
    move v5, v7

    .line 8606
    goto :goto_1

    .line 8615
    .restart local v5    # "isDragViewOnScreen":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8618
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-ge v4, v1, :cond_0

    .line 8619
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v6, v10, v4

    .line 8620
    .local v6, "position":I
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 8621
    .local v8, "searchId":J
    iget-wide v10, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v10, v8, v10

    if-nez v10, :cond_4

    .line 8622
    iput v6, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8623
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8624
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    .line 8625
    invoke-static {p0, v0, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8626
    iput-object v0, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    goto :goto_0

    .line 8618
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method static mzContentFits(Landroid/widget/AbsListView;)Z
    .locals 5
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x0

    .line 8543
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8544
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

.method static mzDispatchDraw(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 8663
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDelaySpringBackEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsListAtWindowTop:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 8664
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iget v3, p0, Landroid/widget/AbsListView;->mHoldDistance:I

    invoke-static {v1, v2, v3}, Landroid/widget/AbsListView$FlymeInjector;->mzGetHolderAlphaScale(III)F

    move-result v0

    .line 8665
    .local v0, "alphaScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 8666
    iget-object v1, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    .line 8667
    iget-object v1, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1, p1}, Lcom/meizu/widget/MzListHoldIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 8670
    .end local v0    # "alphaScale":F
    :cond_0
    return-void
.end method

.method static mzGetChoiceMode(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8524
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-eqz v0, :cond_0

    .line 8525
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 8528
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    goto :goto_0
.end method

.method private static mzGetHolderAlphaScale(III)F
    .locals 4
    .param p0, "scrollY"    # I
    .param p1, "overscrollDistance"    # I
    .param p2, "holdDistance"    # I

    .prologue
    const/4 v1, 0x0

    .line 8673
    if-lez p1, :cond_0

    if-ltz p0, :cond_1

    .line 8685
    :cond_0
    :goto_0
    return v1

    .line 8676
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 8677
    .local v0, "absCurrentOverScrollDistance":I
    if-lt v0, p1, :cond_2

    .line 8678
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 8680
    :cond_2
    if-lt v0, p2, :cond_0

    .line 8683
    sub-int v2, v0, p2

    int-to-float v2, v2

    sub-int v3, p1, p2

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 8685
    .local v1, "delta":F
    goto :goto_0
.end method

.method static mzIsItemCheckable(Landroid/widget/AbsListView;I)Z
    .locals 3
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I

    .prologue
    .line 8651
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8652
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 8653
    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8654
    .local v0, "checkbox":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 8656
    const/4 v2, 0x1

    .line 8659
    .end local v0    # "checkbox":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static mzOnLayout(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 8549
    iget-wide v0, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 8550
    iget-object v0, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8552
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasActionDrop:Z

    if-eqz v0, :cond_0

    .line 8553
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8554
    iput-wide v2, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    .line 8557
    :cond_0
    return-void
.end method

.method static mzOnLayout2(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v3, 0x0

    .line 8583
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 8584
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 8585
    new-instance v1, Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 8586
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 8591
    :cond_0
    invoke-static {p0}, Landroid/widget/AbsListView$FlymeInjector;->mzConfirmDragView(Landroid/widget/AbsListView;)V

    .line 8594
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsThemeLight:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v1

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_1

    .line 8595
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_list_scrollbar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 8596
    .local v0, "scrollbarPadding":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/widget/AbsListView;->setScrollBarPadding(IIII)V

    .line 8599
    .end local v0    # "scrollbarPadding":I
    :cond_1
    return-void
.end method

.method static mzOnOverScrolled(Landroid/widget/AbsListView;)V
    .locals 3
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8987
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8991
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    .line 8993
    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 8994
    .local v0, "flag":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 8995
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 8998
    .end local v0    # "flag":Z
    :cond_1
    return-void
.end method

.method static mzOnSizeChanged(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x1

    .line 8689
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8690
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mDelaySpringBackEnabled:Z

    if-eqz v2, :cond_0

    .line 8692
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 8693
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 8694
    aget v2, v0, v1

    iget v3, p0, Landroid/widget/AbsListView;->mListWindowTop:I

    if-gt v2, v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsListAtWindowTop:Z

    .line 8697
    .end local v0    # "location":[I
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mHoldIndicatorOffset:I

    if-nez v1, :cond_1

    .line 8698
    iget-object v1, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v1, :cond_1

    .line 8699
    iget-object v1, p0, Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 8702
    :cond_1
    return-void

    .line 8694
    .restart local v0    # "location":[I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static mzOnTouchCancel(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8976
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 8977
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    if-eqz v0, :cond_0

    .line 8978
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->mzSetFieldActivePointerId(I)V

    .line 8979
    const/4 v0, 0x1

    .line 8982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static mzOnTouchDown(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8930
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 8952
    :cond_0
    :goto_0
    return-void

    .line 8933
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 8934
    .local v0, "motionPosition":I
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 8935
    if-ltz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8936
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v1, :cond_2

    .line 8937
    iget-object v1, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8946
    :cond_2
    :goto_1
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 8947
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    if-nez v1, :cond_3

    .line 8948
    new-instance v1, Landroid/widget/AbsListView$MzCheckForLittleTap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$MzCheckForLittleTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    .line 8950
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckForLittleTap:Landroid/widget/AbsListView$MzCheckForLittleTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8940
    :cond_4
    if-gez v0, :cond_2

    .line 8941
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1
.end method

.method static mzOnTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 8904
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_4

    .line 8905
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8909
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8910
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 8911
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    .line 8913
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 8914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0, v1, v2}, Landroid/widget/AbsListView$FlymeInjector;->mzCheckInRegion(Landroid/widget/AbsListView;II)V

    .line 8916
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-nez v1, :cond_3

    .line 8917
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    .line 8919
    :cond_3
    return-void

    .line 8907
    .end local v0    # "action":I
    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    goto :goto_0
.end method

.method static mzOnTouchUpForOverScroll(Landroid/widget/AbsListView;)Z
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8955
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldFlingRunnable()Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 8956
    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->mzSetFieldFlingRunnable(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 8958
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v1

    .line 8959
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldMaximumVelocity()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8960
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldActivePointerId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    .line 8962
    .local v0, "initialVelocity":I
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v2, :cond_1

    .line 8963
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8972
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 8965
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8966
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldMinimumVelocity()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v2

    if-nez v2, :cond_2

    .line 8967
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldFlingRunnable()Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto :goto_0

    .line 8969
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldFlingRunnable()Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0
.end method

.method static mzOnWindowFocusChanged(Landroid/widget/AbsListView;Z)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 8705
    const/16 v0, 0x3e8

    .line 8706
    .local v0, "MZ_SPRINGBACK_DELAY_DURATION":I
    if-nez p1, :cond_1

    .line 8708
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8709
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8711
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8712
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v1, :cond_1

    .line 8713
    iget-object v1, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8716
    :cond_1
    return-void
.end method

.method static mzPerformLongPress(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .locals 11
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 8719
    iget v5, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    iget v5, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_f

    .line 8721
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->mzIsHeaderOrFooter(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8802
    :cond_1
    :goto_0
    return v6

    .line 8724
    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->mzIsItemSelectable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8728
    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_c

    move v0, v6

    .line 8729
    .local v0, "actionModeStarted":Z
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    .line 8731
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 8732
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8733
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 8736
    :cond_4
    iput p2, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8737
    iput-wide p3, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    .line 8738
    iput-object p1, p0, Landroid/widget/AbsListView;->mCurrentDragChild:Landroid/view/View;

    .line 8739
    iput-object p1, p0, Landroid/widget/AbsListView;->mDragShawdowView:Landroid/view/View;

    .line 8741
    const v5, 0x1020001

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8742
    .local v1, "checkbox":Landroid/view/View;
    if-eqz v1, :cond_6

    instance-of v5, v1, Landroid/widget/Checkable;

    if-eqz v5, :cond_6

    .line 8743
    instance-of v5, v1, Landroid/widget/CheckBox;

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setIsAnimation(Z)V

    :cond_5
    move-object v5, v1

    .line 8744
    check-cast v5, Landroid/widget/Checkable;

    invoke-interface {v5, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 8747
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldTouchFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 8748
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_7

    .line 8749
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->mzSetFieldTouchFrame(Landroid/graphics/Rect;)V

    .line 8750
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldTouchFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 8752
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 8753
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v5, :cond_8

    .line 8754
    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 8755
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 8758
    :cond_8
    iget v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mDragOffsetX:I

    .line 8759
    iget v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mDragOffsetY:I

    .line 8761
    invoke-virtual {p1, v7}, Landroid/view/View;->setActivated(Z)V

    .line 8762
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 8764
    instance-of v5, p1, Lcom/meizu/widget/ListDragShadowItem;

    if-eqz v5, :cond_d

    move-object v3, p1

    .line 8765
    check-cast v3, Lcom/meizu/widget/ListDragShadowItem;

    .line 8766
    .local v3, "item":Lcom/meizu/widget/ListDragShadowItem;
    new-instance v5, Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lcom/meizu/widget/ListDragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v8

    invoke-interface {v3}, Lcom/meizu/widget/ListDragShadowItem;->needBackground()Z

    move-result v9

    invoke-direct {v5, p0, v8, v9}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    .line 8770
    .end local v3    # "item":Lcom/meizu/widget/ListDragShadowItem;
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    .line 8771
    iget-object v5, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    invoke-virtual {p0, v10, v5, p0, v7}, Landroid/widget/AbsListView;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 8772
    if-eqz v1, :cond_9

    instance-of v5, v1, Landroid/widget/Checkable;

    if-eqz v5, :cond_9

    .line 8773
    check-cast v1, Landroid/widget/Checkable;

    .end local v1    # "checkbox":Landroid/view/View;
    invoke-interface {v1, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 8776
    :cond_9
    if-nez v0, :cond_a

    .line 8777
    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    .line 8780
    :cond_a
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 8781
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mDragAndDropId:J

    .line 8783
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldPerformClick()Landroid/widget/AbsListView$PerformClick;

    move-result-object v5

    if-nez v5, :cond_b

    .line 8784
    new-instance v5, Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p0, v10}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->mzSetFieldPerformClick(Landroid/widget/AbsListView$PerformClick;)V

    .line 8788
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldPerformClick()Landroid/widget/AbsListView$PerformClick;

    move-result-object v4

    .line 8789
    .local v4, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput p2, v4, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 8790
    invoke-virtual {v4}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 8791
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 8792
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateViews()V

    goto/16 :goto_0

    .end local v0    # "actionModeStarted":Z
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v4    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_c
    move v0, v7

    .line 8728
    goto/16 :goto_1

    .line 8768
    .restart local v0    # "actionModeStarted":Z
    .restart local v1    # "checkbox":Landroid/view/View;
    .restart local v2    # "frame":Landroid/graphics/Rect;
    :cond_d
    new-instance v5, Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p0, p1}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;-><init>(Landroid/widget/AbsListView;Landroid/view/View;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mShadowBuilder:Landroid/widget/AbsListView$ListViewDragShadowBuilder;

    goto :goto_2

    .line 8796
    :cond_e
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->notifyDragDropAnimType(I)V

    .line 8797
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 8798
    invoke-static {p0, p1, v7}, Landroid/widget/AbsListView$FlymeInjector;->mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto/16 :goto_0

    .end local v0    # "actionModeStarted":Z
    .end local v1    # "checkbox":Landroid/view/View;
    .end local v2    # "frame":Landroid/graphics/Rect;
    :cond_f
    move v6, v7

    .line 8802
    goto/16 :goto_0
.end method

.method static mzPointToPosition(Landroid/widget/AbsListView;)V
    .locals 3
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8806
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldTouchFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 8807
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 8808
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzSetFieldTouchFrame(Landroid/graphics/Rect;)V

    .line 8809
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldTouchFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 8811
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v1, :cond_1

    .line 8812
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 8814
    :cond_1
    return-void
.end method

.method static mzPositionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)Z
    .locals 3
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 8635
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mEnablePressStateOnCheck:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    if-eqz v1, :cond_1

    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->mzIsHeaderOrFooter(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Landroid/widget/AbsListView$FlymeInjector;->mzIsItemCheckable(Landroid/widget/AbsListView;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 8640
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 8641
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 8642
    if-eqz p2, :cond_0

    .line 8643
    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8645
    :cond_0
    const/4 v0, 0x1

    .line 8647
    :cond_1
    return v0
.end method

.method static mzScrollIfNeeded(Landroid/widget/AbsListView;I)I
    .locals 9
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "deltaY"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 8838
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v4

    .line 8839
    .local v4, "scrollY":I
    iget v3, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 8840
    .local v3, "overscrollDistance":I
    move v2, p1

    .line 8841
    .local v2, "incrementalDeltaY":I
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 8842
    mul-int v6, v4, v2

    if-gez v6, :cond_6

    .line 8843
    move v1, v2

    .line 8844
    .local v1, "delta":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8845
    .local v0, "coeff":F
    if-lez v1, :cond_3

    .line 8846
    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    div-float/2addr v6, v7

    sub-float v0, v8, v6

    .line 8847
    cmpg-float v6, v0, v5

    if-gez v6, :cond_0

    move v0, v5

    .line 8848
    :cond_0
    int-to-float v5, v2

    mul-float/2addr v5, v0

    float-to-int v2, v5

    .line 8849
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 8857
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v3, :cond_2

    .line 8858
    const/4 v2, 0x0

    .line 8864
    .end local v0    # "coeff":F
    .end local v1    # "delta":I
    :cond_2
    :goto_1
    return v2

    .line 8851
    .restart local v0    # "coeff":F
    .restart local v1    # "delta":I
    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v3

    div-float/2addr v6, v7

    sub-float v0, v8, v6

    .line 8852
    cmpg-float v6, v0, v5

    if-gez v6, :cond_4

    move v0, v5

    .line 8853
    :cond_4
    int-to-float v5, v2

    mul-float/2addr v5, v0

    float-to-int v2, v5

    .line 8854
    if-nez v2, :cond_5

    const/4 v2, -0x1

    :cond_5
    goto :goto_0

    .line 8861
    .end local v0    # "coeff":F
    .end local v1    # "delta":I
    :cond_6
    div-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method static mzScrollIfNeeded2(Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8895
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsListAtWindowTop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    if-lt v0, v1, :cond_0

    .line 8897
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    .line 8901
    :goto_0
    return-void

    .line 8899
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    goto :goto_0
.end method

.method static mzScrollIfNeeded3(Landroid/widget/AbsListView;I)I
    .locals 7
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "incrementalDeltaY"    # I

    .prologue
    .line 8874
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v3

    .line 8875
    .local v3, "oldScroll":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8876
    .local v0, "childCount":I
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 8877
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8878
    .local v2, "firstView":Landroid/view/View;
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8879
    .local v1, "finalView":Landroid/view/View;
    if-gez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v4

    if-gtz v4, :cond_0

    .line 8880
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_0

    .line 8881
    const/4 p1, 0x1

    .line 8884
    :cond_0
    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v4

    if-ltz v4, :cond_1

    .line 8885
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v4, v5, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    .line 8886
    const/4 p1, -0x1

    .line 8891
    .end local v1    # "finalView":Landroid/view/View;
    .end local v2    # "firstView":Landroid/view/View;
    :cond_1
    return p1
.end method

.method static mzSetChoiceMode(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "choiceMode"    # I

    .prologue
    .line 8532
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 8534
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 8535
    const/4 p1, 0x3

    .line 8539
    :goto_0
    return p1

    .line 8537
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    goto :goto_0
.end method

.method static mzStartScrollIfNeeded(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "alw"    # Landroid/widget/AbsListView;

    .prologue
    .line 8827
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    if-nez v0, :cond_0

    .line 8828
    iget-object v0, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8829
    iget-object v0, p0, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 8832
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInCheckRegion:Z

    if-eqz v0, :cond_1

    .line 8833
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8835
    :cond_1
    return-void
.end method

.method static mzStartScrollIfNeeded2(Landroid/widget/AbsListView;I)Z
    .locals 6
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8817
    iget v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p1, v5

    .line 8818
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 8819
    .local v1, "distance":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldScrollY()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    .line 8820
    .local v2, "overscroll":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->mzGetFieldTouchSlop()I

    move-result v5

    if-gt v1, v5, :cond_1

    .line 8823
    :goto_1
    return v3

    .end local v2    # "overscroll":Z
    :cond_0
    move v2, v3

    .line 8819
    goto :goto_0

    .restart local v2    # "overscroll":Z
    :cond_1
    move v3, v4

    .line 8823
    goto :goto_1
.end method

.method static mzTrackMotionScroll(Landroid/widget/AbsListView;II)V
    .locals 11
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    const/4 v8, 0x1

    .line 9002
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-eqz v9, :cond_1

    if-eqz p2, :cond_1

    .line 9003
    if-gez p2, :cond_2

    move v7, v8

    .line 9004
    .local v7, "up":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 9005
    .local v5, "size":I
    const/4 v1, 0x0

    .line 9006
    .local v1, "child":Landroid/view/View;
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 9007
    .local v6, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v9, v10

    .line 9008
    .local v0, "bottom":I
    const/4 v2, 0x0

    .line 9009
    .local v2, "findNewFocus":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 9010
    .local v3, "focusedChild":Landroid/view/View;
    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 9011
    const/4 v2, 0x1

    .line 9017
    :cond_0
    :goto_1
    if-ne v2, v8, :cond_1

    .line 9018
    if-eqz v7, :cond_5

    .line 9019
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 9020
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9021
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

    .line 9023
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 9039
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

    .line 9003
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 9012
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

    .line 9013
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 9014
    const/4 v2, 0x1

    goto :goto_1

    .line 9019
    .restart local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9028
    .end local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v5, -0x1

    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_1

    .line 9029
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9030
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

    .line 9032
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 9028
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method

.method static mzUpdateDragViewVisibility(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 5
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8560
    if-eqz p1, :cond_1

    .line 8561
    if-eqz p2, :cond_2

    move v0, v3

    .line 8562
    .local v0, "alpha":I
    :goto_0
    instance-of v2, p1, Lcom/meizu/widget/ListDragShadowItem;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 8563
    check-cast v2, Lcom/meizu/widget/ListDragShadowItem;

    invoke-interface {v2}, Lcom/meizu/widget/ListDragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    .line 8564
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 8565
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 8571
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mDragViewhasTransient:Z

    if-nez v2, :cond_1

    .line 8572
    if-nez p2, :cond_4

    .line 8573
    invoke-virtual {p1, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .line 8579
    .end local v0    # "alpha":I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v4

    .line 8561
    goto :goto_0

    .line 8568
    .restart local v0    # "alpha":I
    :cond_3
    int-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 8575
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_2
.end method

.method static mzUpdateOnScreenCheckedViews(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 4
    .param p0, "alw"    # Landroid/widget/AbsListView;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8514
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 8515
    :cond_0
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8516
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 8517
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 8518
    .local v1, "inSelectionMode":Z
    :goto_0
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 8521
    .end local v1    # "inSelectionMode":Z
    :cond_1
    return-void

    .line 8517
    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
