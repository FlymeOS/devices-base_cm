.class Landroid/widget/ListPopupWindow$FlymeInjector;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustWindowPositionHeight(Landroid/widget/ListPopupWindow;)I
    .locals 3
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2097
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2098
    .local v0, "ignoreBottomDecorations":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->adjustWindowPositionHeightforMz(Z)I

    move-result v1

    return v1

    .line 2097
    .end local v0    # "ignoreBottomDecorations":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static initExtFlymeFields(Landroid/widget/ListPopupWindow;)V
    .locals 2
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2040
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ListPopupWindow;->mMzMaxHeight:I

    .line 2041
    return-void
.end method

.method static isKeepInputMethodNeeded(Landroid/widget/ListPopupWindow;)Z
    .locals 1
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2058
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mMzKeepInputMethodNeeded:Z

    return v0
.end method

.method static mzBuildDropDown(Landroid/widget/ListPopupWindow;)V
    .locals 6
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;

    .prologue
    const/4 v5, 0x0

    .line 2072
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mMzListViewPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2073
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldDropDownList()Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mMzListViewPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mMzListViewPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mMzListViewPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mMzListViewPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setPaddingRelative(IIII)V

    .line 2074
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldDropDownList()Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->measure(II)V

    .line 2077
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mMzHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2078
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldDropDownList()Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mMzHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2081
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldDropDownList()Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setOverScrollMode(I)V

    .line 2083
    return-void
.end method

.method static mzBuildDropDown2(Landroid/widget/ListPopupWindow;)V
    .locals 2
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2086
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2088
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2089
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldDropDownVerticalOffsetSet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ListPopupWindow;->mMzAdjustWindowPosition:Z

    if-eqz v1, :cond_0

    .line 2090
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->mzSetFieldDropDownVerticalOffset(I)V

    .line 2094
    :cond_0
    return-void
.end method

.method static mzSetHorizontalOffset(Landroid/widget/ListPopupWindow;)V
    .locals 1
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2044
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->adjustWindowPositionForMz(Z)V

    .line 2045
    return-void
.end method

.method static mzSetSelection(Landroid/widget/ListPopupWindow;I)V
    .locals 2
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;
    .param p1, "position"    # I

    .prologue
    .line 2063
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldDropDownList()Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2065
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldDropDownList()Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    iget v1, p0, Landroid/widget/ListPopupWindow;->mMzContentHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelectionFromTop(II)V

    .line 2068
    :cond_0
    return-void
.end method

.method static mzSetVerticalOffset(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2048
    invoke-static {p0}, Landroid/widget/ListPopupWindow$FlymeInjector;->mzSetHorizontalOffset(Landroid/widget/ListPopupWindow;)V

    .line 2049
    return-void
.end method

.method static mzShow(Landroid/widget/ListPopupWindow;I)V
    .locals 2
    .param p0, "lpw"    # Landroid/widget/ListPopupWindow;
    .param p1, "height"    # I

    .prologue
    .line 2053
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldTempRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->mzGetFieldTempRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/widget/ListPopupWindow;->mMzContentHeight:I

    .line 2055
    return-void

    .line 2053
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
