.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArray:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    .line 351
    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    .line 352
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 353
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 350
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 14

    .prologue
    const/4 v2, 0x1

    .line 442
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-lez v1, :cond_2

    .line 443
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_1

    .line 444
    :cond_0
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Both X and Y dimension required when Z is present."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_1
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_2

    .line 447
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Cube maps not supported with 3D types."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_2
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_3

    .line 451
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-ge v1, v2, :cond_3

    .line 452
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "X dimension required when Y is present."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_3
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_4

    .line 456
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_4

    .line 457
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Cube maps require 2D Types."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_4
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_6

    .line 462
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v1, :cond_6

    .line 463
    :cond_5
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "YUV only supports basic 2D."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_6
    const/4 v0, 0x0

    .line 468
    .local v0, "arrays":[I
    const/4 v10, 0x3

    .end local v0    # "arrays":[I
    .local v10, "ct":I
    :goto_0
    if-ltz v10, :cond_9

    .line 469
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aget v1, v1, v10

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 470
    new-array v0, v10, [I

    .line 472
    :cond_7
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aget v1, v1, v10

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 473
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Array dimensions must be contigous from 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 477
    :cond_9
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    .line 478
    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v5, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v6, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v7, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v8, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v9, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 477
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v12

    .line 479
    .local v12, "id":J
    new-instance v11, Landroid/renderscript/Type;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v11, v12, v13, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 480
    .local v11, "t":Landroid/renderscript/Type;
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v1, v11, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 481
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v1, v11, Landroid/renderscript/Type;->mDimX:I

    .line 482
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v1, v11, Landroid/renderscript/Type;->mDimY:I

    .line 483
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v1, v11, Landroid/renderscript/Type;->mDimZ:I

    .line 484
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v1, v11, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 485
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v1, v11, Landroid/renderscript/Type;->mDimFaces:Z

    .line 486
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v1, v11, Landroid/renderscript/Type;->mDimYuv:I

    .line 487
    iput-object v0, v11, Landroid/renderscript/Type;->mArrays:[I

    .line 489
    invoke-virtual {v11}, Landroid/renderscript/Type;->calcElementCount()V

    .line 490
    return-object v11
.end method

.method public setArray(II)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "dim"    # I
    .param p2, "value"    # I

    .prologue
    .line 396
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 397
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Array dimension out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    aput p2, v0, p1

    .line 400
    return-object p0
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 410
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 405
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 363
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 364
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 367
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 371
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 372
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 375
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "yuvFormat"    # I

    .prologue
    .line 420
    sparse-switch p1, :sswitch_data_0

    .line 427
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 428
    const-string/jumbo v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    .line 427
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :sswitch_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 432
    return-object p0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x23 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 379
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 380
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 383
    return-object p0
.end method
