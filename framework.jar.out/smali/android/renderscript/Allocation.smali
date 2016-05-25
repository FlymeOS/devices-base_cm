.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$1;,
        Landroid/renderscript/Allocation$OnBufferAvailableListener;,
        Landroid/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field public static final USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/renderscript/Allocation;

.field mBitmap:Landroid/graphics/Bitmap;

.field mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field mConstrainedFace:Z

.field mConstrainedLOD:Z

.field mConstrainedY:Z

.field mConstrainedZ:Z

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field mReadAllowed:Z

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 1370
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1372
    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1373
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "t"    # Landroid/renderscript/Type;
    .param p5, "usage"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 305
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 65
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    .line 66
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 70
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 306
    and-int/lit16 v1, p5, -0x100

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unknown usage specified."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    and-int/lit8 v1, p5, 0x20

    if-eqz v1, :cond_1

    .line 318
    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 320
    and-int/lit8 v1, p5, -0x24

    if-eqz v1, :cond_1

    .line 323
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Invalid usage combination."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_1
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 328
    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 330
    if-eqz p4, :cond_2

    .line 334
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Allocation;->mSize:I

    .line 335
    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 338
    :cond_2
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    .prologue
    .line 854
    const-wide/32 v0, 0x8000

    const-string v2, "copy1DRangeFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 855
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v8, v0, p2

    .line 856
    .local v8, "dataSize":I
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p5

    invoke-direct {p0, p1, p2, v0, v8}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 857
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v5, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move v6, p2

    move-object v7, p3

    move-object v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;)V

    .line 858
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 859
    return-void
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 16
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    .prologue
    .line 1193
    const-wide/32 v2, 0x8000

    const-string v4, "copy3DRangeFromUnchecked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1195
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p8

    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v14, p9, v2

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v3 .. v15}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;)V

    .line 1198
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1199
    return-void
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 12
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    .prologue
    const-wide/32 v10, 0x8000

    const/4 v1, 0x0

    .line 590
    const-string v0, "copyFromUnchecked"

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 591
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 592
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 593
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 599
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    return-void

    .line 594
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 595
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0

    .line 597
    :cond_1
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0
.end method

.method private copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 6
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    .prologue
    const-wide/32 v4, 0x8000

    .line 1264
    const-string v0, "copyTo"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1265
    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mSize:I

    if-ge v0, v1, :cond_0

    .line 1266
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1270
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;)V

    .line 1271
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1272
    return-void
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1667
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1621
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1623
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1624
    .local v7, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1626
    .local v11, "width":I
    rem-int/lit8 v5, v11, 0x6

    if-eqz v5, :cond_0

    .line 1627
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Cubemap height must be multiple of 6"

    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1629
    :cond_0
    div-int/lit8 v5, v11, 0x6

    if-eq v5, v7, :cond_1

    .line 1630
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Only square cube map faces supported"

    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1632
    :cond_1
    add-int/lit8 v5, v7, -0x1

    and-int/2addr v5, v7

    if-nez v5, :cond_2

    move v8, v1

    .line 1633
    .local v8, "isPow2":Z
    :goto_0
    if-nez v8, :cond_3

    .line 1634
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Only power of 2 cube faces supported"

    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v8    # "isPow2":Z
    :cond_2
    move v8, v4

    .line 1632
    goto :goto_0

    .line 1637
    .restart local v8    # "isPow2":Z
    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 1638
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v10, Landroid/renderscript/Type$Builder;

    invoke-direct {v10, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1639
    .local v10, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v10, v7}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1640
    invoke-virtual {v10, v7}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1641
    invoke-virtual {v10, v1}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 1642
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v5, :cond_4

    :goto_1
    invoke-virtual {v10, v1}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 1643
    invoke-virtual {v10}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v9

    .line 1645
    .local v9, "t":Landroid/renderscript/Type;
    invoke-virtual {v9, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, p0

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v2

    .line 1646
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 1647
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load failed for bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v2    # "id":J
    .end local v9    # "t":Landroid/renderscript/Type;
    :cond_4
    move v1, v4

    .line 1642
    goto :goto_1

    .line 1649
    .restart local v2    # "id":J
    .restart local v9    # "t":Landroid/renderscript/Type;
    :cond_5
    new-instance v1, Landroid/renderscript/Allocation;

    move-object v4, p0

    move-object v5, v9

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    return-object v1
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1762
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;
    .param p7, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p8, "usage"    # I

    .prologue
    .line 1698
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1699
    .local v5, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, v5, :cond_1

    .line 1705
    :cond_0
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string v10, "Only square cube map faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1707
    :cond_1
    add-int/lit8 v9, v5, -0x1

    and-int/2addr v9, v5

    if-nez v9, :cond_2

    const/4 v6, 0x1

    .line 1708
    .local v6, "isPow2":Z
    :goto_0
    if-nez v6, :cond_3

    .line 1709
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string v10, "Only power of 2 cube faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1707
    .end local v6    # "isPow2":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1712
    .restart local v6    # "isPow2":Z
    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v4

    .line 1713
    .local v4, "e":Landroid/renderscript/Element;
    new-instance v8, Landroid/renderscript/Type$Builder;

    invoke-direct {v8, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1714
    .local v8, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1715
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1716
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 1717
    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p7

    if-ne v0, v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 1718
    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    .line 1719
    .local v7, "t":Landroid/renderscript/Type;
    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p0, v7, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 1721
    .local v3, "cubemap":Landroid/renderscript/Allocation;
    invoke-static {p0, v3}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object v2

    .line 1722
    .local v2, "adapter":Landroid/renderscript/AllocationAdapter;
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1723
    invoke-virtual {v2, p1}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1724
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1725
    invoke-virtual {v2, p2}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1726
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1727
    invoke-virtual {v2, p3}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1728
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1729
    invoke-virtual {v2, p4}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1730
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1731
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1732
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1733
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1735
    return-object v3

    .line 1717
    .end local v2    # "adapter":Landroid/renderscript/AllocationAdapter;
    .end local v3    # "cubemap":Landroid/renderscript/Allocation;
    .end local v7    # "t":Landroid/renderscript/Type;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1596
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1599
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 15
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 1510
    const-wide/32 v6, 0x8000

    const-string v8, "createFromBitmap"

    invoke-static {v6, v7, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1511
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1514
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1515
    move/from16 v0, p3

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_0

    .line 1516
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1518
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1519
    .local v13, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1520
    .local v2, "c":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1521
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v13, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 1547
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v13    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 1524
    :cond_1
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v14

    .line 1527
    .local v14, "t":Landroid/renderscript/Type;
    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_3

    invoke-virtual {v14}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x83

    move/from16 v0, p3

    if-ne v0, v6, :cond_3

    .line 1530
    invoke-virtual {v14, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v3, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v4

    .line 1531
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 1532
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1536
    :cond_2
    new-instance v3, Landroid/renderscript/Allocation;

    move-object v6, p0

    move-object v7, v14

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 1537
    .local v3, "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1542
    .end local v3    # "alloc":Landroid/renderscript/Allocation;
    .end local v4    # "id":J
    :cond_3
    invoke-virtual {v14, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    move-object/from16 v0, p2

    iget v10, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v7, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v4

    .line 1543
    .restart local v4    # "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 1544
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1546
    :cond_4
    const-wide/32 v6, 0x8000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1547
    new-instance v7, Landroid/renderscript/Allocation;

    move-wide v8, v4

    move-object v10, p0

    move-object v11, v14

    move/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    move-object v3, v7

    goto :goto_0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 1817
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1818
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1822
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    .prologue
    .line 1788
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1789
    and-int/lit16 v2, p4, 0xe0

    if-eqz v2, :cond_0

    .line 1790
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1792
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1793
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1794
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1795
    return-object v0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    .prologue
    .line 1839
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1840
    const/4 v1, 0x0

    .line 1842
    .local v1, "allocArray":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1843
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    array-length v4, v1

    invoke-static {p0, v3, v4, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1844
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    return-object v0

    .line 1847
    .end local v0    # "alloc":Landroid/renderscript/Allocation;
    :catch_0
    move-exception v2

    .line 1848
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Could not convert string to utf-8."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I

    .prologue
    .line 1464
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    .prologue
    const-wide/32 v10, 0x8000

    const-wide/16 v6, 0x0

    .line 1440
    const-string v1, "createSized"

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1441
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1442
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1443
    .local v0, "b":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1444
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v8

    .line 1446
    .local v8, "t":Landroid/renderscript/Type;
    invoke-virtual {v8, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v4, v1, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    .line 1447
    .local v2, "id":J
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 1448
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Allocation creation failed."

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1450
    :cond_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1451
    new-instance v1, Landroid/renderscript/Allocation;

    move-object v4, p0

    move-object v5, v8

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;

    .prologue
    .line 1424
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "usage"    # I

    .prologue
    .line 1411
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const-wide/32 v8, 0x8000

    const-wide/16 v6, 0x0

    .line 1386
    const-string v0, "createTyped"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1387
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1388
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 1389
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    .line 1392
    .local v2, "id":J
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 1393
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1396
    new-instance v1, Landroid/renderscript/Allocation;

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    return-object v1
.end method

.method private data1DChecks(IIII)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "len"    # I
    .param p4, "dataSize"    # I

    .prologue
    .line 822
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 823
    if-gez p1, :cond_0

    .line 824
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 827
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_1
    add-int v0, p1, p2

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-le v0, v1, :cond_2

    .line 830
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_2
    if-ge p3, p4, :cond_3

    .line 834
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_3
    return-void
.end method

.method static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1468
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 1469
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 1470
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    .line 1479
    :goto_0
    return-object v1

    .line 1472
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 1473
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1475
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 1476
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1478
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 1479
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1481
    :cond_3
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getIDSafe()J
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    .line 249
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    goto :goto_0
.end method

.method static sendBufferNotification(J)V
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 1876
    sget-object v2, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1877
    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    .line 1879
    .local v0, "a":Landroid/renderscript/Allocation;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    if-eqz v1, :cond_0

    .line 1880
    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    invoke-interface {v1, v0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V

    .line 1882
    :cond_0
    monitor-exit v2

    .line 1883
    return-void

    .line 1882
    .end local v0    # "a":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 301
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 302
    return-void
.end method

.method static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/renderscript/Allocation$MipmapControl;

    .prologue
    .line 1486
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 1487
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1488
    .local v1, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1489
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1490
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 1491
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2

    .line 1490
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCacheInfo(Landroid/renderscript/Type;)V
    .locals 3
    .param p1, "t"    # Landroid/renderscript/Type;

    .prologue
    const/4 v2, 0x1

    .line 288
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 289
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 290
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 291
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 292
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v2, :cond_0

    .line 293
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 295
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v2, :cond_1

    .line 296
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 298
    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 1027
    :cond_0
    return-void

    .line 1017
    :cond_1
    if-ltz p1, :cond_2

    if-gez p2, :cond_3

    .line 1018
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_3
    if-ltz p4, :cond_4

    if-gez p3, :cond_5

    .line 1021
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_5
    add-int v0, p1, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v1, :cond_0

    .line 1024
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I

    .prologue
    .line 1171
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 1185
    :cond_0
    return-void

    .line 1175
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 1176
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_3
    if-ltz p5, :cond_4

    if-ltz p4, :cond_4

    if-gez p6, :cond_5

    .line 1179
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_5
    add-int v0, p1, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p5

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_6

    add-int v0, p3, p6

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v1, :cond_0

    .line 1182
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x2

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 536
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 537
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_0
    sget-object v1, Landroid/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 581
    :cond_1
    return-void

    .line 541
    :pswitch_0
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq v1, v2, :cond_1

    .line 542
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :pswitch_1
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 552
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :pswitch_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 562
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :pswitch_3
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 572
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 584
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 585
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    return-void
.end method

.method private validateIsFloat32()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 371
    :cond_0
    return-void

    .line 373
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt32()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 362
    :cond_0
    return-void

    .line 364
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt64()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 353
    :cond_0
    return-void

    .line 355
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt8()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 380
    :cond_0
    return-void

    .line 382
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsObject()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 413
    :cond_0
    return-void

    .line 415
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .locals 4
    .param p1, "d"    # Ljava/lang/Object;
    .param p2, "checkType"    # Z

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 82
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, "cmp":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an Array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 91
    if-eqz p2, :cond_2

    .line 92
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    .line 93
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 135
    :goto_0
    return-object v2

    .line 95
    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 98
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 99
    if-eqz p2, :cond_4

    .line 100
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 101
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 103
    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 106
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 107
    if-eqz p2, :cond_6

    .line 108
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 109
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 111
    :cond_6
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 114
    :cond_7
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    .line 115
    if-eqz p2, :cond_8

    .line 116
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 117
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 119
    :cond_8
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 122
    :cond_9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b

    .line 123
    if-eqz p2, :cond_a

    .line 124
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 126
    :cond_a
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 129
    :cond_b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_d

    .line 130
    if-eqz p2, :cond_c

    .line 131
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    .line 133
    :cond_c
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    goto :goto_0

    .line 135
    :cond_d
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .locals 18
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/renderscript/Allocation;
    .param p4, "dataOff"    # I

    .prologue
    .line 1005
    const-wide/32 v2, 0x8000

    const-string v4, "copy1DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v14, p4

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 1010
    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 934
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 937
    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 977
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 978
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 979
    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 991
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 992
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 993
    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 949
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 950
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 951
    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 963
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 964
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 965
    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 870
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 873
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 908
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 909
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 920
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 921
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 884
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 885
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 896
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 897
    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .locals 18
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    .prologue
    .line 1135
    const-wide/32 v2, 0x8000

    const-string v4, "copy2DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1137
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 1142
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1143
    return-void
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v8, 0x8000

    .line 1050
    const-string v0, "copy2DRangeFrom"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1051
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1054
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1055
    return-void
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 1068
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1069
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1071
    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 1116
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1117
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1119
    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 1100
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1101
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1103
    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 1084
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 1085
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1087
    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v10, 0x8000

    const/4 v4, 0x0

    .line 1155
    const-string v1, "copy2DRangeFrom"

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1156
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1157
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1158
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1159
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1160
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1161
    invoke-virtual {p0, p1, p2, v9}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V

    .line 1168
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 1164
    :cond_0
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1165
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1166
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v4, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v7, v4, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v4, p1

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V

    .line 1167
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 15
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    .prologue
    .line 1031
    const-wide/32 v2, 0x8000

    const-string v4, "copy2DRangeFromUnchecked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1032
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1033
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1034
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    iget v8, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p6

    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v13, p7, v2

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;)V

    .line 1036
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1037
    return-void
.end method

.method public copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .locals 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # Landroid/renderscript/Allocation;
    .param p8, "dataXoff"    # I
    .param p9, "dataYoff"    # I
    .param p10, "dataZoff"    # I

    .prologue
    .line 1240
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1241
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    move-object/from16 v0, p7

    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    .line 1245
    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    .prologue
    .line 1215
    const-wide/32 v2, 0x8000

    const-string v4, "copy3DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1216
    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v11}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1219
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1220
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v6, 0x8000

    const/4 v5, 0x0

    .line 738
    const-string v2, "copyFrom"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 739
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 740
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 742
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 743
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 744
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 751
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 747
    :cond_0
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 748
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 749
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V

    .line 750
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .locals 10
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 760
    const-string v0, "copyFrom"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 761
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 762
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Types of allocations must match."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_0
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V

    .line 766
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 767
    return-void
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 4
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v2, 0x8000

    .line 670
    const-string v0, "copyFrom"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 673
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 674
    return-void
.end method

.method public copyFrom([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 708
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 709
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 710
    return-void
.end method

.method public copyFrom([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 720
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 721
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 722
    return-void
.end method

.method public copyFrom([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 684
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 685
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 686
    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 10
    .param p1, "d"    # [Landroid/renderscript/BaseObj;

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v6, 0x0

    .line 510
    const-string v2, "copyFrom"

    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 511
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 512
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    .line 513
    array-length v2, p1

    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-eq v2, v3, :cond_0

    .line 514
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_0
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 519
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [J

    .line 520
    .local v1, "i":[J
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 521
    mul-int/lit8 v2, v0, 0x4

    aget-object v3, p1, v0

    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v6, v2, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    .line 531
    .end local v1    # "i":[J
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    return-void

    .line 525
    .end local v0    # "ct":I
    :cond_2
    array-length v2, p1

    new-array v1, v2, [I

    .line 526
    .local v1, "i":[I
    const/4 v0, 0x0

    .restart local v0    # "ct":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 527
    aget-object v2, p1, v0

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v1, v0

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 529
    :cond_3
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v6, v2, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    goto :goto_1
.end method

.method public copyFrom([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 696
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 697
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 698
    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 4
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v2, 0x8000

    .line 610
    const-string v0, "copyFromUnchecked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 613
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 614
    return-void
.end method

.method public copyFromUnchecked([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 646
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 647
    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 657
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 658
    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 624
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 625
    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 635
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 636
    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v4, 0x8000

    .line 1255
    const-string v0, "copyTo"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1256
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1257
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1258
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1259
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V

    .line 1260
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1261
    return-void
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 1283
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1285
    return-void
.end method

.method public copyTo([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 1295
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1296
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1297
    return-void
.end method

.method public copyTo([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 1331
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1332
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1333
    return-void
.end method

.method public copyTo([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 1319
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1320
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1321
    return-void
.end method

.method public copyTo([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 1307
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 1308
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1309
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 348
    return-void
.end method

.method public generateMipmaps()V
    .locals 4

    .prologue
    .line 849
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    .line 850
    return-void
.end method

.method public getBytesSize()I
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 4

    .prologue
    .line 1559
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not a surface texture."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1562
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x8000

    .line 494
    const-string v0, "ioReceive"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 495
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 500
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)V

    .line 501
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 502
    return-void
.end method

.method public ioSend()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x8000

    .line 478
    const-string v0, "ioSend"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 479
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 484
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V

    .line 485
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 486
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .param p1, "dimX"    # I

    .prologue
    .line 1352
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1353
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Resize is not allowed in API 21+."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1355
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1356
    :cond_1
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Resize only support for 1D allocations at this time."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1358
    :cond_2
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    .line 1359
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    .line 1361
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 1362
    .local v0, "typeID":J
    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 1363
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    .line 1364
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1365
    monitor-exit p0

    return-void
.end method

.method public setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .locals 9
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 799
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 800
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-lt p2, v1, :cond_0

    .line 801
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_0
    if-gez p1, :cond_1

    .line 804
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 807
    :cond_1
    invoke-virtual {p3}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    .line 808
    .local v7, "data":[B
    invoke-virtual {p3}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v8

    .line 809
    .local v8, "data_length":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 810
    .local v0, "eSize":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    aget v1, v1, p2

    mul-int/2addr v0, v1

    .line 812
    if-eq v8, v0, :cond_2

    .line 813
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 817
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v5, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nAllocationElementData1D(JIII[BI)V

    .line 819
    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 777
    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->validate()V

    .line 778
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    .line 779
    .local v3, "eSize":I
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 780
    .local v1, "data":[B
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v2

    .line 782
    .local v2, "data_length":I
    div-int v0, v2, v3

    .line 783
    .local v0, "count":I
    mul-int v4, v3, v0

    if-eq v4, v2, :cond_0

    .line 784
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field packer length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not divisible by element size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 787
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 788
    return-void
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 6
    .param p1, "callback"    # Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .prologue
    .line 1869
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1870
    :try_start_0
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 1872
    monitor-exit v1

    .line 1873
    return-void

    .line 1872
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "sur"    # Landroid/view/Surface;

    .prologue
    .line 1572
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1573
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 1574
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    .line 1578
    return-void
.end method

.method public syncAll(I)V
    .locals 6
    .param p1, "srcLocation"    # I

    .prologue
    const-wide/32 v4, 0x8000

    .line 446
    const-string/jumbo v0, "syncAll"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 447
    sparse-switch p1, :sswitch_data_0

    .line 463
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Source must be exactly one usage type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :sswitch_0
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 465
    :cond_0
    :goto_0
    :sswitch_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 466
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V

    .line 467
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 468
    return-void

    .line 458
    :sswitch_2
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method updateFromNative()V
    .locals 6

    .prologue
    .line 421
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 422
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 423
    .local v0, "typeID":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 424
    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 425
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    .line 426
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 428
    :cond_0
    return-void
.end method
