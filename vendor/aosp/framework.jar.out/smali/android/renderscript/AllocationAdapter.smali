.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# instance fields
.field mWindow:Landroid/renderscript/Type;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "alloc"    # Landroid/renderscript/Allocation;
    .param p5, "t"    # Landroid/renderscript/Type;

    .prologue
    .line 27
    iget-object v5, p4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v6, p4, Landroid/renderscript/Allocation;->mUsage:I

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 28
    iput-object p4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 29
    iput-object p5, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 26
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 233
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/renderscript/Type;->createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    move-result-object v0

    .line 234
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 240
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    .line 241
    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "t"    # Landroid/renderscript/Type;

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 269
    iget-object v1, p1, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 270
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Adapters cannot be nested."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Element must match Allocation type."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    :cond_2
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Adapters do not support window types with Mipmaps or Faces."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 282
    .local v0, "at":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-gt v1, v4, :cond_4

    .line 283
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 287
    :cond_4
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Type cannot have dimension larger than the source allocation."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_5
    invoke-virtual {p2}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v4

    if-gt v1, v4, :cond_4

    .line 285
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v4

    if-gt v1, v4, :cond_4

    .line 290
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 291
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p2, v7}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-ge v7, v1, :cond_7

    .line 292
    invoke-virtual {p2, v7}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    invoke-virtual {v0, v7}, Landroid/renderscript/Type;->getArray(I)I

    move-result v4

    if-le v1, v4, :cond_6

    .line 293
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Type cannot have dimension larger than the source allocation."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 299
    .end local v7    # "i":I
    :cond_7
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {p2, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {p0, v4, v5, v8, v9}, Landroid/renderscript/RenderScript;->nAllocationAdapterCreate(JJ)J

    move-result-wide v2

    .line 300
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    .line 301
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v4, "AllocationAdapter creation failed."

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_8
    new-instance v1, Landroid/renderscript/AllocationAdapter;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/AllocationAdapter;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V

    return-object v1
.end method

.method private updateOffsets()V
    .locals 13

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 73
    const/4 v9, 0x0

    .local v9, "a1":I
    const/4 v10, 0x0

    .local v10, "a2":I
    const/4 v11, 0x0

    .local v11, "a3":I
    const/4 v12, 0x0

    .line 75
    .local v12, "a4":I
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v9, v0, v1

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v10, v0, v2

    .line 82
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    if-le v0, v2, :cond_2

    .line 83
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v11, v0, v2

    .line 85
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    if-le v0, v3, :cond_3

    .line 86
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v12, v0, v3

    .line 89
    :cond_3
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/AllocationAdapter;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    iget v6, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    .line 90
    iget v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v8, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 89
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->nAllocationAdapterOffset(JIIIIIIIII)V

    .line 72
    return-void
.end method


# virtual methods
.method initLOD(I)V
    .locals 8
    .param p1, "lod"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 40
    if-gez p1, :cond_0

    .line 41
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attempting to set negative lod ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 44
    :cond_0
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 45
    .local v1, "tx":I
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 46
    .local v2, "ty":I
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v4}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    .line 48
    .local v3, "tz":I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    if-ge v0, p1, :cond_5

    .line 49
    if-ne v1, v6, :cond_1

    if-ne v2, v6, :cond_1

    if-ne v3, v6, :cond_1

    .line 50
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attempting to set lod ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") out of range."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_1
    if-le v1, v6, :cond_2

    shr-int/lit8 v1, v1, 0x1

    .line 54
    :cond_2
    if-le v2, v6, :cond_3

    shr-int/lit8 v2, v2, 0x1

    .line 55
    :cond_3
    if-le v3, v6, :cond_4

    shr-int/lit8 v3, v3, 0x1

    .line 48
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_5
    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    .line 59
    iput v2, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    .line 60
    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    .line 61
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 62
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    if-le v4, v6, :cond_6

    .line 63
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 65
    :cond_6
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    if-le v4, v6, :cond_7

    .line 66
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    .line 68
    :cond_7
    iput v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    .line 69
    iput v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    .line 39
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 2
    .param p1, "dimX"    # I

    .prologue
    monitor-enter p0

    .line 313
    :try_start_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Resize not allowed for Adapters."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setArray(II)V
    .locals 2
    .param p1, "arrayNum"    # I
    .param p2, "arrayVal"    # I

    .prologue
    .line 214
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set arrayNum when the allocation type does not include arrayNum dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 218
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set arrayNum greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 221
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set arrayNum when the adapter includes arrayNum."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 224
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set (arrayNum + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_3
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aput p2, v0, p1

    .line 228
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 213
    return-void
.end method

.method public setFace(Landroid/renderscript/Type$CubemapFace;)V
    .locals 2
    .param p1, "cf"    # Landroid/renderscript/Type$CubemapFace;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set Face when the allocation type does not include faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set face when the adapter includes faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    if-nez p1, :cond_2

    .line 130
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Cannot set null face."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    iput-object p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 134
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 122
    return-void
.end method

.method public setLOD(I)V
    .locals 2
    .param p1, "lod"    # I

    .prologue
    .line 104
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set LOD when the allocation type does not include mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    .line 112
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    .line 113
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 103
    return-void
.end method

.method public setX(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 147
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set X greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 150
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set X when the adapter includes X."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 153
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set (X + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    .line 157
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 145
    return-void
.end method

.method public setY(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 168
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set Y when the allocation type does not include Y dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 172
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set Y greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 175
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set Y when the adapter includes Y."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 178
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set (Y + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    .line 182
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 167
    return-void
.end method

.method public setZ(I)V
    .locals 2
    .param p1, "z"    # I

    .prologue
    .line 193
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set Z when the allocation type does not include Z dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 197
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set Z greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 200
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set Z when the adapter includes Z."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 203
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cannot set (Z + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_3
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    .line 207
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 192
    return-void
.end method
