.class Landroid/widget/ScrollView$FlymeInjector;
.super Ljava/lang/Object;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initFlymeExtFields(Landroid/widget/ScrollView;)V
    .locals 2
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 2166
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2167
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/flyme/internal/R$dimen;->mz_over_scroll_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->mzSetFieldOverflingDistance(I)V

    .line 2168
    sget v1, Lcom/flyme/internal/R$dimen;->mz_over_scroll_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->mzSetFieldOverscrollDistance(I)V

    .line 2169
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_hold_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    .line 2170
    sget v1, Lcom/flyme/internal/R$dimen;->mz_delay_spring_back_max_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    .line 2171
    new-instance v1, Landroid/widget/ScrollView$MzDelaySpringBack;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$MzDelaySpringBack;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    .line 2172
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    .line 2173
    return-void
.end method

.method static mzComputeScroll1(Landroid/widget/ScrollView;)V
    .locals 1
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 2157
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->mzSetFieldOverflingDistance(I)V

    .line 2158
    return-void

    .line 2157
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldOverflingDistance()I

    move-result v0

    goto :goto_0
.end method

.method static mzComputeScroll2(Landroid/widget/ScrollView;)V
    .locals 1
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 2161
    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldOverscrollDistance()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->mzSetFieldOverflingDistance(I)V

    .line 2162
    return-void
.end method

.method static mzDraw(Landroid/widget/ScrollView;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "scrollView"    # Landroid/widget/ScrollView;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2105
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    if-eqz v1, :cond_0

    .line 2106
    iget v1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldOverscrollDistance()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    invoke-static {v1, v2, v3}, Landroid/widget/ScrollView$FlymeInjector;->mzGetHolderAlphaScale(III)F

    move-result v0

    .line 2107
    .local v0, "alphaScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2108
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    .line 2109
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1, p1}, Lcom/meizu/widget/MzListHoldIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 2112
    .end local v0    # "alphaScale":F
    :cond_0
    return-void
.end method

.method private static mzGetHolderAlphaScale(III)F
    .locals 4
    .param p0, "scrollY"    # I
    .param p1, "overscrollDistance"    # I
    .param p2, "holdDistance"    # I

    .prologue
    const/4 v1, 0x0

    .line 2115
    if-lez p1, :cond_0

    if-nez p0, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return v1

    .line 2118
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2119
    .local v0, "absCurrentOverScrollDistance":I
    if-lt v0, p1, :cond_2

    .line 2120
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2122
    :cond_2
    if-lt v0, p2, :cond_0

    .line 2125
    sub-int v2, v0, p2

    int-to-float v2, v2

    sub-int v3, p1, p2

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2126
    .local v1, "delta":F
    goto :goto_0
.end method

.method static mzOnLayout1(Landroid/widget/ScrollView;)I
    .locals 3
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v0, 0x0

    .line 2130
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2131
    iput v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 2132
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2133
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    .line 2135
    :cond_0
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 2137
    :cond_1
    iput v0, p0, Landroid/widget/ScrollView;->mRestoreOffset:I

    .line 2138
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldIsBeingDragged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 2139
    .local v0, "flag":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 2140
    iget v1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    iput v1, p0, Landroid/widget/ScrollView;->mRestoreOffset:I

    .line 2142
    :cond_4
    iget v1, p0, Landroid/widget/ScrollView;->mRestoreOffset:I

    return v1
.end method

.method static mzOnSizeChanged(Landroid/widget/ScrollView;)V
    .locals 4
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v1, 0x1

    .line 2176
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    if-eqz v2, :cond_0

    .line 2178
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 2179
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 2180
    aget v2, v0, v1

    iget v3, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    if-gt v2, v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    .line 2183
    .end local v0    # "location":[I
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    if-nez v1, :cond_1

    .line 2184
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v1, :cond_1

    .line 2185
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 2188
    :cond_1
    return-void

    .line 2180
    .restart local v0    # "location":[I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static mzOnlayout2(Landroid/widget/ScrollView;)V
    .locals 12
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v1, 0x0

    .line 2146
    iget v0, p0, Landroid/widget/ScrollView;->mRestoreOffset:I

    if-eqz v0, :cond_0

    .line 2147
    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldScrollX()I

    move-result v10

    .line 2148
    .local v10, "oldX":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldmScrollY()I

    move-result v11

    .line 2149
    .local v11, "oldY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetScrollRange()I

    move-result v6

    .line 2150
    .local v6, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mRestoreOffset:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldmScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldOverscrollDistance()I

    move-result v8

    const/4 v9, 0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->mzInvokeMethodOverScrollBy(IIIIIIIIZ)Z

    .line 2152
    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->mzGetFieldmScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v10, v11}, Landroid/widget/ScrollView;->mzInvokeMethodOnScrollChanged(IIII)V

    .line 2154
    .end local v6    # "range":I
    .end local v10    # "oldX":I
    .end local v11    # "oldY":I
    :cond_0
    return-void
.end method
