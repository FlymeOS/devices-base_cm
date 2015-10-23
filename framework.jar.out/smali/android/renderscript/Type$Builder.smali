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
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 309
    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    .line 310
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 311
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 312
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 12

    .prologue
    const/4 v2, 0x1

    .line 383
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-lez v1, :cond_2

    .line 384
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_1

    .line 385
    :cond_0
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Both X and Y dimension required when Z is present."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_1
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_2

    .line 388
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps not supported with 3D types."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_2
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_3

    .line 392
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-ge v1, v2, :cond_3

    .line 393
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "X dimension required when Y is present."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_3
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_4

    .line 397
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_4

    .line 398
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps require 2D Types."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_4
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_6

    .line 403
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v1, :cond_6

    .line 404
    :cond_5
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "YUV only supports basic 2D."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_6
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v5, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v6, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v7, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v8, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v9, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 410
    .local v10, "id":J
    new-instance v0, Landroid/renderscript/Type;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v10, v11, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 411
    .local v0, "t":Landroid/renderscript/Type;
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v1, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 412
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v1, v0, Landroid/renderscript/Type;->mDimX:I

    .line 413
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v1, v0, Landroid/renderscript/Type;->mDimY:I

    .line 414
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v1, v0, Landroid/renderscript/Type;->mDimZ:I

    .line 415
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v1, v0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 416
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v1, v0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 417
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v1, v0, Landroid/renderscript/Type;->mDimYuv:I

    .line 419
    invoke-virtual {v0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 420
    return-object v0
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 351
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 346
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 321
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 322
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 325
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 329
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 330
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 333
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "yuvFormat"    # I

    .prologue
    .line 361
    sparse-switch p1, :sswitch_data_0

    .line 368
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :sswitch_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 373
    return-object p0

    .line 361
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
    .line 337
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 338
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 341
    return-object p0
.end method
