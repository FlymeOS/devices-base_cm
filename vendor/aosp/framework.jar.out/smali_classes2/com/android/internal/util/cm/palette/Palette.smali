.class public final Lcom/android/internal/util/cm/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/palette/Palette$Swatch;,
        Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field private static final CALCULATE_BITMAP_MIN_DIMENSION:I = 0x64

.field private static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field private static final MAX_DARK_LUMA:F = 0.45f

.field private static final MAX_MUTED_SATURATION:F = 0.4f

.field private static final MAX_NORMAL_LUMA:F = 0.7f

.field private static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field private static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f

.field private static final MIN_LIGHT_LUMA:F = 0.55f

.field private static final MIN_NORMAL_LUMA:F = 0.3f

.field private static final MIN_VIBRANT_SATURATION:F = 0.35f

.field private static final TARGET_DARK_LUMA:F = 0.26f

.field private static final TARGET_LIGHT_LUMA:F = 0.74f

.field private static final TARGET_MUTED_SATURATION:F = 0.3f

.field private static final TARGET_NORMAL_LUMA:F = 0.5f

.field private static final TARGET_VIBRANT_SATURATION:F = 1.0f

.field private static final WEIGHT_LUMA:F = 6.0f

.field private static final WEIGHT_POPULATION:F = 1.0f

.field private static final WEIGHT_SATURATION:F = 3.0f


# instance fields
.field private mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private final mHighestPopulation:I

.field private mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    .line 206
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/Palette;->findMaxPopulation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mHighestPopulation:I

    .line 208
    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/cm/palette/Palette;->findColor(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 211
    const v1, 0x3f3d70a4    # 0.74f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/cm/palette/Palette;->findColor(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 214
    const v1, 0x3e851eb8    # 0.26f

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/cm/palette/Palette;->findColor(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 217
    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/cm/palette/Palette;->findColor(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 220
    const v1, 0x3f3d70a4    # 0.74f

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/cm/palette/Palette;->findColor(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 223
    const v1, 0x3e851eb8    # 0.26f

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/cm/palette/Palette;->findColor(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 227
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/Palette;->generateEmptySwatches()V

    .line 228
    return-void
.end method

.method private static checkAsyncListenerParam(Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;

    .prologue
    .line 538
    if-nez p0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    return-void
.end method

.method private static checkBitmapParam(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 523
    if-nez p0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap can not be recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    return-void
.end method

.method private static checkNumberColorsParam(I)V
    .locals 2
    .param p0, "numColors"    # I

    .prologue
    .line 532
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numColors must be 1 of greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    return-void
.end method

.method private static copyHslValues(Lcom/android/internal/util/cm/palette/Palette$Swatch;)[F
    .locals 4
    .param p0, "color"    # Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 490
    new-array v0, v3, [F

    .line 491
    .local v0, "newHsl":[F
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 492
    return-object v0
.end method

.method private static createComparisonValue(FFFFII)F
    .locals 4
    .param p0, "saturation"    # F
    .param p1, "targetSaturation"    # F
    .param p2, "luma"    # F
    .param p3, "targetLuma"    # F
    .param p4, "population"    # I
    .param p5, "highestPopulation"    # I

    .prologue
    .line 479
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/util/cm/palette/Palette;->invertDiff(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Lcom/android/internal/util/cm/palette/Palette;->invertDiff(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x40c00000    # 6.0f

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    int-to-float v3, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/cm/palette/Palette;->weightedMean([F)F

    move-result v0

    return v0
.end method

.method private findColor(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 11
    .param p1, "targetLuma"    # F
    .param p2, "minLuma"    # F
    .param p3, "maxLuma"    # F
    .param p4, "targetSaturation"    # F
    .param p5, "minSaturation"    # F
    .param p6, "maxSaturation"    # F

    .prologue
    .line 344
    const/4 v7, 0x0

    .line 345
    .local v7, "max":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    const/4 v8, 0x0

    .line 347
    .local v8, "maxValue":F
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 348
    .local v9, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    invoke-virtual {v9}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v3, 0x1

    aget v0, v1, v3

    .line 349
    .local v0, "sat":F
    invoke-virtual {v9}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v3, 0x2

    aget v2, v1, v3

    .line 351
    .local v2, "luma":F
    cmpl-float v1, v0, p5

    if-ltz v1, :cond_0

    cmpg-float v1, v0, p6

    if-gtz v1, :cond_0

    cmpl-float v1, v2, p2

    if-ltz v1, :cond_0

    cmpg-float v1, v2, p3

    if-gtz v1, :cond_0

    invoke-direct {p0, v9}, Lcom/android/internal/util/cm/palette/Palette;->isAlreadySelected(Lcom/android/internal/util/cm/palette/Palette$Swatch;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    invoke-virtual {v9}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getPopulation()I

    move-result v4

    iget v5, p0, Lcom/android/internal/util/cm/palette/Palette;->mHighestPopulation:I

    move v1, p4

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/cm/palette/Palette;->createComparisonValue(FFFFII)F

    move-result v10

    .line 356
    .local v10, "thisValue":F
    if-eqz v7, :cond_1

    cmpl-float v1, v10, v8

    if-lez v1, :cond_0

    .line 357
    :cond_1
    move-object v7, v9

    .line 358
    move v8, v10

    goto :goto_0

    .line 363
    .end local v0    # "sat":F
    .end local v2    # "luma":F
    .end local v9    # "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .end local v10    # "thisValue":F
    :cond_2
    return-object v7
.end method

.method private findMaxPopulation()I
    .locals 4

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, "population":I
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 397
    .local v2, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    invoke-virtual {v2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getPopulation()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 398
    goto :goto_0

    .line 399
    .end local v2    # "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    :cond_0
    return v1
.end method

.method public static from(Ljava/util/List;)Lcom/android/internal/util/cm/palette/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/util/cm/palette/Palette;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    if-nez p0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/util/cm/palette/Palette;

    invoke-direct {v0, p0}, Lcom/android/internal/util/cm/palette/Palette;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/internal/util/cm/palette/Palette;->generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/Palette;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/Palette;->checkBitmapParam(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-static {p1}, Lcom/android/internal/util/cm/palette/Palette;->checkNumberColorsParam(I)V

    .line 133
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/Palette;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    move-result-object v0

    .line 139
    .local v0, "quantizer":Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
    if-eq v1, p0, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    :cond_0
    new-instance v2, Lcom/android/internal/util/cm/palette/Palette;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/util/cm/palette/Palette;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .param p2, "listener"    # Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/util/cm/palette/Palette;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/Palette;->checkBitmapParam(Landroid/graphics/Bitmap;)V

    .line 173
    invoke-static {p1}, Lcom/android/internal/util/cm/palette/Palette;->checkNumberColorsParam(I)V

    .line 174
    invoke-static {p2}, Lcom/android/internal/util/cm/palette/Palette;->checkAsyncListenerParam(Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)V

    .line 176
    new-instance v0, Lcom/android/internal/util/cm/palette/Palette$1;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/cm/palette/Palette$1;-><init>(ILcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)V

    .line 187
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Landroid/graphics/Bitmap;Ljava/lang/Void;Lcom/android/internal/util/cm/palette/Palette;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listener"    # Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/util/cm/palette/Palette;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    const/16 v0, 0x10

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/cm/palette/Palette;->generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private generateEmptySwatches()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 370
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v1}, Lcom/android/internal/util/cm/palette/Palette;->copyHslValues(Lcom/android/internal/util/cm/palette/Palette$Swatch;)[F

    move-result-object v0

    .line 375
    .local v0, "newHsl":[F
    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, v0, v4

    .line 376
    new-instance v1, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v0}, Lcom/android/internal/util/cm/palette/ColorUtils;->HSLtoRGB([F)I

    move-result v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/cm/palette/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 380
    .end local v0    # "newHsl":[F
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v1}, Lcom/android/internal/util/cm/palette/Palette;->copyHslValues(Lcom/android/internal/util/cm/palette/Palette$Swatch;)[F

    move-result-object v0

    .line 385
    .restart local v0    # "newHsl":[F
    const v1, 0x3e851eb8    # 0.26f

    aput v1, v0, v4

    .line 386
    new-instance v1, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v0}, Lcom/android/internal/util/cm/palette/ColorUtils;->HSLtoRGB([F)I

    move-result v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/cm/palette/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 389
    .end local v0    # "newHsl":[F
    :cond_1
    return-void
.end method

.method private static invertDiff(FF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .prologue
    .line 504
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isAlreadySelected(Lcom/android/internal/util/cm/palette/Palette$Swatch;)Z
    .locals 1
    .param p1, "swatch"    # Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 462
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 464
    .local v0, "minDimension":I
    const/16 v2, 0x64

    if-gt v0, v2, :cond_0

    .line 470
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 469
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 470
    .local v1, "scaleRatio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method private static varargs weightedMean([F)F
    .locals 6
    .param p0, "values"    # [F

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "sum":F
    const/4 v2, 0x0

    .line 511
    .local v2, "sumWeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 512
    aget v3, p0, v0

    .line 513
    .local v3, "value":F
    add-int/lit8 v5, v0, 0x1

    aget v4, p0, v5

    .line 515
    .local v4, "weight":F
    mul-float v5, v3, v4

    add-float/2addr v1, v5

    .line 516
    add-float/2addr v2, v4

    .line 511
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 519
    .end local v3    # "value":F
    .end local v4    # "weight":F
    :cond_0
    div-float v5, v1, v2

    return v5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    if-ne p0, p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v1

    .line 407
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 408
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 411
    check-cast v0, Lcom/android/internal/util/cm/palette/Palette;

    .line 413
    .local v0, "palette":Lcom/android/internal/util/cm/palette/Palette;
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    iget-object v4, v0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 414
    goto :goto_0

    .line 413
    :cond_5
    iget-object v3, v0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    if-nez v3, :cond_4

    .line 416
    :cond_6
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    iget-object v4, v0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 418
    goto :goto_0

    .line 416
    :cond_8
    iget-object v3, v0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v3, :cond_7

    .line 420
    :cond_9
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    iget-object v4, v0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 422
    goto :goto_0

    .line 420
    :cond_b
    iget-object v3, v0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v3, :cond_a

    .line 424
    :cond_c
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    iget-object v4, v0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 426
    goto :goto_0

    .line 424
    :cond_e
    iget-object v3, v0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v3, :cond_d

    .line 428
    :cond_f
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    iget-object v4, v0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 430
    goto :goto_0

    .line 428
    :cond_11
    iget-object v3, v0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v3, :cond_10

    .line 432
    :cond_12
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    iget-object v4, v0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    .line 434
    goto/16 :goto_0

    .line 432
    :cond_14
    iget-object v3, v0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v3, :cond_13

    .line 436
    :cond_15
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    iget-object v4, v0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 438
    goto/16 :goto_0

    .line 436
    :cond_16
    iget-object v3, v0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getDarkMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getDarkVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getLightMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getLightMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getLightVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 447
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 448
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 449
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 450
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 451
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 452
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/cm/palette/Palette;->mLightMutedColor:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-virtual {v1}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 453
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 446
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 447
    goto :goto_1

    :cond_3
    move v2, v1

    .line 448
    goto :goto_2

    :cond_4
    move v2, v1

    .line 449
    goto :goto_3

    :cond_5
    move v2, v1

    .line 450
    goto :goto_4

    :cond_6
    move v2, v1

    .line 451
    goto :goto_5
.end method
