.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 69
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 83
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 82
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "src"    # [F

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 76
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 75
    return-void
.end method


# virtual methods
.method public final getArray()[F
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "postmatrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 224
    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 223
    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "prematrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 214
    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 213
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 101
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 102
    .local v0, "a":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 103
    const/16 v1, 0x12

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 100
    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 109
    return-void
.end method

.method public set([F)V
    .locals 3
    .param p1, "src"    # [F

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x14

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 116
    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 13
    .param p1, "matA"    # Landroid/graphics/ColorMatrix;
    .param p2, "matB"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/16 v10, 0x14

    .line 183
    if-eq p1, p0, :cond_0

    if-ne p2, p0, :cond_1

    .line 184
    :cond_0
    new-array v6, v10, [F

    .line 189
    .local v6, "tmp":[F
    :goto_0
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 190
    .local v0, "a":[F
    iget-object v1, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 191
    .local v1, "b":[F
    const/4 v3, 0x0

    .line 192
    .local v3, "index":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v10, :cond_3

    .line 193
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_2
    if-ge v2, v12, :cond_2

    .line 194
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v7, v5, 0x0

    aget v7, v0, v7

    add-int/lit8 v8, v2, 0x0

    aget v8, v1, v8

    mul-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0x5

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 195
    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xa

    aget v9, v1, v9

    mul-float/2addr v8, v9

    .line 194
    add-float/2addr v7, v8

    .line 195
    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xf

    aget v9, v1, v9

    mul-float/2addr v8, v9

    .line 194
    add-float/2addr v7, v8

    aput v7, v6, v4

    .line 193
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 186
    .end local v0    # "a":[F
    .end local v1    # "b":[F
    .end local v2    # "i":I
    .end local v4    # "index":I
    .end local v5    # "j":I
    .end local v6    # "tmp":[F
    :cond_1
    iget-object v6, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .restart local v6    # "tmp":[F
    goto :goto_0

    .line 197
    .restart local v0    # "a":[F
    .restart local v1    # "b":[F
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v7, v5, 0x0

    aget v7, v0, v7

    aget v8, v1, v12

    mul-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    const/16 v9, 0x9

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 198
    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    const/16 v9, 0xe

    aget v9, v1, v9

    mul-float/2addr v8, v9

    .line 197
    add-float/2addr v7, v8

    .line 198
    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    const/16 v9, 0x13

    aget v9, v1, v9

    mul-float/2addr v8, v9

    .line 197
    add-float/2addr v7, v8

    .line 199
    add-int/lit8 v8, v5, 0x4

    aget v8, v0, v8

    .line 197
    add-float/2addr v7, v8

    aput v7, v6, v4

    .line 192
    add-int/lit8 v5, v5, 0x5

    goto :goto_1

    .line 202
    .end local v2    # "i":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v6, v7, :cond_4

    .line 203
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v6, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 181
    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 252
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 253
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 255
    .local v0, "m":[F
    const v1, 0x3e991687    # 0.299f

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x3f1645a2    # 0.587f

    const/4 v2, 0x1

    aput v1, v0, v2

    const v1, 0x3de978d5    # 0.114f

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 256
    const v1, -0x41d335d2    # -0.16874f

    const/4 v2, 0x5

    aput v1, v0, v2

    const v1, -0x41566517    # -0.33126f

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 257
    const/16 v1, 0xa

    aput v3, v0, v1

    const v1, -0x4129a177    # -0.41869f

    const/16 v2, 0xb

    aput v1, v0, v2

    const v1, -0x42597a25    # -0.08131f

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 251
    return-void
.end method

.method public setRotate(IF)V
    .locals 11
    .param p1, "axis"    # I
    .param p2, "degrees"    # F

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 146
    float-to-double v4, p2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v2, v4, v6

    .line 147
    .local v2, "radians":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 148
    .local v0, "cosine":F
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 149
    .local v1, "sine":F
    packed-switch p1, :pswitch_data_0

    .line 169
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 152
    :pswitch_0
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v5, v10

    aput v0, v4, v9

    .line 153
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x7

    aput v1, v4, v5

    .line 154
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    neg-float v5, v1

    const/16 v6, 0xb

    aput v5, v4, v6

    .line 144
    :goto_0
    return-void

    .line 158
    :pswitch_1
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v5, v10

    aput v0, v4, v8

    .line 159
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    neg-float v5, v1

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 160
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v5, 0xa

    aput v1, v4, v5

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v5, v9

    aput v0, v4, v8

    .line 165
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 166
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    neg-float v5, v1

    const/4 v6, 0x5

    aput v5, v4, v6

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSaturation(F)V
    .locals 7
    .param p1, "sat"    # F

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 236
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 238
    .local v4, "m":[F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p1

    .line 239
    .local v3, "invSat":F
    const v5, 0x3e5a1cac    # 0.213f

    mul-float v2, v5, v3

    .line 240
    .local v2, "R":F
    const v5, 0x3f370a3d    # 0.715f

    mul-float v1, v5, v3

    .line 241
    .local v1, "G":F
    const v5, 0x3d9374bc    # 0.072f

    mul-float v0, v5, v3

    .line 243
    .local v0, "B":F
    add-float v5, v2, p1

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v5, 0x2

    aput v0, v4, v5

    .line 244
    const/4 v5, 0x5

    aput v2, v4, v5

    add-float v5, v1, p1

    const/4 v6, 0x6

    aput v5, v4, v6

    const/4 v5, 0x7

    aput v0, v4, v5

    .line 245
    const/16 v5, 0xa

    aput v2, v4, v5

    const/16 v5, 0xb

    aput v1, v4, v5

    add-float v5, v0, p1

    const/16 v6, 0xc

    aput v5, v4, v6

    .line 234
    return-void
.end method

.method public setScale(FFFF)V
    .locals 4
    .param p1, "rScale"    # F
    .param p2, "gScale"    # F
    .param p3, "bScale"    # F
    .param p4, "aScale"    # F

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 127
    .local v0, "a":[F
    const/16 v1, 0x13

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 128
    const/4 v2, 0x0

    aput v2, v0, v1

    .line 127
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 130
    :cond_0
    aput p1, v0, v3

    .line 131
    const/4 v2, 0x6

    aput p2, v0, v2

    .line 132
    const/16 v2, 0xc

    aput p3, v0, v2

    .line 133
    const/16 v2, 0x12

    aput p4, v0, v2

    .line 124
    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 264
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 265
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 267
    .local v0, "m":[F
    const v1, 0x3fb374bc    # 1.402f

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 268
    const/4 v1, 0x5

    aput v3, v0, v1

    const v1, -0x414fcce2    # -0.34414f

    const/4 v2, 0x6

    aput v1, v0, v2

    const v1, -0x40c92e1f    # -0.71414f

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 269
    const/16 v1, 0xa

    aput v3, v0, v1

    const v1, 0x3fe2d0e5    # 1.772f

    const/16 v2, 0xb

    aput v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 263
    return-void
.end method
