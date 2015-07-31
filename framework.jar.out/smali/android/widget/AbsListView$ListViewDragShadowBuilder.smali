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


# static fields
.field private static final STATE_ENTER_NORMAL:I = 0x0

.field private static final STATE_ENTER_WARNING:I = 0x1

.field private static final STATE_IDLE:I = -0x1


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
    .line 7700
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7701
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

    iput-object p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput-boolean v10, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    iput-boolean p3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/widget/AbsListView;->mDragViewBackground:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 7709
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7710
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7711
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7712
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 7713
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 7714
    .local v1, "height":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7715
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7716
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7718
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 7719
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7721
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 7722
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7734
    .end local v1    # "height":I
    .end local v4    # "padding":Landroid/graphics/Rect;
    .end local v5    # "width":I
    :goto_1
    iput v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    .line 7735
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 7736
    new-array v2, v11, [I

    .line 7737
    .local v2, "listLocation":[I
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 7739
    new-array v0, v11, [I

    .line 7740
    .local v0, "dragLocation":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7742
    aget v6, v0, v10

    aget v7, v2, v10

    if-ge v6, v7, :cond_1

    .line 7743
    aget v6, v2, v10

    aget v7, v0, v10

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    .line 7744
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 7745
    .local v3, "maxDragScrollY":I
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    .line 7748
    .end local v3    # "maxDragScrollY":I
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7750
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 7751
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7753
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 7754
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v8, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7757
    .end local v0    # "dragLocation":[I
    .end local v2    # "listLocation":[I
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->createBitmapCache()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$color;->mz_drag_shadow_hightlight_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

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
    invoke-virtual {p0}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v4

    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v5, :cond_1

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

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .local v3, "restoreCount":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    goto :goto_0

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

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .local v1, "restoreCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v1    # "restoreCount":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7725
    .line 7792
    :cond_4
    const/4 v0, 0x0

    .line 7793
    .local v0, "filterColor":I
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-nez v2, :cond_7

    .line 7794
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorNormal:I

    .line 7799
    :cond_5
    :goto_2
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    .line 7800
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 7801
    .restart local v1    # "restoreCount":I
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mDragScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7802
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7803
    if-eqz v0, :cond_6

    .line 7804
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7806
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 7795
    .end local v1    # "restoreCount":I
    :cond_7
    iget v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-ne v2, v4, :cond_5

    .line 7796
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mFilterColorWarning:I

    goto :goto_2

    .line 7808
    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7809
    if-eqz v0, :cond_0

    .line 7810
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 7762
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 7763
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7765
    iget-boolean v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 7766
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

    .line 7770
    :goto_0
    return-void

    .line 7768
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
    .line 7822
    iput p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7823
    return-void
.end method
