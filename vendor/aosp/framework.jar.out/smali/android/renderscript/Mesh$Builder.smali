.class public Landroid/renderscript/Mesh$Builder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Builder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mUsage:I

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 215
    iput p2, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 217
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/Mesh$Builder$Entry;

    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    .line 218
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 213
    return-void
.end method


# virtual methods
.method public addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I
    .param p3, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    .line 329
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 330
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 331
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 332
    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 333
    iput-object p3, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 334
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 335
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    const/4 v1, 0x0

    .line 309
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 310
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 311
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 312
    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 313
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 314
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 315
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Type;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    .line 291
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 292
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 293
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 294
    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 295
    iput-object p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 296
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 297
    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 269
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    .line 274
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 275
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 276
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 277
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 278
    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Type;)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .param p1, "t"    # Landroid/renderscript/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    .line 253
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 254
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 255
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 256
    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 20

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/RenderScript;->validate()V

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [J

    .line 352
    .local v15, "vtx":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v7, v0, [J

    .line 353
    .local v7, "idx":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v12, v0, [I

    .line 355
    .local v12, "prim":[I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v14, v0, [Landroid/renderscript/Allocation;

    .line 356
    .local v14, "vertexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v10, v0, [Landroid/renderscript/Allocation;

    .line 357
    .local v10, "indexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v13, v0, [Landroid/renderscript/Mesh$Primitive;

    .line 359
    .local v13, "primitives":[Landroid/renderscript/Mesh$Primitive;
    const/4 v3, 0x0

    .local v3, "ct":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v3, v0, :cond_2

    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    move-object/from16 v16, v0

    aget-object v6, v16, v3

    .line 362
    .local v6, "entry":Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 370
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :goto_1
    aput-object v2, v14, v3

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    aput-wide v16, v15, v3

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_0
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    move-object/from16 v17, v0

    iget v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v2

    .local v2, "alloc":Landroid/renderscript/Allocation;
    goto :goto_1

    .line 368
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_1
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "Builder corrupt, no valid element in entry."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 374
    .end local v2    # "alloc":Landroid/renderscript/Allocation;
    .end local v6    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_6

    .line 375
    const/4 v2, 0x0

    .line 376
    .restart local v2    # "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/renderscript/Mesh$Builder$Entry;

    .line 377
    .restart local v6    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 385
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :goto_3
    if-nez v2, :cond_5

    const-wide/16 v4, 0x0

    .line 386
    .local v4, "allocID":J
    :goto_4
    aput-object v2, v10, v3

    .line 387
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    move-object/from16 v16, v0

    aput-object v16, v13, v3

    .line 389
    aput-wide v4, v7, v3

    .line 390
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/renderscript/Mesh$Primitive;->mID:I

    move/from16 v16, v0

    aput v16, v12, v3

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 379
    .end local v4    # "allocID":J
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_3
    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    iget-object v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    move-object/from16 v17, v0

    iget v0, v6, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v2

    .local v2, "alloc":Landroid/renderscript/Allocation;
    goto :goto_3

    .line 383
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_4
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "Builder corrupt, no valid element in entry."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 385
    .local v2, "alloc":Landroid/renderscript/Allocation;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    .restart local v4    # "allocID":J
    goto :goto_4

    .line 393
    .end local v2    # "alloc":Landroid/renderscript/Allocation;
    .end local v4    # "allocID":J
    .end local v6    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v7, v12}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    move-result-wide v8

    .line 394
    .local v8, "id":J
    new-instance v11, Landroid/renderscript/Mesh;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v8, v9, v0}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 395
    .local v11, "newMesh":Landroid/renderscript/Mesh;
    iput-object v14, v11, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 396
    iput-object v10, v11, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 397
    iput-object v13, v11, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 399
    return-object v11
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 2
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I

    .prologue
    .line 339
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 340
    .local v0, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    return-object v1
.end method
