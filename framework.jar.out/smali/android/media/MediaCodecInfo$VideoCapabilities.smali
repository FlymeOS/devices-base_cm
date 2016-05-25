.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .locals 6
    .param p1, "widthAlignment"    # I
    .param p2, "heightAlignment"    # I

    .prologue
    .line 1291
    const-string/jumbo v0, "widthAlignment must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1292
    const-string v0, "heightAlignment must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1294
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_1

    .line 1296
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v3

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v4

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 1302
    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1303
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1305
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1306
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1307
    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 7
    .param p1, "blockWidth"    # I
    .param p2, "blockHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p4, "rates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local p5, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v6, 0x1

    .line 1253
    const-string v3, "blockWidth must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p1, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1254
    const-string v3, "blockHeight must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1256
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1257
    .local v2, "newBlockWidth":I
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1260
    .local v1, "newBlockHeight":I
    mul-int v3, v2, v1

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v3, v4

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v0, v3, v4

    .line 1262
    .local v0, "factor":I
    if-eq v0, v6, :cond_0

    .line 1263
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1264
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1266
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v2, v5

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1270
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v2, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1272
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1275
    :cond_0
    mul-int v3, v2, v1

    div-int/2addr v3, p1

    div-int v0, v3, p2

    .line 1276
    if-eq v0, v6, :cond_1

    .line 1277
    invoke-static {p3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    .line 1278
    int-to-long v4, v0

    invoke-static {p4, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    .line 1279
    div-int v3, v1, p2

    div-int v4, v2, p1

    invoke-static {p5, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    .line 1283
    :cond_1
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1284
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v3, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1285
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v3, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1286
    iput v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1287
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1288
    return-void
.end method

.method private applyLevelLimits()V
    .locals 48

    .prologue
    .line 1382
    const/16 v40, 0x0

    .line 1383
    .local v40, "maxBlocksPerSecond":I
    const/4 v5, 0x0

    .line 1384
    .local v5, "maxBlocks":I
    const/16 v41, 0x0

    .line 1385
    .local v41, "maxBps":I
    const/16 v42, 0x0

    .line 1387
    .local v42, "maxDPBBlocks":I
    const/16 v37, 0x4

    .line 1388
    .local v37, "errors":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v46, v0

    .line 1389
    .local v46, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v44

    .line 1391
    .local v44, "mime":Ljava/lang/String;
    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1392
    const/16 v5, 0x63

    .line 1393
    const/16 v40, 0x5cd

    .line 1394
    const v41, 0xfa00

    .line 1395
    const/16 v42, 0x18c

    .line 1396
    move-object/from16 v36, v46

    .local v36, "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .local v39, "len$":I
    const/16 v38, 0x0

    .local v38, "i$":I
    :goto_0
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    aget-object v45, v36, v38

    .line 1397
    .local v45, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v34, 0x0

    .local v34, "MBPS":I
    const/16 v32, 0x0

    .local v32, "FS":I
    const/16 v28, 0x0

    .local v28, "BR":I
    const/16 v29, 0x0

    .line 1398
    .local v29, "DPB":I
    const/16 v47, 0x1

    .line 1399
    .local v47, "supported":Z
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_0

    .line 1435
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    or-int/lit8 v37, v37, 0x1

    .line 1439
    :goto_1
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v2, :sswitch_data_1

    .line 1456
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    or-int/lit8 v37, v37, 0x1

    .line 1459
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1461
    :goto_2
    if-eqz v47, :cond_0

    .line 1462
    and-int/lit8 v37, v37, -0x5

    .line 1464
    :cond_0
    move/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1465
    move/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1466
    move/from16 v0, v28

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 1467
    move/from16 v0, v42

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 1396
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 1401
    :sswitch_0
    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x40

    const/16 v29, 0x18c

    goto :goto_1

    .line 1403
    :sswitch_1
    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x80

    const/16 v29, 0x18c

    goto :goto_1

    .line 1405
    :sswitch_2
    const/16 v34, 0xbb8

    const/16 v32, 0x18c

    const/16 v28, 0xc0

    const/16 v29, 0x384

    goto :goto_1

    .line 1407
    :sswitch_3
    const/16 v34, 0x1770

    const/16 v32, 0x18c

    const/16 v28, 0x180

    const/16 v29, 0x948

    goto :goto_1

    .line 1409
    :sswitch_4
    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x300

    const/16 v29, 0x948

    goto/16 :goto_1

    .line 1411
    :sswitch_5
    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x7d0

    const/16 v29, 0x948

    goto/16 :goto_1

    .line 1413
    :sswitch_6
    const/16 v34, 0x4d58

    const/16 v32, 0x318

    const/16 v28, 0xfa0

    const/16 v29, 0x1290

    goto/16 :goto_1

    .line 1415
    :sswitch_7
    const/16 v34, 0x4f1a

    const/16 v32, 0x654

    const/16 v28, 0xfa0

    const/16 v29, 0x1fa4

    goto/16 :goto_1

    .line 1417
    :sswitch_8
    const v34, 0x9e34

    const/16 v32, 0x654

    const/16 v28, 0x2710

    const/16 v29, 0x1fa4

    goto/16 :goto_1

    .line 1419
    :sswitch_9
    const v34, 0x1a5e0

    const/16 v32, 0xe10

    const/16 v28, 0x36b0

    const/16 v29, 0x4650

    goto/16 :goto_1

    .line 1421
    :sswitch_a
    const v34, 0x34bc0

    const/16 v32, 0x1400

    const/16 v28, 0x4e20

    const/16 v29, 0x5000

    goto/16 :goto_1

    .line 1423
    :sswitch_b
    const v34, 0x3c000

    const/16 v32, 0x2000

    const/16 v28, 0x4e20

    const v29, 0x8000

    goto/16 :goto_1

    .line 1425
    :sswitch_c
    const v34, 0x3c000

    const/16 v32, 0x2000

    const v28, 0xc350

    const v29, 0x8000

    goto/16 :goto_1

    .line 1427
    :sswitch_d
    const v34, 0x7f800

    const/16 v32, 0x2200

    const v28, 0xc350

    const v29, 0x8800

    goto/16 :goto_1

    .line 1429
    :sswitch_e
    const/high16 v34, 0x90000

    const/16 v32, 0x5640

    const v28, 0x20f58

    const v29, 0x1af40

    goto/16 :goto_1

    .line 1431
    :sswitch_f
    const/high16 v34, 0xf0000

    const v32, 0x9000

    const v28, 0x3a980

    const v29, 0x2d000

    goto/16 :goto_1

    .line 1433
    :sswitch_10
    const v34, 0x1fa400

    const v32, 0x9000

    const v28, 0x3a980

    const v29, 0x2d000

    goto/16 :goto_1

    .line 1441
    :sswitch_11
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x4e2

    move/from16 v28, v0

    goto/16 :goto_2

    .line 1443
    :sswitch_12
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0xbb8

    move/from16 v28, v0

    goto/16 :goto_2

    .line 1447
    :sswitch_13
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    or-int/lit8 v37, v37, 0x2

    .line 1450
    const/16 v47, 0x0

    .line 1454
    :sswitch_14
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    goto/16 :goto_2

    .line 1470
    .end local v28    # "BR":I
    .end local v29    # "DPB":I
    .end local v32    # "FS":I
    .end local v34    # "MBPS":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v47    # "supported":Z
    :cond_1
    mul-int/lit8 v2, v5, 0x8

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 1471
    .local v3, "maxLengthInBlocks":I
    move/from16 v0, v40

    int-to-long v6, v0

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move v4, v3

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1781
    .end local v3    # "maxLengthInBlocks":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    :goto_3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1782
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v4, v4, v37

    iput v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 1783
    return-void

    .line 1476
    :cond_2
    const-string/jumbo v2, "video/mp4v-es"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1477
    const/16 v7, 0xb

    .local v7, "maxWidth":I
    const/16 v8, 0x9

    .local v8, "maxHeight":I
    const/16 v43, 0xf

    .line 1478
    .local v43, "maxRate":I
    const/16 v5, 0x63

    .line 1479
    const/16 v40, 0x5cd

    .line 1480
    const v41, 0xfa00

    .line 1481
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_4
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    aget-object v45, v36, v38

    .line 1482
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v34, 0x0

    .restart local v34    # "MBPS":I
    const/16 v32, 0x0

    .restart local v32    # "FS":I
    const/16 v28, 0x0

    .restart local v28    # "BR":I
    const/16 v30, 0x0

    .local v30, "FR":I
    const/16 v35, 0x0

    .local v35, "W":I
    const/16 v33, 0x0

    .line 1483
    .local v33, "H":I
    const/16 v47, 0x1

    .line 1484
    .restart local v47    # "supported":Z
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v2, :sswitch_data_2

    .line 1558
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    or-int/lit8 v37, v37, 0x1

    .line 1562
    :goto_5
    if-eqz v47, :cond_3

    .line 1563
    and-int/lit8 v37, v37, -0x5

    .line 1565
    :cond_3
    move/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1566
    move/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1567
    move/from16 v0, v28

    mul-int/lit16 v2, v0, 0x3e8

    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 1568
    move/from16 v0, v35

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1569
    move/from16 v0, v33

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1570
    move/from16 v0, v30

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 1481
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .line 1486
    :sswitch_15
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_3

    .line 1507
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    or-int/lit8 v37, v37, 0x1

    .line 1512
    goto :goto_5

    .line 1488
    :sswitch_16
    const/16 v30, 0xf

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x40

    goto :goto_5

    .line 1490
    :sswitch_17
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x40

    goto/16 :goto_5

    .line 1492
    :sswitch_18
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x80

    goto/16 :goto_5

    .line 1494
    :sswitch_19
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x1734

    const/16 v32, 0x18c

    const/16 v28, 0x80

    goto/16 :goto_5

    .line 1496
    :sswitch_1a
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x180

    goto/16 :goto_5

    .line 1503
    :sswitch_1b
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x180

    .line 1504
    const/16 v47, 0x0

    .line 1505
    goto/16 :goto_5

    .line 1514
    :sswitch_1c
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_4

    .line 1532
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    or-int/lit8 v37, v37, 0x1

    .line 1537
    goto/16 :goto_5

    .line 1517
    :sswitch_1d
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0xb9a

    const/16 v32, 0x63

    const/16 v28, 0x80

    goto/16 :goto_5

    .line 1519
    :sswitch_1e
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x1734

    const/16 v32, 0x18c

    const/16 v28, 0x180

    goto/16 :goto_5

    .line 1521
    :sswitch_1f
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x300

    goto/16 :goto_5

    .line 1528
    :sswitch_20
    const/16 v30, 0x1e

    const/16 v35, 0x2c

    const/16 v33, 0x24

    const/16 v34, 0x5cd0

    const/16 v32, 0x318

    const/16 v28, 0xbb8

    goto/16 :goto_5

    .line 1530
    :sswitch_21
    const/16 v30, 0x1e

    const/16 v35, 0x2d

    const/16 v33, 0x24

    const v34, 0xbdd8

    const/16 v32, 0x654

    const/16 v28, 0x1f40

    goto/16 :goto_5

    .line 1552
    :sswitch_22
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    or-int/lit8 v37, v37, 0x2

    .line 1555
    const/16 v47, 0x0

    .line 1556
    goto/16 :goto_5

    .line 1572
    .end local v28    # "BR":I
    .end local v30    # "FR":I
    .end local v32    # "FS":I
    .end local v33    # "H":I
    .end local v34    # "MBPS":I
    .end local v35    # "W":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v47    # "supported":Z
    :cond_4
    move/from16 v0, v40

    int-to-long v10, v0

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move v9, v5

    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    .line 1577
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    .end local v43    # "maxRate":I
    :cond_5
    const-string/jumbo v2, "video/3gpp"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1578
    const/16 v7, 0xb

    .restart local v7    # "maxWidth":I
    const/16 v8, 0x9

    .restart local v8    # "maxHeight":I
    const/16 v43, 0xf

    .line 1579
    .restart local v43    # "maxRate":I
    const/16 v5, 0x63

    .line 1580
    const/16 v40, 0x5cd

    .line 1581
    const v41, 0xfa00

    .line 1582
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_6
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_6

    aget-object v45, v36, v38

    .line 1583
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v34, 0x0

    .restart local v34    # "MBPS":I
    const/16 v28, 0x0

    .restart local v28    # "BR":I
    const/16 v30, 0x0

    .restart local v30    # "FR":I
    const/16 v35, 0x0

    .restart local v35    # "W":I
    const/16 v33, 0x0

    .line 1584
    .restart local v33    # "H":I
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_5

    .line 1609
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    or-int/lit8 v37, v37, 0x1

    .line 1613
    :goto_7
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v2, :sswitch_data_6

    .line 1625
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    or-int/lit8 v37, v37, 0x1

    .line 1629
    :sswitch_23
    and-int/lit8 v37, v37, -0x5

    .line 1630
    move/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1631
    mul-int v2, v35, v33

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1632
    const v2, 0xfa00

    mul-int v2, v2, v28

    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 1633
    move/from16 v0, v35

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1634
    move/from16 v0, v33

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1635
    move/from16 v0, v30

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 1582
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_6

    .line 1586
    :sswitch_24
    const/16 v30, 0xf

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v28, 0x1

    mul-int/lit8 v34, v30, 0x63

    goto :goto_7

    .line 1589
    :sswitch_25
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x2

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x18c

    move/from16 v34, v0

    goto :goto_7

    .line 1592
    :sswitch_26
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x6

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x18c

    move/from16 v34, v0

    goto/16 :goto_7

    .line 1595
    :sswitch_27
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x20

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x18c

    move/from16 v34, v0

    goto/16 :goto_7

    .line 1598
    :sswitch_28
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v28, 0x2

    mul-int/lit8 v34, v30, 0x63

    goto/16 :goto_7

    .line 1601
    :sswitch_29
    const/16 v30, 0x3c

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x40

    const/16 v2, 0x18c

    mul-int/lit8 v34, v2, 0x32

    goto/16 :goto_7

    .line 1604
    :sswitch_2a
    const/16 v30, 0x3c

    const/16 v35, 0x2d

    const/16 v33, 0x12

    const/16 v28, 0x80

    const/16 v2, 0x32a

    mul-int/lit8 v34, v2, 0x32

    goto/16 :goto_7

    .line 1607
    :sswitch_2b
    const/16 v30, 0x3c

    const/16 v35, 0x2d

    const/16 v33, 0x24

    const/16 v28, 0x100

    const/16 v2, 0x654

    mul-int/lit8 v34, v2, 0x32

    goto/16 :goto_7

    .line 1637
    .end local v28    # "BR":I
    .end local v30    # "FR":I
    .end local v33    # "H":I
    .end local v34    # "MBPS":I
    .end local v35    # "W":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_6
    move/from16 v0, v40

    int-to-long v10, v0

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move v9, v5

    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1641
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    .line 1642
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    .end local v43    # "maxRate":I
    :cond_7
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1644
    :cond_8
    const v40, 0x7fffffff

    move/from16 v5, v40

    .line 1647
    const v41, 0x5f5e100

    .line 1651
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_8
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    aget-object v45, v36, v38

    .line 1652
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v2, :pswitch_data_0

    .line 1659
    :pswitch_0
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    or-int/lit8 v37, v37, 0x1

    .line 1663
    :pswitch_1
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v2, :pswitch_data_1

    .line 1667
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    or-int/lit8 v37, v37, 0x1

    .line 1671
    :pswitch_2
    and-int/lit8 v37, v37, -0x5

    .line 1651
    add-int/lit8 v38, v38, 0x1

    goto :goto_8

    .line 1674
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_9
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v16, 0x10

    .line 1676
    .local v16, "blockSize":I
    :goto_9
    const/16 v11, 0x7fff

    const/16 v12, 0x7fff

    move/from16 v0, v40

    int-to-long v14, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move v13, v5

    move/from16 v17, v16

    invoke-direct/range {v10 .. v19}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    .line 1674
    .end local v16    # "blockSize":I
    :cond_a
    const/16 v16, 0x8

    goto :goto_9

    .line 1679
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    :cond_b
    const-string/jumbo v2, "video/hevc"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1680
    const v5, 0x9000

    .line 1681
    mul-int/lit8 v40, v5, 0xf

    .line 1682
    const v41, 0x1f400

    .line 1683
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_a
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    aget-object v45, v36, v38

    .line 1684
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v30, 0x0

    .line 1685
    .local v30, "FR":D
    const/16 v32, 0x0

    .line 1686
    .restart local v32    # "FS":I
    const/16 v28, 0x0

    .line 1687
    .restart local v28    # "BR":I
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_7

    .line 1736
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    or-int/lit8 v37, v37, 0x1

    .line 1740
    :goto_b
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v2, :pswitch_data_2

    .line 1745
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    or-int/lit8 v37, v37, 0x1

    .line 1757
    :pswitch_3
    and-int/lit8 v37, v37, -0x5

    .line 1758
    move/from16 v0, v32

    int-to-double v10, v0

    mul-double v10, v10, v30

    double-to-int v2, v10

    move/from16 v0, v40

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1759
    move/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1760
    move/from16 v0, v28

    mul-int/lit16 v2, v0, 0x3e8

    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 1683
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_a

    .line 1690
    :sswitch_2c
    const-wide/high16 v30, 0x402e000000000000L    # 15.0

    const v32, 0x9000

    const/16 v28, 0x80

    goto :goto_b

    .line 1693
    :sswitch_2d
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const v32, 0x1e000

    const/16 v28, 0x5dc

    goto :goto_b

    .line 1696
    :sswitch_2e
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const v32, 0x3c000

    const/16 v28, 0xbb8

    goto :goto_b

    .line 1699
    :sswitch_2f
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const v32, 0x87000

    const/16 v28, 0x1770

    goto :goto_b

    .line 1702
    :sswitch_30
    const-wide v30, 0x4040e00000000000L    # 33.75

    const/high16 v32, 0xf0000

    const/16 v28, 0x2710

    goto :goto_b

    .line 1704
    :sswitch_31
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x220000

    const/16 v28, 0x2ee0

    goto/16 :goto_b

    .line 1706
    :sswitch_32
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x220000

    const/16 v28, 0x7530

    goto/16 :goto_b

    .line 1708
    :sswitch_33
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x220000

    const/16 v28, 0x4e20

    goto/16 :goto_b

    .line 1710
    :sswitch_34
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x220000

    const v28, 0xc350

    goto/16 :goto_b

    .line 1712
    :sswitch_35
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x880000

    const/16 v28, 0x61a8

    goto/16 :goto_b

    .line 1714
    :sswitch_36
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x880000

    const v28, 0x186a0

    goto/16 :goto_b

    .line 1716
    :sswitch_37
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x880000

    const v28, 0x9c40

    goto/16 :goto_b

    .line 1718
    :sswitch_38
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x880000

    const v28, 0x27100

    goto/16 :goto_b

    .line 1720
    :sswitch_39
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x880000

    const v28, 0xea60

    goto/16 :goto_b

    .line 1722
    :sswitch_3a
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x880000

    const v28, 0x3a980

    goto/16 :goto_b

    .line 1724
    :sswitch_3b
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x2200000

    const v28, 0xea60

    goto/16 :goto_b

    .line 1726
    :sswitch_3c
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x2200000

    const v28, 0x3a980

    goto/16 :goto_b

    .line 1728
    :sswitch_3d
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x2200000

    const v28, 0x1d4c0

    goto/16 :goto_b

    .line 1730
    :sswitch_3e
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x2200000

    const v28, 0x75300

    goto/16 :goto_b

    .line 1732
    :sswitch_3f
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x2200000

    const v28, 0x3a980

    goto/16 :goto_b

    .line 1734
    :sswitch_40
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x2200000

    const v28, 0xc3500

    goto/16 :goto_b

    .line 1763
    .end local v28    # "BR":I
    .end local v30    # "FR":D
    .end local v32    # "FS":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_c
    mul-int/lit8 v2, v5, 0x8

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 1765
    .restart local v3    # "maxLengthInBlocks":I
    const/16 v2, 0x40

    invoke-static {v5, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    .line 1766
    const/16 v2, 0x40

    move/from16 v0, v40

    invoke-static {v0, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v40

    .line 1767
    const/16 v2, 0x8

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 1769
    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x8

    const/16 v25, 0x8

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v18, p0

    move/from16 v19, v3

    move/from16 v20, v3

    move/from16 v21, v5

    invoke-direct/range {v18 .. v27}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    .line 1775
    .end local v3    # "maxLengthInBlocks":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    :cond_d
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported mime "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const v41, 0xfa00

    .line 1779
    or-int/lit8 v37, v37, 0x2

    goto/16 :goto_3

    .line 1399
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
    .end sparse-switch

    .line 1439
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_14
        0x4 -> :sswitch_13
        0x8 -> :sswitch_11
        0x10 -> :sswitch_12
        0x20 -> :sswitch_13
        0x40 -> :sswitch_13
    .end sparse-switch

    .line 1484
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_22
        0x4 -> :sswitch_22
        0x8 -> :sswitch_22
        0x10 -> :sswitch_22
        0x20 -> :sswitch_22
        0x40 -> :sswitch_22
        0x80 -> :sswitch_22
        0x100 -> :sswitch_22
        0x200 -> :sswitch_22
        0x400 -> :sswitch_22
        0x800 -> :sswitch_22
        0x1000 -> :sswitch_22
        0x2000 -> :sswitch_22
        0x4000 -> :sswitch_22
        0x8000 -> :sswitch_1c
    .end sparse-switch

    .line 1486
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_18
        0x4 -> :sswitch_17
        0x8 -> :sswitch_19
        0x10 -> :sswitch_1a
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1b
    .end sparse-switch

    .line 1514
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_1d
        0x4 -> :sswitch_1d
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1f
        0x20 -> :sswitch_20
        0x40 -> :sswitch_20
        0x80 -> :sswitch_21
    .end sparse-switch

    .line 1584
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_25
        0x4 -> :sswitch_26
        0x8 -> :sswitch_27
        0x10 -> :sswitch_28
        0x20 -> :sswitch_29
        0x40 -> :sswitch_2a
        0x80 -> :sswitch_2b
    .end sparse-switch

    .line 1613
    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_23
        0x4 -> :sswitch_23
        0x8 -> :sswitch_23
        0x10 -> :sswitch_23
        0x20 -> :sswitch_23
        0x40 -> :sswitch_23
        0x80 -> :sswitch_23
        0x100 -> :sswitch_23
    .end sparse-switch

    .line 1652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1663
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 1687
    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_2d
        0x10 -> :sswitch_2e
        0x20 -> :sswitch_2e
        0x40 -> :sswitch_2f
        0x80 -> :sswitch_2f
        0x100 -> :sswitch_30
        0x200 -> :sswitch_30
        0x400 -> :sswitch_31
        0x800 -> :sswitch_32
        0x1000 -> :sswitch_33
        0x2000 -> :sswitch_34
        0x4000 -> :sswitch_35
        0x8000 -> :sswitch_36
        0x10000 -> :sswitch_37
        0x20000 -> :sswitch_38
        0x40000 -> :sswitch_39
        0x80000 -> :sswitch_3a
        0x100000 -> :sswitch_3b
        0x200000 -> :sswitch_3c
        0x400000 -> :sswitch_3d
        0x800000 -> :sswitch_3e
        0x1000000 -> :sswitch_3f
        0x2000000 -> :sswitch_40
    .end sparse-switch

    .line 1740
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 6
    .param p1, "maxHorizontalBlocks"    # I
    .param p2, "maxVerticalBlocks"    # I
    .param p3, "maxBlocks"    # I
    .param p4, "maxBlocksPerSecond"    # J
    .param p6, "blockWidth"    # I
    .param p7, "blockHeight"    # I
    .param p8, "widthAlignment"    # I
    .param p9, "heightAlignment"    # I

    .prologue
    .line 1366
    invoke-direct {p0, p8, p9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    .line 1367
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Landroid/util/Rational;-><init>(II)V

    new-instance v1, Landroid/util/Rational;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    move v1, p6

    move v2, p7

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 1373
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v2, p6

    div-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1376
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v2, p7

    div-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1379
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 1030
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    .line 1031
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1032
    return-object v0
.end method

.method private initWithPlatformLimits()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1065
    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1067
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1068
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1069
    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1071
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1072
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1075
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1076
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1078
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1079
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1082
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1083
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1084
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1085
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1086
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1087
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 26
    .param p1, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 1090
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v21

    .line 1091
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v16, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1092
    .local v16, "blockSize":Landroid/util/Size;
    new-instance v12, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1093
    .local v12, "alignment":Landroid/util/Size;
    const/16 v17, 0x0

    .local v17, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    .local v25, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 1094
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 1095
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 1096
    .local v14, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/16 v23, 0x0

    .local v23, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v15, 0x0

    .line 1098
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v2, "block-size"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v16

    .line 1099
    const-string v2, "alignment"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    .line 1100
    const-string v2, "block-count-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v17

    .line 1101
    const-string v2, "blocks-per-second-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v14

    .line 1104
    const-string/jumbo v2, "size-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 1105
    .local v22, "o":Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v24

    .line 1106
    .local v24, "sizeRange":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v24, :cond_0

    .line 1108
    :try_start_0
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v25

    .line 1111
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 1125
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "feature-can-swap-width-height"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1126
    if-eqz v25, :cond_c

    .line 1127
    invoke-virtual/range {v25 .. v25}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1129
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v20

    move-object/from16 v25, v20

    .line 1138
    :cond_1
    :goto_1
    const-string v2, "block-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v23

    .line 1140
    const-string/jumbo v2, "pixel-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    .line 1142
    const-string v2, "frame-rate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v19

    .line 1143
    if-eqz v19, :cond_2

    .line 1145
    :try_start_1
    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 1152
    :cond_2
    :goto_2
    const-string v2, "bitrate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v13

    .line 1153
    if-eqz v13, :cond_3

    .line 1155
    :try_start_2
    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 1163
    :cond_3
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string v3, "block-size width must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1165
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string v3, "block-size height must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1168
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string v3, "alignment width must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1170
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string v3, "alignment height must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1174
    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v11

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    .line 1182
    if-eqz v25, :cond_4

    .line 1183
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1185
    :cond_4
    if-eqz v20, :cond_5

    .line 1186
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1188
    :cond_5
    if-eqz v17, :cond_6

    .line 1189
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1193
    :cond_6
    if-eqz v14, :cond_7

    .line 1194
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1198
    :cond_7
    if-eqz v15, :cond_8

    .line 1199
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1204
    :cond_8
    if-eqz v23, :cond_9

    .line 1205
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1207
    :cond_9
    if-eqz v19, :cond_a

    .line 1208
    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1210
    :cond_a
    if-eqz v13, :cond_b

    .line 1211
    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1247
    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1248
    return-void

    .line 1114
    :catch_0
    move-exception v18

    .line 1115
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse size range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/16 v25, 0x0

    .line 1117
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1131
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_c
    const-string v2, "VideoCapabilities"

    const-string v3, "feature can-swap-width-height is best used with size-range"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    goto/16 :goto_1

    .line 1146
    :catch_1
    move-exception v18

    .line 1147
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame rate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1156
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v18

    .line 1157
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitrate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1215
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d
    if-eqz v25, :cond_e

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1218
    :cond_e
    if-eqz v20, :cond_f

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1221
    :cond_f
    if-eqz v17, :cond_10

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1226
    :cond_10
    if-eqz v14, :cond_11

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1231
    :cond_11
    if-eqz v15, :cond_12

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1237
    :cond_12
    if-eqz v23, :cond_13

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1240
    :cond_13
    if-eqz v19, :cond_14

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1243
    :cond_14
    if-eqz v13, :cond_b

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_4
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 12
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 978
    const/4 v4, 0x1

    .line 980
    .local v4, "ok":Z
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 981
    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v8, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v8, v9

    if-nez v8, :cond_4

    move v4, v6

    .line 984
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 985
    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v8, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v8, v9

    if-nez v8, :cond_5

    move v4, v6

    .line 988
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    .line 989
    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    .line 991
    :cond_2
    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 992
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v8, v9, :cond_6

    move v4, v6

    .line 994
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v8, v9}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    .line 995
    .local v5, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v8, v9}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 996
    .local v1, "heightInBlocks":I
    mul-int v0, v5, v1

    .line 997
    .local v0, "blockCount":I
    if-eqz v4, :cond_7

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v9, Landroid/util/Rational;

    invoke-direct {v9, v5, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v9, Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v6

    .line 1001
    :goto_3
    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 1002
    int-to-double v6, v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 1003
    .local v2, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    .line 1007
    .end local v0    # "blockCount":I
    .end local v1    # "heightInBlocks":I
    .end local v2    # "blocksPerSec":D
    .end local v5    # "widthInBlocks":I
    :cond_3
    return v4

    :cond_4
    move v4, v7

    .line 981
    goto/16 :goto_0

    :cond_5
    move v4, v7

    .line 985
    goto/16 :goto_1

    :cond_6
    move v4, v7

    .line 992
    goto :goto_2

    .restart local v0    # "blockCount":I
    .restart local v1    # "heightInBlocks":I
    .restart local v5    # "widthInBlocks":I
    :cond_7
    move v4, v7

    .line 997
    goto :goto_3
.end method

.method private updateLimits()V
    .locals 8

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1313
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1317
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1319
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1323
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1329
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1336
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1339
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1342
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1346
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1351
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1354
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1359
    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .prologue
    .line 965
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .locals 1
    .param p1, "blocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    goto :goto_0
.end method

.method public getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 1046
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 946
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unsupported size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 949
    :cond_0
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    mul-int v0, v2, v3

    .line 952
    .local v0, "blockCount":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v0

    div-double v4, v2, v4

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 896
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 898
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not get supported heights for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 900
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 903
    .local v4, "widthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 907
    .local v2, "minHeightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v4

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 911
    .local v1, "maxHeightInBlocks":I
    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 916
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    .line 917
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 921
    :cond_2
    int-to-double v6, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-double v8, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 925
    return-object v3
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 852
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 854
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not get supported widths for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 856
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 859
    .local v1, "heightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 863
    .local v3, "minWidthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 867
    .local v2, "maxWidthInBlocks":I
    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    .line 872
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    .line 873
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    .line 877
    :cond_2
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, p1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 881
    return-object v4
.end method

.method public getWidthAlignment()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 1037
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1038
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    .line 1039
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    .line 1040
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1041
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1042
    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 973
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 5
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1014
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 1015
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "width"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1016
    .local v3, "width":Ljava/lang/Integer;
    const-string v4, "height"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1017
    .local v0, "height":Ljava/lang/Integer;
    const-string v4, "frame-rate"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 1021
    .local v2, "rate":Ljava/lang/Number;
    invoke-direct {p0, v3, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    return v4
.end method
