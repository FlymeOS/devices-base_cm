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

.field private mUpperIndex:I

.field final synthetic this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;


# direct methods
.method constructor <init>(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;II)V
    .locals 0
    .param p2, "lowerIndex"    # I
    .param p3, "upperIndex"    # I

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 195
    iput p3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 197
    return-void
.end method


# virtual methods
.method canSplit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findSplitPoint()I
    .locals 7

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v3

    .line 300
    .local v3, "longestDimension":I
    iget-object v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    # invokes: Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->modifySignificantOctet(III)V
    invoke-static {v4, v3, v5, v6}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->access$100(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;III)V

    .line 303
    iget-object v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    # getter for: Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I
    invoke-static {v4}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->access$000(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;)[I

    move-result-object v4

    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->sort([III)V

    .line 306
    iget-object v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    # invokes: Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->modifySignificantOctet(III)V
    invoke-static {v4, v3, v5, v6}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->access$100(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;III)V

    .line 308
    invoke-virtual {p0, v3}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->midPoint(I)I

    move-result v1

    .line 310
    .local v1, "dimensionMidPoint":I
    iget v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v4, :cond_1

    .line 311
    iget-object v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    # getter for: Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I
    invoke-static {v4}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->access$000(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;)[I

    move-result-object v4

    aget v0, v4, v2

    .line 313
    .local v0, "color":I
    packed-switch v3, :pswitch_data_0

    .line 310
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :pswitch_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 332
    .end local v0    # "color":I
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 320
    .restart local v0    # "color":I
    .restart local v2    # "i":I
    :pswitch_1
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    goto :goto_1

    .line 325
    :pswitch_2
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    if-le v4, v1, :cond_0

    goto :goto_1

    .line 332
    .end local v0    # "color":I
    :cond_1
    iget v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method fitBox()V
    .locals 6

    .prologue
    .line 217
    const/16 v5, 0xff

    iput v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    iput v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    iput v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 218
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iput v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iput v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 220
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v5, :cond_6

    .line 221
    iget-object v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    # getter for: Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I
    invoke-static {v5}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->access$000(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;)[I

    move-result-object v5

    aget v1, v5, v3

    .line 222
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 223
    .local v4, "r":I
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 224
    .local v2, "g":I
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 225
    .local v0, "b":I
    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    if-le v4, v5, :cond_0

    .line 226
    iput v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 228
    :cond_0
    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    if-ge v4, v5, :cond_1

    .line 229
    iput v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 231
    :cond_1
    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    if-le v2, v5, :cond_2

    .line 232
    iput v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 234
    :cond_2
    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    if-ge v2, v5, :cond_3

    .line 235
    iput v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 237
    :cond_3
    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    if-le v0, v5, :cond_4

    .line 238
    iput v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 240
    :cond_4
    iget v5, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    if-ge v0, v5, :cond_5

    .line 241
    iput v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 220
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "b":I
    .end local v1    # "color":I
    .end local v2    # "g":I
    .end local v4    # "r":I
    :cond_6
    return-void
.end method

.method getAverageColor()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 12

    .prologue
    .line 339
    const/4 v8, 0x0

    .line 340
    .local v8, "redSum":I
    const/4 v5, 0x0

    .line 341
    .local v5, "greenSum":I
    const/4 v1, 0x0

    .line 342
    .local v1, "blueSum":I
    const/4 v9, 0x0

    .line 344
    .local v9, "totalPopulation":I
    iget v6, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v6, "i":I
    :goto_0
    iget v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v6, v10, :cond_0

    .line 345
    iget-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    # getter for: Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I
    invoke-static {v10}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->access$000(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;)[I

    move-result-object v10

    aget v2, v10, v6

    .line 346
    .local v2, "color":I
    iget-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    # getter for: Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;
    invoke-static {v10}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->access$200(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;)Landroid/util/SparseIntArray;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 348
    .local v3, "colorPopulation":I
    add-int/2addr v9, v3

    .line 349
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 350
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v5, v10

    .line 351
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v1, v10

    .line 344
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "color":I
    .end local v3    # "colorPopulation":I
    :cond_0
    int-to-float v10, v8

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 355
    .local v7, "redAverage":I
    int-to-float v10, v5

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 356
    .local v4, "greenAverage":I
    int-to-float v10, v1

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 358
    .local v0, "blueAverage":I
    new-instance v10, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    invoke-direct {v10, v7, v4, v0, v9}, Lcom/android/internal/util/cm/palette/Palette$Swatch;-><init>(IIII)V

    return-object v10
.end method

.method getColorCount()I
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getLongestColorDimension()I
    .locals 5

    .prologue
    .line 272
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int v2, v3, v4

    .line 273
    .local v2, "redLength":I
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int v1, v3, v4

    .line 274
    .local v1, "greenLength":I
    iget v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int v0, v3, v4

    .line 276
    .local v0, "blueLength":I
    if-lt v2, v1, :cond_0

    if-lt v2, v0, :cond_0

    .line 277
    const/4 v3, -0x3

    .line 281
    :goto_0
    return v3

    .line 278
    :cond_0
    if-lt v1, v2, :cond_1

    if-lt v1, v0, :cond_1

    .line 279
    const/4 v3, -0x2

    goto :goto_0

    .line 281
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method getVolume()I
    .locals 3

    .prologue
    .line 200
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method midPoint(I)I
    .locals 2
    .param p1, "dimension"    # I

    .prologue
    .line 365
    packed-switch p1, :pswitch_data_0

    .line 368
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 372
    :goto_0
    return v0

    .line 370
    :pswitch_0
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 372
    :pswitch_1
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    iget v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method splitBox()Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can not split a box with only 1 color"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v1

    .line 259
    .local v1, "splitPoint":I
    new-instance v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;II)V

    .line 262
    .local v0, "newBox":Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    iput v1, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 265
    return-object v0
.end method
