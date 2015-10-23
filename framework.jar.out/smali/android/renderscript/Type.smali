.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 189
    return-void
.end method

.method public static createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I

    .prologue
    const/4 v5, 0x0

    .line 223
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 224
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Dimension must be >= 1."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 228
    .local v10, "id":J
    new-instance v0, Landroid/renderscript/Type;

    invoke-direct {v0, v10, v11, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 229
    .local v0, "t":Landroid/renderscript/Type;
    iput-object p1, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 230
    iput p2, v0, Landroid/renderscript/Type;->mDimX:I

    .line 231
    invoke-virtual {v0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 232
    return-object v0
.end method

.method public static createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 247
    if-lt p2, v1, :cond_0

    if-ge p3, v1, :cond_1

    .line 248
    :cond_0
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Dimension must be >= 1."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 252
    .local v10, "id":J
    new-instance v0, Landroid/renderscript/Type;

    invoke-direct {v0, v10, v11, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 253
    .local v0, "t":Landroid/renderscript/Type;
    iput-object p1, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 254
    iput p2, v0, Landroid/renderscript/Type;->mDimX:I

    .line 255
    iput p3, v0, Landroid/renderscript/Type;->mDimY:I

    .line 256
    invoke-virtual {v0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 257
    return-object v0
.end method

.method public static createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .locals 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I
    .param p4, "dimZ"    # I

    .prologue
    .line 273
    const/4 v3, 0x1

    move/from16 v0, p2

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p3

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ge v0, v3, :cond_1

    .line 274
    :cond_0
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Dimension must be >= 1."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v11}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v12

    .line 278
    .local v12, "id":J
    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v12, v13, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 279
    .local v2, "t":Landroid/renderscript/Type;
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 280
    move/from16 v0, p2

    iput v0, v2, Landroid/renderscript/Type;->mDimX:I

    .line 281
    move/from16 v0, p3

    iput v0, v2, Landroid/renderscript/Type;->mDimY:I

    .line 282
    move/from16 v0, p4

    iput v0, v2, Landroid/renderscript/Type;->mDimZ:I

    .line 283
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    .line 284
    return-object v2
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 150
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    .line 151
    .local v2, "hasLod":Z
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 152
    .local v3, "x":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 153
    .local v4, "y":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v5

    .line 154
    .local v5, "z":I
    const/4 v1, 0x1

    .line 155
    .local v1, "faces":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    const/4 v1, 0x6

    .line 158
    :cond_0
    if-nez v3, :cond_1

    .line 159
    const/4 v3, 0x1

    .line 161
    :cond_1
    if-nez v4, :cond_2

    .line 162
    const/4 v4, 0x1

    .line 164
    :cond_2
    if-nez v5, :cond_3

    .line 165
    const/4 v5, 0x1

    .line 168
    :cond_3
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int v0, v6, v1

    .line 170
    .local v0, "count":I
    :goto_0
    if-eqz v2, :cond_8

    if-gt v3, v7, :cond_4

    if-gt v4, v7, :cond_4

    if-le v5, v7, :cond_8

    .line 171
    :cond_4
    if-le v3, v7, :cond_5

    .line 172
    shr-int/lit8 v3, v3, 0x1

    .line 174
    :cond_5
    if-le v4, v7, :cond_6

    .line 175
    shr-int/lit8 v4, v4, 0x1

    .line 177
    :cond_6
    if-le v5, v7, :cond_7

    .line 178
    shr-int/lit8 v5, v5, 0x1

    .line 181
    :cond_7
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v0, v6

    goto :goto_0

    .line 183
    :cond_8
    iput v0, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 184
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method updateFromNative()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    const/4 v1, 0x6

    new-array v0, v1, [J

    .line 196
    .local v0, "dataBuffer":[J
    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v6}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    .line 198
    aget-wide v6, v0, v5

    long-to-int v1, v6

    iput v1, p0, Landroid/renderscript/Type;->mDimX:I

    .line 199
    aget-wide v6, v0, v4

    long-to-int v1, v6

    iput v1, p0, Landroid/renderscript/Type;->mDimY:I

    .line 200
    const/4 v1, 0x2

    aget-wide v6, v0, v1

    long-to-int v1, v6

    iput v1, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 201
    const/4 v1, 0x3

    aget-wide v6, v0, v1

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 202
    const/4 v1, 0x4

    aget-wide v6, v0, v1

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v4, p0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 204
    const/4 v1, 0x5

    aget-wide v2, v0, v1

    .line 205
    .local v2, "elementID":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 206
    new-instance v1, Landroid/renderscript/Element;

    iget-object v4, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 207
    iget-object v1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 210
    return-void

    .end local v2    # "elementID":J
    :cond_1
    move v1, v5

    .line 201
    goto :goto_0

    :cond_2
    move v4, v5

    .line 202
    goto :goto_1
.end method
