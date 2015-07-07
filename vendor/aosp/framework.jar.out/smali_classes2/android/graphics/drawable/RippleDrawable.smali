.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$1;,
        Landroid/graphics/drawable/RippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final DST_IN:Landroid/graphics/PorterDuffXfermode;

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1

.field private static final SRC_ATOP:Landroid/graphics/PorterDuffXfermode;

.field private static final SRC_OVER:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mBackground:Landroid/graphics/drawable/RippleBackground;

.field private mBackgroundActive:Z

.field private mDensity:F

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Landroid/graphics/drawable/Ripple;

.field private mExitingRipplesCount:I

.field private mHasPending:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskingPaint:Landroid/graphics/Paint;

.field private mNeedsDraw:Z

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field private mRipple:Landroid/graphics/drawable/Ripple;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Landroid/graphics/drawable/RippleDrawable;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    .line 92
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Landroid/graphics/drawable/RippleDrawable;->SRC_ATOP:Landroid/graphics/PorterDuffXfermode;

    .line 93
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Landroid/graphics/drawable/RippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 183
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v2, v2, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v2, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    .line 190
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 193
    :cond_1
    if-eqz p3, :cond_2

    .line 194
    const v7, 0x102002e

    move-object v4, p0

    move-object v5, p3

    move-object v6, v2

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 197
    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 198
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 199
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 971
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 106
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 112
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 145
    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 154
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    .line 972
    const/4 v0, 0x0

    .line 975
    .local v0, "needsTheme":Z
    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 976
    new-instance v1, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v1, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    .line 977
    .local v1, "ns":Landroid/graphics/drawable/RippleDrawable$RippleState;
    const/4 v0, 0x1

    .line 987
    :goto_0
    if-eqz p2, :cond_0

    .line 988
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    .line 991
    :cond_0
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 992
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 994
    iget v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNum:I

    if-lez v2, :cond_1

    .line 995
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 998
    :cond_1
    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/RippleDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1002
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    .line 1003
    return-void

    .line 978
    .end local v1    # "ns":Landroid/graphics/drawable/RippleDrawable$RippleState;
    :cond_3
    if-nez p1, :cond_4

    .line 979
    new-instance v1, Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    .restart local v1    # "ns":Landroid/graphics/drawable/RippleDrawable$RippleState;
    goto :goto_0

    .line 984
    .end local v1    # "ns":Landroid/graphics/drawable/RippleDrawable$RippleState;
    :cond_4
    new-instance v1, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v1, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    .restart local v1    # "ns":Landroid/graphics/drawable/RippleDrawable$RippleState;
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/graphics/drawable/RippleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/content/res/Resources$Theme;
    .param p4, "x3"    # Landroid/graphics/drawable/RippleDrawable$1;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method private cancelExitingRipples()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, "needsDraw":Z
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 228
    .local v0, "count":I
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 229
    .local v3, "ripples":[Landroid/graphics/drawable/Ripple;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 230
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Ripple;->isHardwareAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 231
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    if-eqz v3, :cond_1

    .line 235
    const/4 v4, 0x0

    invoke-static {v3, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 237
    :cond_1
    iput v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 239
    return v2
.end method

.method private clearHotspots()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    const/4 v0, 0x0

    .line 561
    .local v0, "needsDraw":Z
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v1}, Landroid/graphics/drawable/Ripple;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 563
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v1}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 564
    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .line 567
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 569
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->cancel()V

    .line 570
    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 573
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()Z

    move-result v1

    or-int/2addr v0, v1

    .line 575
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mNeedsDraw:Z

    .line 576
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 577
    return-void
.end method

.method private drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;Z)I
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;
    .param p4, "drawMask"    # Z

    .prologue
    .line 747
    const/4 v6, -0x1

    .line 749
    .local v6, "saveCount":I
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->shouldDraw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    if-nez p4, :cond_0

    sget-object v0, Landroid/graphics/drawable/RippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    if-eq p3, v0, :cond_1

    .line 753
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    invoke-direct {p0, p3}, Landroid/graphics/drawable/RippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v6

    .line 757
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 758
    .local v7, "x":F
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 759
    .local v8, "y":F
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 760
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 761
    neg-float v0, v7

    neg-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 764
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_2
    return v6
.end method

.method private drawContentLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;

    .prologue
    const v11, 0x102002e

    const/4 v10, -0x1

    .line 715
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 716
    .local v6, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 720
    .local v7, "count":I
    const/4 v9, 0x0

    .line 721
    .local v9, "needsLayer":Z
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 722
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 723
    aget-object v0, v6, v8

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-eq v0, v11, :cond_4

    aget-object v0, v6, v8

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 725
    const/4 v9, 0x1

    .line 731
    .end local v8    # "i":I
    :cond_1
    invoke-direct {p0, p3}, Landroid/graphics/drawable/RippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v5

    .line 732
    .local v5, "maskingPaint":Landroid/graphics/Paint;
    if-eqz v9, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v10

    .line 736
    .local v10, "restoreToCount":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 737
    aget-object v0, v6, v8

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-eq v0, v11, :cond_3

    .line 738
    aget-object v0, v6, v8

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 736
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 722
    .end local v5    # "maskingPaint":Landroid/graphics/Paint;
    .end local v10    # "restoreToCount":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 742
    .restart local v5    # "maskingPaint":Landroid/graphics/Paint;
    .restart local v10    # "restoreToCount":I
    :cond_5
    return v10
.end method

.method private drawMaskingLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;

    .prologue
    .line 821
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    invoke-direct {p0, p3}, Landroid/graphics/drawable/RippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v6

    .line 825
    .local v6, "restoreToCount":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 827
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 829
    return v6
.end method

.method private drawRippleLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;

    .prologue
    .line 768
    const/4 v11, 0x0

    .line 769
    .local v11, "drewRipples":Z
    const/4 v13, -0x1

    .line 770
    .local v13, "restoreToCount":I
    const/4 v14, -0x1

    .line 773
    .local v14, "restoreTranslate":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 774
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    move-object/from16 v16, v0

    .line 775
    .local v16, "ripples":[Landroid/graphics/drawable/Ripple;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-gt v12, v10, :cond_3

    .line 777
    if-ge v12, v10, :cond_2

    .line 778
    aget-object v15, v16, v12

    .line 787
    .local v15, "ripple":Landroid/graphics/drawable/Ripple;
    :goto_1
    if-gez v13, :cond_0

    .line 788
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v7

    .line 789
    .local v7, "maskingPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v2, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 790
    .local v9, "color":I
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 791
    .local v8, "alpha":I
    div-int/lit8 v2, v8, 0x2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 795
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v13

    .line 799
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 803
    .end local v7    # "maskingPaint":Landroid/graphics/Paint;
    .end local v8    # "alpha":I
    .end local v9    # "color":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v2}, Landroid/graphics/drawable/Ripple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v2

    or-int/2addr v11, v2

    .line 775
    .end local v15    # "ripple":Landroid/graphics/drawable/Ripple;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 779
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v2, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .restart local v15    # "ripple":Landroid/graphics/drawable/Ripple;
    goto :goto_1

    .line 807
    .end local v15    # "ripple":Landroid/graphics/drawable/Ripple;
    :cond_3
    if-ltz v14, :cond_4

    .line 808
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 812
    :cond_4
    if-ltz v13, :cond_5

    if-nez v11, :cond_5

    .line 813
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 814
    const/4 v13, -0x1

    .line 817
    :cond_5
    return v13
.end method

.method private getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "xfermode"    # Landroid/graphics/PorterDuffXfermode;

    .prologue
    .line 841
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    .line 844
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 845
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 846
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getRippleIndex(Landroid/graphics/drawable/Ripple;)I
    .locals 4
    .param p1, "ripple"    # Landroid/graphics/drawable/Ripple;

    .prologue
    .line 704
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 705
    .local v2, "ripples":[Landroid/graphics/drawable/Ripple;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 706
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 707
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 711
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 706
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 835
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 837
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private initializeFromState()V
    .locals 1

    .prologue
    .line 1007
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 1008
    return-void
.end method

.method private onHotspotBoundsChanged()V
    .locals 4

    .prologue
    .line 597
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 598
    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 599
    .local v2, "ripples":[Landroid/graphics/drawable/Ripple;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 600
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Ripple;->onHotspotBoundsChanged()V

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v3, :cond_1

    .line 604
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v3}, Landroid/graphics/drawable/Ripple;->onHotspotBoundsChanged()V

    .line 607
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v3, :cond_2

    .line 608
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    .line 610
    :cond_2
    return-void
.end method

.method private setBackgroundActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eq v0, p1, :cond_0

    .line 301
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    .line 302
    if-eqz p1, :cond_1

    .line 303
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundExit()V

    goto :goto_0
.end method

.method private setRippleActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 289
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_0

    .line 290
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    .line 291
    if-eqz p1, :cond_1

    .line 292
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_0
.end method

.method private setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 443
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 444
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    .line 445
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 447
    :cond_0
    return-void
.end method

.method private tryBackgroundEnter()V
    .locals 4

    .prologue
    .line 493
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v1, :cond_0

    .line 494
    new-instance v1, Landroid/graphics/drawable/RippleBackground;

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v1, p0, v2}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 497
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 498
    .local v0, "color":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v2, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleBackground;->setup(IIF)V

    .line 499
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->enter()V

    .line 500
    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->exit()V

    .line 507
    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 514
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 537
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-nez v3, :cond_1

    .line 523
    iget-boolean v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v3, :cond_2

    .line 524
    iput-boolean v5, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 525
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 526
    .local v1, "x":F
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 531
    .local v2, "y":F
    :goto_1
    new-instance v3, Landroid/graphics/drawable/Ripple;

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v3, p0, v4, v1, v2}, Landroid/graphics/drawable/Ripple;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FF)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .line 534
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 535
    .local v0, "color":I
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iget v5, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v3, v4, v0, v5}, Landroid/graphics/drawable/Ripple;->setup(IIF)V

    .line 536
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v3}, Landroid/graphics/drawable/Ripple;->enter()V

    goto :goto_0

    .line 528
    .end local v0    # "color":I
    :cond_2
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 529
    .restart local v1    # "x":F
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .restart local v2    # "y":F
    goto :goto_1
.end method

.method private tryRippleExit()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    if-nez v0, :cond_0

    .line 546
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Ripple;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    aput-object v2, v0, v1

    .line 549
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0}, Landroid/graphics/drawable/Ripple;->exit()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .line 552
    :cond_1
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 416
    .local v1, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    .line 419
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 421
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 422
    .local v0, "color":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 423
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 426
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 427
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 432
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 453
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 454
    .local v2, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-nez v3, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 461
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 468
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 473
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object v0

    return-object v0
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 901
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 633
    iget-object v11, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    move v5, v9

    .line 634
    .local v5, "hasMask":Z
    :goto_0
    iget-object v11, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v12, v11, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    if-eqz v5, :cond_7

    move v11, v9

    :goto_1
    if-le v12, v11, :cond_8

    move v4, v9

    .line 635
    .local v4, "drawNonMaskContent":Z
    :goto_2
    if-eqz v5, :cond_9

    iget-object v11, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    move v3, v9

    .line 636
    .local v3, "drawMask":Z
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 637
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->save(I)I

    move-result v7

    .line 638
    .local v7, "saveCount":I
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 642
    if-eqz v4, :cond_a

    .line 643
    sget-object v9, Landroid/graphics/drawable/RippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, v1, v9}, Landroid/graphics/drawable/RippleDrawable;->drawContentLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I

    move-result v2

    .line 650
    .local v2, "contentLayer":I
    :goto_4
    if-nez v5, :cond_0

    if-nez v4, :cond_b

    :cond_0
    sget-object v8, Landroid/graphics/drawable/RippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    .line 653
    .local v8, "xfermode":Landroid/graphics/PorterDuffXfermode;
    :goto_5
    invoke-direct {p0, p1, v1, v8, v3}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;Z)I

    move-result v0

    .line 654
    .local v0, "backgroundLayer":I
    if-ltz v0, :cond_2

    .line 655
    if-eqz v3, :cond_1

    .line 656
    sget-object v9, Landroid/graphics/drawable/RippleDrawable;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, v1, v9}, Landroid/graphics/drawable/RippleDrawable;->drawMaskingLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I

    .line 658
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 662
    :cond_2
    invoke-direct {p0, p1, v1, v8}, Landroid/graphics/drawable/RippleDrawable;->drawRippleLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I

    move-result v6

    .line 663
    .local v6, "rippleLayer":I
    if-ltz v6, :cond_4

    .line 664
    if-eqz v3, :cond_3

    .line 665
    sget-object v9, Landroid/graphics/drawable/RippleDrawable;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, v1, v9}, Landroid/graphics/drawable/RippleDrawable;->drawMaskingLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I

    .line 667
    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 672
    :cond_4
    if-gez v2, :cond_5

    if-gez v0, :cond_5

    if-gez v6, :cond_5

    iget-boolean v9, p0, Landroid/graphics/drawable/RippleDrawable;->mNeedsDraw:Z

    if-eqz v9, :cond_5

    .line 673
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 677
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 679
    :cond_5
    iput-boolean v10, p0, Landroid/graphics/drawable/RippleDrawable;->mNeedsDraw:Z

    .line 681
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 682
    return-void

    .end local v0    # "backgroundLayer":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "contentLayer":I
    .end local v3    # "drawMask":Z
    .end local v4    # "drawNonMaskContent":Z
    .end local v5    # "hasMask":Z
    .end local v6    # "rippleLayer":I
    .end local v7    # "saveCount":I
    .end local v8    # "xfermode":Landroid/graphics/PorterDuffXfermode;
    :cond_6
    move v5, v10

    .line 633
    goto :goto_0

    .restart local v5    # "hasMask":Z
    :cond_7
    move v11, v10

    .line 634
    goto :goto_1

    :cond_8
    move v4, v10

    goto :goto_2

    .restart local v4    # "drawNonMaskContent":Z
    :cond_9
    move v3, v10

    .line 635
    goto :goto_3

    .line 645
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v3    # "drawMask":Z
    .restart local v7    # "saveCount":I
    :cond_a
    const/4 v2, -0x1

    .restart local v2    # "contentLayer":I
    goto :goto_4

    .line 650
    :cond_b
    sget-object v8, Landroid/graphics/drawable/RippleDrawable;->SRC_ATOP:Landroid/graphics/PorterDuffXfermode;

    goto :goto_5
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->isProjected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 852
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 853
    .local v6, "drawingBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 854
    .local v5, "dirtyBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 855
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 857
    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    float-to-int v3, v9

    .line 858
    .local v3, "cX":I
    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-int v4, v9

    .line 859
    .local v4, "cY":I
    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 861
    .local v8, "rippleBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 862
    .local v1, "activeRipples":[Landroid/graphics/drawable/Ripple;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 863
    .local v0, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 864
    aget-object v9, v1, v7

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Ripple;->getBounds(Landroid/graphics/Rect;)V

    .line 865
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 866
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 863
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 869
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 870
    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    if-eqz v2, :cond_1

    .line 871
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    .line 872
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 873
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 876
    :cond_1
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 877
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 880
    .end local v0    # "N":I
    .end local v1    # "activeRipples":[Landroid/graphics/drawable/Ripple;
    .end local v2    # "background":Landroid/graphics/drawable/RippleBackground;
    .end local v3    # "cX":I
    .end local v4    # "cY":I
    .end local v5    # "dirtyBounds":Landroid/graphics/Rect;
    .end local v6    # "drawingBounds":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v8    # "rippleBounds":Landroid/graphics/Rect;
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_1
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 590
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 591
    return-void
.end method

.method public getMaxRadius()I
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 620
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 621
    .local v3, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 622
    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 623
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 624
    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_1

    .line 625
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 626
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 629
    :cond_0
    return-void

    .line 623
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v1, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 365
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 366
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 369
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    .line 371
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 373
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 374
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->initializeFromState()V

    .line 375
    return-void
.end method

.method public isProjected()Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "needsDraw":Z
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v1}, Landroid/graphics/drawable/Ripple;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 210
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v1}, Landroid/graphics/drawable/Ripple;->jump()V

    .line 213
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 215
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->jump()V

    .line 218
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()Z

    move-result v1

    or-int/2addr v0, v1

    .line 220
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mNeedsDraw:Z

    .line 221
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 222
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 891
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 895
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 896
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 314
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 316
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 320
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 264
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v1

    .line 266
    .local v1, "changed":Z
    const/4 v2, 0x0

    .line 267
    .local v2, "enabled":Z
    const/4 v6, 0x0

    .line 268
    .local v6, "pressed":Z
    const/4 v3, 0x0

    .line 270
    .local v3, "focused":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget v7, v0, v4

    .line 271
    .local v7, "state":I
    const v8, 0x101009e

    if-ne v7, v8, :cond_0

    .line 272
    const/4 v2, 0x1

    .line 274
    :cond_0
    const v8, 0x101009c

    if-ne v7, v8, :cond_1

    .line 275
    const/4 v3, 0x1

    .line 277
    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    .line 278
    const/4 v6, 0x1

    .line 270
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    .end local v7    # "state":I
    :cond_3
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    move v8, v9

    :goto_1
    invoke-direct {p0, v8}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    .line 283
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    :cond_4
    move v10, v9

    :cond_5
    invoke-direct {p0, v10}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(Z)V

    .line 285
    return v1

    :cond_6
    move v8, v10

    .line 282
    goto :goto_1
.end method

.method removeRipple(Landroid/graphics/drawable/Ripple;)V
    .locals 5
    .param p1, "ripple"    # Landroid/graphics/drawable/Ripple;

    .prologue
    .line 691
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 692
    .local v2, "ripples":[Landroid/graphics/drawable/Ripple;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 693
    .local v0, "count":I
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->getRippleIndex(Landroid/graphics/drawable/Ripple;)I

    move-result v1

    .line 694
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 695
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    sub-int v4, v0, v4

    invoke-static {v2, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 697
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 699
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 701
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    .line 247
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 358
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 359
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 254
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const v0, 0x102002e

    if-ne p1, v0, :cond_0

    .line 381
    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 384
    :cond_0
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 478
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_1

    .line 479
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 480
    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 484
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Ripple;->move(FF)V

    .line 487
    :cond_2
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    .line 582
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 584
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 585
    return-void
.end method

.method public setMaxRadius(I)V
    .locals 2
    .param p1, "maxRadius"    # I

    .prologue
    .line 954
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    .line 955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRadius must be RADIUS_AUTO or >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 959
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 407
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 326
    .local v0, "changed":Z
    if-nez p1, :cond_1

    .line 327
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    if-eqz v0, :cond_0

    .line 331
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_2

    .line 332
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    .line 335
    :cond_2
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz v1, :cond_0

    .line 336
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter()V

    goto :goto_0
.end method
