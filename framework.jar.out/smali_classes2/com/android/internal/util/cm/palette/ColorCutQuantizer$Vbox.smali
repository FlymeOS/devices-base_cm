.class Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mPopulation:I

.field private mUpperIndex:I

.field final synthetic this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;


# direct methods
.method constructor <init>(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
    .param p2, "lowerIndex"    # I
    .param p3, "upperIndex"    # I

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 225
    iput p3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 223
    return-void
.end method


# virtual methods
.method final canSplit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final findSplitPoint()I
    .locals 8

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v4

    .line 342
    .local v4, "longestDimension":I
    iget-object v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget-object v0, v6, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    .line 343
    .local v0, "colors":[I
    iget-object v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget-object v2, v6, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mHistogram:[I

    .line 348
    .local v2, "hist":[I
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v7, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v0, v4, v6, v7}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap4([IIII)V

    .line 351
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v7, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->sort([III)V

    .line 354
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v7, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v0, v4, v6, v7}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap4([IIII)V

    .line 356
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v5, v6, 0x2

    .line 357
    .local v5, "midPoint":I
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v3, "i":I
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v6, :cond_1

    .line 358
    aget v6, v0, v3

    aget v6, v2, v6

    add-int/2addr v1, v6

    .line 359
    if-lt v1, v5, :cond_0

    .line 360
    return v3

    .line 357
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    :cond_1
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v6
.end method

.method final fitBox()V
    .locals 15

    .prologue
    .line 246
    iget-object v14, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget-object v2, v14, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    .line 247
    .local v2, "colors":[I
    iget-object v14, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget-object v5, v14, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mHistogram:[I

    .line 251
    .local v5, "hist":[I
    const v10, 0x7fffffff

    .local v10, "minBlue":I
    const v11, 0x7fffffff

    .local v11, "minGreen":I
    const v12, 0x7fffffff

    .line 253
    .local v12, "minRed":I
    const/high16 v7, -0x80000000

    .local v7, "maxBlue":I
    const/high16 v8, -0x80000000

    .local v8, "maxGreen":I
    const/high16 v9, -0x80000000

    .line 254
    .local v9, "maxRed":I
    const/4 v3, 0x0

    .line 256
    .local v3, "count":I
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v6, "i":I
    :goto_0
    iget v14, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v6, v14, :cond_6

    .line 257
    aget v1, v2, v6

    .line 258
    .local v1, "color":I
    aget v14, v5, v1

    add-int/2addr v3, v14

    .line 260
    invoke-static {v1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap3(I)I

    move-result v13

    .line 261
    .local v13, "r":I
    invoke-static {v1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap2(I)I

    move-result v4

    .line 262
    .local v4, "g":I
    invoke-static {v1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap1(I)I

    move-result v0

    .line 263
    .local v0, "b":I
    if-le v13, v9, :cond_0

    .line 264
    move v9, v13

    .line 266
    :cond_0
    if-ge v13, v12, :cond_1

    .line 267
    move v12, v13

    .line 269
    :cond_1
    if-le v4, v8, :cond_2

    .line 270
    move v8, v4

    .line 272
    :cond_2
    if-ge v4, v11, :cond_3

    .line 273
    move v11, v4

    .line 275
    :cond_3
    if-le v0, v7, :cond_4

    .line 276
    move v7, v0

    .line 278
    :cond_4
    if-ge v0, v10, :cond_5

    .line 279
    move v10, v0

    .line 256
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "b":I
    .end local v1    # "color":I
    .end local v4    # "g":I
    .end local v13    # "r":I
    :cond_6
    iput v12, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 284
    iput v9, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 285
    iput v11, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 286
    iput v8, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 287
    iput v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 288
    iput v7, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 289
    iput v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 245
    return-void
.end method

.method final getAverageColor()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 14

    .prologue
    .line 371
    iget-object v12, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget-object v4, v12, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    .line 372
    .local v4, "colors":[I
    iget-object v12, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget-object v7, v12, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mHistogram:[I

    .line 373
    .local v7, "hist":[I
    const/4 v10, 0x0

    .line 374
    .local v10, "redSum":I
    const/4 v6, 0x0

    .line 375
    .local v6, "greenSum":I
    const/4 v1, 0x0

    .line 376
    .local v1, "blueSum":I
    const/4 v11, 0x0

    .line 378
    .local v11, "totalPopulation":I
    iget v8, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v8, "i":I
    :goto_0
    iget v12, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v8, v12, :cond_0

    .line 379
    aget v2, v4, v8

    .line 380
    .local v2, "color":I
    aget v3, v7, v2

    .line 382
    .local v3, "colorPopulation":I
    add-int/2addr v11, v3

    .line 383
    invoke-static {v2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap3(I)I

    move-result v12

    mul-int/2addr v12, v3

    add-int/2addr v10, v12

    .line 384
    invoke-static {v2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap2(I)I

    move-result v12

    mul-int/2addr v12, v3

    add-int/2addr v6, v12

    .line 385
    invoke-static {v2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap1(I)I

    move-result v12

    mul-int/2addr v12, v3

    add-int/2addr v1, v12

    .line 378
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "color":I
    .end local v3    # "colorPopulation":I
    :cond_0
    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 389
    .local v9, "redMean":I
    int-to-float v12, v6

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 390
    .local v5, "greenMean":I
    int-to-float v12, v1

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 392
    .local v0, "blueMean":I
    new-instance v12, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-static {v9, v5, v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->-wrap0(III)I

    move-result v13

    invoke-direct {v12, v13, v11}, Lcom/android/internal/util/cm/palette/Palette$Swatch;-><init>(II)V

    return-object v12
.end method

.method final getColorCount()I
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final getLongestColorDimension()I
    .locals 5

    .prologue
    .line 318
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int v2, v3, v4

    .line 319
    .local v2, "redLength":I
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int v1, v3, v4

    .line 320
    .local v1, "greenLength":I
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int v0, v3, v4

    .line 322
    .local v0, "blueLength":I
    if-lt v2, v1, :cond_0

    if-lt v2, v0, :cond_0

    .line 323
    const/4 v3, -0x3

    return v3

    .line 324
    :cond_0
    if-lt v1, v2, :cond_1

    if-lt v1, v0, :cond_1

    .line 325
    const/4 v3, -0x2

    return v3

    .line 327
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method final getVolume()I
    .locals 3

    .prologue
    .line 230
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 231
    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 230
    mul-int/2addr v0, v1

    return v0
.end method

.method final splitBox()Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    .locals 5

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Can not split a box with only 1 color"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v1

    .line 305
    .local v1, "splitPoint":I
    new-instance v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;II)V

    .line 308
    .local v0, "newBox":Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    iput v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 311
    return-object v0
.end method
