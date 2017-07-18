.class Lcom/android/internal/util/cm/palette/DefaultGenerator;
.super Lcom/android/internal/util/cm/palette/Palette$Generator;
.source "DefaultGenerator.java"


# static fields
.field private static final MAX_DARK_LUMA:F = 0.45f

.field private static final MAX_MUTED_SATURATION:F = 0.4f

.field private static final MAX_NORMAL_LUMA:F = 0.7f

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

.field private mHighestPopulation:I

.field private mLightMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

.field private mSwatches:Ljava/util/List;
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/Palette$Generator;-><init>()V

    return-void
.end method

.method private static copyHslValues(Lcom/android/internal/util/cm/palette/Palette$Swatch;)[F
    .locals 4
    .param p0, "color"    # Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 213
    new-array v0, v3, [F

    .line 214
    .local v0, "newHsl":[F
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 215
    return-object v0
.end method

.method private static createComparisonValue(FFFFFFIIF)F
    .locals 3
    .param p0, "saturation"    # F
    .param p1, "targetSaturation"    # F
    .param p2, "saturationWeight"    # F
    .param p3, "luma"    # F
    .param p4, "targetLuma"    # F
    .param p5, "lumaWeight"    # F
    .param p6, "population"    # I
    .param p7, "maxPopulation"    # I
    .param p8, "populationWeight"    # F

    .prologue
    .line 202
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 203
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->invertDiff(FF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 204
    invoke-static {p3, p4}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->invertDiff(FF)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p5, v0, v1

    .line 205
    int-to-float v1, p6

    int-to-float v2, p7

    div-float/2addr v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput p8, v0, v1

    .line 202
    invoke-static {v0}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->weightedMean([F)F

    move-result v0

    return v0
.end method

.method private static createComparisonValue(FFFFII)F
    .locals 9
    .param p0, "saturation"    # F
    .param p1, "targetSaturation"    # F
    .param p2, "luma"    # F
    .param p3, "targetLuma"    # F
    .param p4, "population"    # I
    .param p5, "maxPopulation"    # I

    .prologue
    .line 193
    const/high16 v2, 0x40400000    # 3.0f

    .line 194
    const/high16 v5, 0x40c00000    # 6.0f

    .line 195
    const/high16 v8, 0x3f800000    # 1.0f

    move v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    .line 193
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->createComparisonValue(FFFFFFIIF)F

    move-result v0

    return v0
.end method

.method private findColorVariation(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 11
    .param p1, "targetLuma"    # F
    .param p2, "minLuma"    # F
    .param p3, "maxLuma"    # F
    .param p4, "targetSaturation"    # F
    .param p5, "minSaturation"    # F
    .param p6, "maxSaturation"    # F

    .prologue
    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, "max":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    const/4 v7, 0x0

    .line 162
    .local v7, "maxValue":F
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mSwatches:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v6    # "max":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .local v9, "swatch$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 163
    .local v8, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    invoke-virtual {v8}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v3, 0x1

    aget v0, v1, v3

    .line 164
    .local v0, "sat":F
    invoke-virtual {v8}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v3, 0x2

    aget v2, v1, v3

    .line 166
    .local v2, "luma":F
    cmpl-float v1, v0, p5

    if-ltz v1, :cond_0

    cmpg-float v1, v0, p6

    if-gtz v1, :cond_0

    .line 167
    cmpl-float v1, v2, p2

    if-ltz v1, :cond_0

    cmpg-float v1, v2, p3

    if-gtz v1, :cond_0

    .line 168
    invoke-direct {p0, v8}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->isAlreadySelected(Lcom/android/internal/util/cm/palette/Palette$Swatch;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v8}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getPopulation()I

    move-result v4

    iget v5, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mHighestPopulation:I

    move v1, p4

    move v3, p1

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->createComparisonValue(FFFFII)F

    move-result v10

    .line 171
    .local v10, "value":F
    if-eqz v6, :cond_1

    cmpl-float v1, v10, v7

    if-lez v1, :cond_0

    .line 172
    :cond_1
    move-object v6, v8

    .line 173
    .local v6, "max":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    move v7, v10

    goto :goto_0

    .line 178
    .end local v0    # "sat":F
    .end local v2    # "luma":F
    .end local v6    # "max":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .end local v8    # "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .end local v10    # "value":F
    :cond_2
    return-object v6
.end method

.method private findMaxPopulation()I
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "population":I
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "swatch$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 152
    .local v1, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    invoke-virtual {v1}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getPopulation()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 154
    .end local v1    # "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    :cond_0
    return v0
.end method

.method private generateEmptySwatches()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v1}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->copyHslValues(Lcom/android/internal/util/cm/palette/Palette$Swatch;)[F

    move-result-object v0

    .line 130
    .local v0, "newHsl":[F
    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, v0, v4

    .line 131
    new-instance v1, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v0}, Lcom/android/internal/util/cm/palette/ColorUtils;->HSLToColor([F)I

    move-result v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/cm/palette/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 135
    .end local v0    # "newHsl":[F
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v1}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->copyHslValues(Lcom/android/internal/util/cm/palette/Palette$Swatch;)[F

    move-result-object v0

    .line 140
    .restart local v0    # "newHsl":[F
    const v1, 0x3e851eb8    # 0.26f

    aput v1, v0, v4

    .line 141
    new-instance v1, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v0}, Lcom/android/internal/util/cm/palette/ColorUtils;->HSLToColor([F)I

    move-result v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/cm/palette/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 124
    .end local v0    # "newHsl":[F
    :cond_1
    return-void
.end method

.method private generateVariationColors()V
    .locals 15

    .prologue
    const v14, 0x3ecccccd    # 0.4f

    const v5, 0x3eb33333    # 0.35f

    const v2, 0x3e99999a    # 0.3f

    const/4 v13, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 102
    const/high16 v1, 0x3f000000    # 0.5f

    const v3, 0x3f333333    # 0.7f

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->findColorVariation(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 105
    const v7, 0x3f3d70a4    # 0.74f

    const v8, 0x3f0ccccd    # 0.55f

    move-object v6, p0

    move v9, v4

    move v10, v4

    move v11, v5

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->findColorVariation(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 108
    const v7, 0x3e851eb8    # 0.26f

    const v9, 0x3ee66666    # 0.45f

    move-object v6, p0

    move v8, v13

    move v10, v4

    move v11, v5

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->findColorVariation(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 111
    const/high16 v6, 0x3f000000    # 0.5f

    const v8, 0x3f333333    # 0.7f

    move-object v5, p0

    move v7, v2

    move v9, v2

    move v10, v13

    move v11, v14

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->findColorVariation(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 114
    const v6, 0x3f3d70a4    # 0.74f

    const v7, 0x3f0ccccd    # 0.55f

    move-object v5, p0

    move v8, v4

    move v9, v2

    move v10, v13

    move v11, v14

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->findColorVariation(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mLightMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 117
    const v4, 0x3e851eb8    # 0.26f

    const v6, 0x3ee66666    # 0.45f

    move-object v3, p0

    move v5, v13

    move v7, v2

    move v8, v13

    move v9, v14

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->findColorVariation(FFFFFF)Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 101
    return-void
.end method

.method private static invertDiff(FF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .prologue
    .line 227
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0
.end method

.method private isAlreadySelected(Lcom/android/internal/util/cm/palette/Palette$Swatch;)Z
    .locals 2
    .param p1, "swatch"    # Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v1, p1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mLightMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs weightedMean([F)F
    .locals 6
    .param p0, "values"    # [F

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "sum":F
    const/4 v2, 0x0

    .line 234
    .local v2, "sumWeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 235
    aget v3, p0, v0

    .line 236
    .local v3, "value":F
    add-int/lit8 v5, v0, 0x1

    aget v4, p0, v5

    .line 238
    .local v4, "weight":F
    mul-float v5, v3, v4

    add-float/2addr v1, v5

    .line 239
    add-float/2addr v2, v4

    .line 234
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 242
    .end local v3    # "value":F
    .end local v4    # "weight":F
    :cond_0
    div-float v5, v1, v2

    return v5
.end method


# virtual methods
.method public generate(Ljava/util/List;)V
    .locals 1
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
    .line 61
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mSwatches:Ljava/util/List;

    .line 63
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->findMaxPopulation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mHighestPopulation:I

    .line 65
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->generateVariationColors()V

    .line 68
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/DefaultGenerator;->generateEmptySwatches()V

    .line 60
    return-void
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mDarkVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getLightMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mLightMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mLightVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mMutedSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method

.method public getVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/DefaultGenerator;->mVibrantSwatch:Lcom/android/internal/util/cm/palette/Palette$Swatch;

    return-object v0
.end method
