.class Landroid/widget/AbsListView$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mBitmapCache:Landroid/graphics/Bitmap;

.field private mDragScrollY:I

.field private mFilterColorNormal:I

.field private mFilterColorWarning:I

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 7629
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7630
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "needBg"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 7632
    iput-object p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    .line 7633
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 7619
    iput-boolean v10, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7623
    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    .line 7624
    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    .line 7751
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7634
    iput-boolean p3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7635
    if-nez p2, :cond_0

    .line 7691
    :goto_0
    return-void

    .line 7636
    :cond_0
    if-eqz p3, :cond_5

    .line 7637
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/widget/AbsListView;->mDragViewBackground:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 7638
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7639
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7640
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7641
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 7642
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 7643
    .local v1, "height":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7644
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7645
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7647
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 7648
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7650
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 7651
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7663
    .end local v1    # "height":I
    .end local v4    # "padding":Landroid/graphics/Rect;
    .end local v5    # "width":I
    :goto_1
    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    .line 7664
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 7665
    new-array v2, v11, [I

    .line 7666
    .local v2, "listLocation":[I
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 7668
    new-array v0, v11, [I

    .line 7669
    .local v0, "dragLocation":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7671
    aget v6, v0, v10

    aget v7, v2, v10

    if-ge v6, v7, :cond_1

    .line 7672
    aget v6, v2, v10

    aget v7, v0, v10

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    .line 7673
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 7674
    .local v3, "maxDragScrollY":I
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    .line 7677
    .end local v3    # "maxDragScrollY":I
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7679
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 7680
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7682
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 7683
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7685
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 7686
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7690
    .end local v0    # "dragLocation":[I
    .end local v2    # "listLocation":[I
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->createBitmapCache()V

    goto/16 :goto_0

    .line 7654
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7655
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7657
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$color;->mz_drag_shadow_hightlight_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    .line 7659
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$color;->mz_drag_shadow_hightlight_warning:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    goto/16 :goto_1
.end method

.method private createBitmapCache()V
    .locals 8

    .prologue
    .line 7758
    invoke-virtual {p0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v4

    .line 7759
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 7788
    :goto_0
    return-void

    .line 7763
    :cond_0
    const/4 v0, 0x0

    .line 7766
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v5, :cond_1

    .line 7767
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    iget-object v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7774
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7780
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7781
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 7782
    .local v3, "restoreCount":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7783
    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7784
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7785
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7787
    iput-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 7771
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "restoreCount":I
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 7776
    :catch_0
    move-exception v2

    .line 7777
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 7707
    const/4 v0, 0x0

    .line 7708
    .local v0, "STATE_ENTER_NORMAL":I
    const/4 v1, 0x1

    .line 7709
    .local v1, "STATE_ENTER_WARNING":I
    iget-boolean v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v4, :cond_4

    .line 7710
    iget v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v4, v0, :cond_1

    .line 7711
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7718
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 7719
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 7720
    .local v3, "restoreCount":I
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7721
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7722
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7749
    .end local v3    # "restoreCount":I
    :cond_0
    :goto_1
    return-void

    .line 7712
    :cond_1
    iget v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v4, v1, :cond_2

    .line 7713
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 7715
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 7724
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    iget-object v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7727
    :cond_4
    const/4 v2, 0x0

    .line 7728
    .local v2, "filterColor":I
    iget v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v4, v0, :cond_7

    .line 7729
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    .line 7734
    :cond_5
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    .line 7735
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 7736
    .restart local v3    # "restoreCount":I
    iget v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7737
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7738
    if-eqz v2, :cond_6

    .line 7739
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7741
    :cond_6
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 7730
    .end local v3    # "restoreCount":I
    :cond_7
    iget v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v4, v1, :cond_5

    .line 7731
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    goto :goto_2

    .line 7743
    :cond_8
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v5, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7744
    if-eqz v2, :cond_0

    .line 7745
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 7695
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 7696
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7698
    iget-boolean v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 7699
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mDragOffsetX:I

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mDragOffsetY:I

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7703
    :goto_0
    return-void

    .line 7701
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mDragOffsetX:I

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mDragOffsetY:I

    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 7754
    iput p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7755
    return-void
.end method
