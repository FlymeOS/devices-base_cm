.class Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;
.super Lcom/meizu/widget/GlowImageButton;
.source "MzActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/MzActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 721
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    .line 722
    const v0, 0x10102f6

    invoke-direct {p0, p2, v2, v0}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 720
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 724
    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 725
    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 727
    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 729
    new-instance v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/widget/MzActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 760
    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 761
    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$400(Landroid/widget/MzActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawableSet:Z
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$500(Landroid/widget/MzActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$400(Landroid/widget/MzActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->checkOverFlowButtonSrc(Landroid/content/Context;)V

    .line 765
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    # setter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Landroid/widget/MzActionMenuPresenter;->access$402(Landroid/widget/MzActionMenuPresenter;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 768
    return-void
.end method

.method private checkOverFlowButtonSrc(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 773
    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ImageView:[I

    const v5, 0x10102f6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 775
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 776
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_menu_moreoverflow_material"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 777
    .local v1, "materialIconId":I
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-ne v3, v1, :cond_0

    .line 778
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$drawable;->mz_ic_tab_more_normal_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 780
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 781
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 824
    invoke-super {p0, p1}, Lcom/meizu/widget/GlowImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 825
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 826
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 810
    invoke-super {p0, p1, p2}, Lcom/meizu/widget/GlowImageButton;->onMeasure(II)V

    .line 811
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 786
    invoke-super {p0}, Lcom/meizu/widget/GlowImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    :goto_0
    return v1

    .line 790
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 791
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public restoreDrawable()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$400(Landroid/widget/MzActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 830
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 834
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/widget/GlowImageButton;->setFrame(IIII)Z

    move-result v1

    .line 837
    .local v1, "changed":Z
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 838
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 839
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 840
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 841
    .local v4, "pts":[F
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    .line 842
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 843
    aget v5, v4, v7

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 844
    .local v3, "offset":I
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 847
    .end local v3    # "offset":I
    .end local v4    # "pts":[F
    :cond_0
    return v1
.end method
