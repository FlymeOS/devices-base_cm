.class public Lcom/android/internal/widget/MzActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;,
        Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;,
        Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR_DARK:I = 0x1

.field public static final BACKGROUND_COLOR_TRANSPARENT:I = 0x0

.field public static final BACKGROUND_COLOR_UNKNOWN:I = 0x2

.field public static final BACKGROUND_COLOR_WHITE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MzActionBarContainer"

.field private static final sDirtyField:Ljava/lang/reflect/Field;


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mActionContextView:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundColor:I

.field private mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeight:I

.field private mIdentifyHandle:Landroid/os/Handler;

.field private mIsNeedToIdentify:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOrientatinPortrait:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSplitBackgroundColor:I

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/android/internal/widget/MzActionBarContainer;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/MzActionBarContainer;->sDirtyField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I

    .line 78
    iput v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I

    .line 80
    new-instance v3, Lcom/android/internal/widget/MzActionBarContainer$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MzActionBarContainer$1;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIdentifyHandle:Landroid/os/Handler;

    .line 101
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;

    .line 103
    new-instance v3, Lcom/android/internal/widget/MzActionBarContainer$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MzActionBarContainer$2;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 122
    new-instance v3, Lcom/android/internal/widget/MzActionBarContainer$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MzActionBarContainer$3;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 745
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsNeedToIdentify:Z

    .line 137
    new-instance v3, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/widget/MzActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/MzActionBarContainer;Lcom/android/internal/widget/MzActionBarContainer$1;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MzActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    sget-object v3, Landroid/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 142
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 144
    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHeight:I

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getId()I

    move-result v3

    const v4, 0x102037d

    if-ne v3, v4, :cond_0

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    .line 148
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    iget-boolean v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->setWillNotDraw(Z)V

    .line 157
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->initView()V

    .line 158
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->identifyBackgroundColor()V

    .line 160
    return-void

    :cond_2
    move v1, v2

    .line 153
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MzActionBarContainer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MzActionBarContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/MzActionBarContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsStacked:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/internal/widget/MzActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->checkBackgroundColor(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIdentifyHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/MzActionBarContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/MzActionBarContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/MzActionBarContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/widget/MzActionBarContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/widget/MzActionBarContainer;->sDirtyField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private checkBackgroundColor(Landroid/graphics/Bitmap;)I
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 711
    if-nez p1, :cond_1

    move v3, v4

    .line 729
    :cond_0
    :goto_0
    return v3

    .line 713
    :cond_1
    const/4 v3, 0x1

    .line 714
    .local v3, "isDarkenBackground":I
    const/4 v5, 0x4

    new-array v0, v5, [I

    .line 715
    .local v0, "argb":[I
    new-array v2, v9, [F

    .line 717
    .local v2, "hsv":[F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 718
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    aput v5, v0, v4

    .line 719
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    aput v5, v0, v7

    .line 720
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    aput v5, v0, v8

    .line 721
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    aput v5, v0, v9

    .line 722
    aget v5, v0, v4

    if-nez v5, :cond_2

    move v3, v4

    .line 723
    goto :goto_0

    .line 725
    :cond_2
    aget v4, v0, v7

    aget v5, v0, v8

    aget v6, v0, v9

    invoke-static {v4, v5, v6, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 726
    aget v4, v2, v7

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    aget v4, v2, v8

    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 727
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 677
    if-nez p1, :cond_0

    .line 678
    const/4 v0, 0x0

    .line 700
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 680
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 681
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 683
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 684
    .local v5, "savedBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 685
    .local v4, "maxHeight":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 686
    .local v3, "defaultWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v6

    if-nez v6, :cond_4

    .end local v4    # "maxHeight":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 687
    .local v2, "defaultHeight":I
    if-gtz v3, :cond_2

    .line 688
    const/16 v3, 0x32

    .line 690
    :cond_2
    if-gtz v2, :cond_3

    .line 691
    const/16 v2, 0x32

    .line 693
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    invoke-static {v3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 696
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 697
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v8, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 698
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 699
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 686
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "defaultHeight":I
    .restart local v4    # "maxHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v4

    goto :goto_1

    .line 693
    .end local v4    # "maxHeight":I
    .restart local v2    # "defaultHeight":I
    :cond_5
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2
.end method

.method private static getField()Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    .line 612
    :try_start_0
    const-string v2, "android.view.ViewRootImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mDirty"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 614
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 616
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 389
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private identifyBackgroundColor()V
    .locals 4

    .prologue
    .line 640
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsNeedToIdentify:Z

    if-nez v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 642
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 645
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;-><init>(Lcom/android/internal/widget/MzActionBarContainer;Lcom/android/internal/widget/MzActionBarContainer$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 623
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 624
    return-void

    .line 623
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    .line 595
    if-eqz p1, :cond_2

    .line 596
    instance-of v2, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1

    .line 597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    if-ge v0, v2, :cond_2

    move-object v2, p1

    .line 598
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 599
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 607
    .end local v0    # "i":I
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :goto_1
    return v2

    .line 597
    .restart local v0    # "i":I
    .restart local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    .end local v0    # "i":I
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.meizu.common.drawble.BlurDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 604
    goto :goto_1

    .line 607
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 384
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOnAfterIdentifyBackgroundListener(Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 291
    :cond_2
    return-void
.end method

.method protected getSplitBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 305
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 554
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 555
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 556
    .local v0, "hasBlurDrawable":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->registerViewTreeObserver(Z)V

    .line 557
    return-void

    .line 555
    .end local v0    # "hasBlurDrawable":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 630
    iget v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    if-eqz v0, :cond_2

    .line 632
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->identifyBackgroundColor()V

    .line 634
    :cond_2
    return-void

    .line 629
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 561
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->registerViewTreeObserver(Z)V

    .line 563
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 165
    const v0, 0x102037b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 166
    const v0, 0x102037c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/widget/MzAbsActionBarView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MzAbsActionBarView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->addOnAfterIdentifyBackgroundListener(Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 425
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 427
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 428
    .local v4, "tabContainer":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    const/4 v1, 0x1

    .line 430
    .local v1, "hasTabs":Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v0

    .line 432
    .local v0, "containerHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 433
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 434
    .local v5, "tabHeight":I
    sub-int v6, v0, v5

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v7, v0, v7

    invoke-virtual {v4, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 438
    .end local v0    # "containerHeight":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_0
    const/4 v3, 0x0

    .line 439
    .local v3, "needsInvalidate":Z
    iget-boolean v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v6, :cond_4

    .line 440
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 441
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 442
    const/4 v3, 0x1

    .line 474
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->invalidate()V

    .line 477
    :cond_2
    return-void

    .line 428
    .end local v1    # "hasTabs":Z
    .end local v3    # "needsInvalidate":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 445
    .restart local v1    # "hasTabs":Z
    .restart local v3    # "needsInvalidate":Z
    :cond_4
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 446
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 450
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    :goto_2
    const/4 v3, 0x1

    .line 466
    :cond_5
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsStacked:Z

    .line 467
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 468
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 470
    const/4 v3, 0x1

    goto :goto_1

    .line 453
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 458
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 462
    :cond_7
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    .line 394
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v8, :cond_0

    iget v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHeight:I

    if-ltz v6, :cond_0

    .line 396
    iget v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 399
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 401
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_2

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 404
    const/4 v5, 0x0

    .line 405
    .local v5, "nonTabMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getChildCount()I

    move-result v1

    .line 406
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 407
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v0, v6, :cond_3

    .line 406
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    :cond_3
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    goto :goto_3

    .line 414
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 415
    .local v4, "mode":I
    if-ne v4, v8, :cond_6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 417
    .local v3, "maxHeight":I
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/MzActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 415
    .end local v3    # "maxHeight":I
    :cond_6
    const v3, 0x7fffffff

    goto :goto_4
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 322
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public registerViewTreeObserver(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 570
    if-eqz p1, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 576
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 587
    :cond_1
    :goto_0
    return-void

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 584
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public setIsNeedToIdentify(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 748
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsNeedToIdentify:Z

    .line 749
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 175
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MzActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 178
    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 186
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 187
    .local v1, "tempView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mActionContextView:Landroid/view/View;

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    .end local v1    # "tempView":Landroid/view/View;
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->setWillNotDraw(Z)V

    .line 200
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 201
    .local v0, "hasBlurDrawable":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->registerViewTreeObserver(Z)V

    .line 204
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I

    .line 205
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->identifyBackgroundColor()V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->invalidate()V

    .line 209
    return-void

    .end local v0    # "hasBlurDrawable":Z
    :cond_4
    move v2, v3

    .line 195
    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 239
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MzActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 242
    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 244
    iget-boolean v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->setWillNotDraw(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 254
    .local v0, "hasBlurDrawable":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->registerViewTreeObserver(Z)V

    .line 257
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I

    .line 258
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->identifyBackgroundColor()V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->invalidate()V

    .line 262
    return-void

    .end local v0    # "hasBlurDrawable":Z
    :cond_3
    move v1, v2

    .line 248
    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MzActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 217
    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    iget-boolean v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsStacked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->setWillNotDraw(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 230
    .local v0, "hasBlurDrawable":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->registerViewTreeObserver(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->invalidate()V

    .line 234
    return-void

    .end local v0    # "hasBlurDrawable":Z
    :cond_3
    move v1, v2

    .line 224
    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/MzScrollingTabContainerView;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->removeView(Landroid/view/View;)V

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 364
    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->addView(Landroid/view/View;)V

    .line 366
    invoke-virtual {p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 367
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 368
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 369
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 371
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsTransitioning:Z

    .line 334
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setDescendantFocusability(I)V

    .line 336
    return-void

    .line 334
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 267
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 268
    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 271
    :cond_2
    return-void

    .end local v0    # "isVisible":Z
    :cond_3
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
