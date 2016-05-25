.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 71
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 85
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 86
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "src"    # [F

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 78
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 79
    return-void
.end method


# virtual methods
.method public final getArray()[F
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "postmatrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 226
    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 227
    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "prematrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 216
    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 217
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 104
    .local v0, "a":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 105
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0xc

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v4

    aput v5, v0, v3

    aput v5, v0, v2

    aput v5, v0, v1

    .line 106
    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 113
    return-void
.end method

.method public set([F)V
    .locals 3
    .param p1, "src"    # [F

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x14

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 120
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

    .line 185
    if-eq p1, p0, :cond_0

    if-ne p2, p0, :cond_1

    .line 186
    :cond_0
    new-array v6, v10, [F

    .line 191
    .local v6, "tmp":[F
    :goto_0
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 192
    .local v0, "a":[F
    iget-object v1, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 193
    .local v1, "b":[F
    const/4 v3, 0x0

    .line 194
    .local v3, "index":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v10, :cond_3

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_2
    if-ge v2, v12, :cond_2

    .line 196
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

    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xa

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xf

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v4

    .line 195
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 188
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

    .line 199
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

    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    const/16 v9, 0xe

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    const/16 v9, 0x13

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x4

    aget v8, v0, v8

    add-float/2addr v7, v8

    aput v7, v6, v4

    .line 194
    add-int/lit8 v5, v5, 0x5

    goto :goto_1

    .line 204
    .end local v2    # "i":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v6, v7, :cond_4

    .line 205
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v6, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 207
    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 254
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 255
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 257
    .local v0, "m":[F
    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f1645a2    # 0.587f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3de978d5    # 0.114f

    aput v2, v0, v1

    .line 258
    const/4 v1, 0x5

    const v2, -0x41d335d2    # -0.16874f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x41566517    # -0.33126f

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 259
    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    const v2, -0x4129a177    # -0.41869f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x42597a25    # -0.08131f

    aput v2, v0, v1

    .line 260
    return-void
.end method

.method public setRotate(IF)V
    .locals 8
    .param p1, "axis"    # I
    .param p2, "degrees"    # F

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 148
    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v3, p2

    const/high16 v4, 0x43340000    # 180.0f

    div-float v1, v3, v4

    .line 149
    .local v1, "radians":F
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 150
    .local v0, "cosine":F
    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    .line 151
    .local v2, "sine":F
    packed-switch p1, :pswitch_data_0

    .line 171
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    .line 154
    :pswitch_0
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v4, v7

    aput v0, v3, v6

    .line 155
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 156
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v4, 0xb

    neg-float v5, v2

    aput v5, v3, v4

    .line 173
    :goto_0
    return-void

    .line 160
    :pswitch_1
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v4, v7

    aput v0, v3, v5

    .line 161
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x2

    neg-float v5, v2

    aput v5, v3, v4

    .line 162
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v4, 0xa

    aput v2, v3, v4

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v4, v6

    aput v0, v3, v5

    .line 167
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x1

    aput v2, v3, v4

    .line 168
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x5

    neg-float v5, v2

    aput v5, v3, v4

    goto :goto_0

    .line 151
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
    .line 237
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 238
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 240
    .local v4, "m":[F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p1

    .line 241
    .local v3, "invSat":F
    const v5, 0x3e5a1cac    # 0.213f

    mul-float v2, v5, v3

    .line 242
    .local v2, "R":F
    const v5, 0x3f370a3d    # 0.715f

    mul-float v1, v5, v3

    .line 243
    .local v1, "G":F
    const v5, 0x3d9374bc    # 0.072f

    mul-float v0, v5, v3

    .line 245
    .local v0, "B":F
    const/4 v5, 0x0

    add-float v6, v2, p1

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v5, 0x2

    aput v0, v4, v5

    .line 246
    const/4 v5, 0x5

    aput v2, v4, v5

    const/4 v5, 0x6

    add-float v6, v1, p1

    aput v6, v4, v5

    const/4 v5, 0x7

    aput v0, v4, v5

    .line 247
    const/16 v5, 0xa

    aput v2, v4, v5

    const/16 v5, 0xb

    aput v1, v4, v5

    const/16 v5, 0xc

    add-float v6, v0, p1

    aput v6, v4, v5

    .line 248
    return-void
.end method

.method public setScale(FFFF)V
    .locals 3
    .param p1, "rScale"    # F
    .param p2, "gScale"    # F
    .param p3, "bScale"    # F
    .param p4, "aScale"    # F

    .prologue
    .line 127
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 129
    .local v0, "a":[F
    const/16 v1, 0x13

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 130
    const/4 v2, 0x0

    aput v2, v0, v1

    .line 129
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 132
    :cond_0
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 133
    const/4 v2, 0x6

    aput p2, v0, v2

    .line 134
    const/16 v2, 0xc

    aput p3, v0, v2

    .line 135
    const/16 v2, 0x12

    aput p4, v0, v2

    .line 136
    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 266
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 267
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 269
    .local v0, "m":[F
    const/4 v1, 0x2

    const v2, 0x3fb374bc    # 1.402f

    aput v2, v0, v1

    .line 270
    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const v2, -0x414fcce2    # -0.34414f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x40c92e1f    # -0.71414f

    aput v2, v0, v1

    .line 271
    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    const v2, 0x3fe2d0e5    # 1.772f

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 272
    return-void
.end method
