.class public Landroid/util/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field private mParams:[F

.field private mType:C


# direct methods
.method private constructor <init>(C[F)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-char p1, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    .line 242
    iput-object p2, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    .line 243
    return-void
.end method

.method synthetic constructor <init>(C[FLandroid/util/PathParser$1;)V
    .locals 0
    .param p1, "x0"    # C
    .param p2, "x1"    # [F
    .param p3, "x2"    # Landroid/util/PathParser$1;

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Landroid/util/PathParser$PathDataNode;-><init>(C[F)V

    return-void
.end method

.method private constructor <init>(Landroid/util/PathParser$PathDataNode;)V
    .locals 2
    .param p1, "n"    # Landroid/util/PathParser$PathDataNode;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iget-char v0, p1, Landroid/util/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    .line 247
    iget-object v0, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    iget-object v1, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/PathParser$PathDataNode;
    .param p2, "x1"    # Landroid/util/PathParser$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Landroid/util/PathParser$PathDataNode;-><init>(Landroid/util/PathParser$PathDataNode;)V

    return-void
.end method

.method static synthetic access$100(Landroid/util/PathParser$PathDataNode;)C
    .locals 1
    .param p0, "x0"    # Landroid/util/PathParser$PathDataNode;

    .prologue
    .line 236
    iget-char v0, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    return v0
.end method

.method static synthetic access$102(Landroid/util/PathParser$PathDataNode;C)C
    .locals 0
    .param p0, "x0"    # Landroid/util/PathParser$PathDataNode;
    .param p1, "x1"    # C

    .prologue
    .line 236
    iput-char p1, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    return p1
.end method

.method static synthetic access$200(Landroid/util/PathParser$PathDataNode;)[F
    .locals 1
    .param p0, "x0"    # Landroid/util/PathParser$PathDataNode;

    .prologue
    .line 236
    iget-object v0, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    return-object v0
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 21
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .prologue
    .line 285
    const/16 v19, 0x2

    .line 286
    .local v19, "incr":I
    const/4 v2, 0x0

    aget v17, p1, v2

    .line 287
    .local v17, "currentX":F
    const/4 v2, 0x1

    aget v18, p1, v2

    .line 288
    .local v18, "currentY":F
    const/4 v2, 0x2

    aget v15, p1, v2

    .line 289
    .local v15, "ctrlPointX":F
    const/4 v2, 0x3

    aget v16, p1, v2

    .line 293
    .local v16, "ctrlPointY":F
    sparse-switch p3, :sswitch_data_0

    .line 327
    :goto_0
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_c

    .line 328
    sparse-switch p3, :sswitch_data_1

    .line 497
    :goto_2
    move/from16 p2, p3

    .line 327
    add-int v20, v20, v19

    goto :goto_1

    .line 296
    .end local v20    # "k":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 503
    :goto_3
    return-void

    .line 304
    :sswitch_1
    const/16 v19, 0x2

    .line 305
    goto :goto_0

    .line 310
    :sswitch_2
    const/16 v19, 0x1

    .line 311
    goto :goto_0

    .line 314
    :sswitch_3
    const/16 v19, 0x6

    .line 315
    goto :goto_0

    .line 320
    :sswitch_4
    const/16 v19, 0x4

    .line 321
    goto :goto_0

    .line 324
    :sswitch_5
    const/16 v19, 0x7

    goto :goto_0

    .line 330
    .restart local v20    # "k":I
    :sswitch_6
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 331
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 332
    add-int/lit8 v2, v20, 0x1

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 333
    goto :goto_2

    .line 335
    :sswitch_7
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 336
    add-int/lit8 v2, v20, 0x0

    aget v17, p4, v2

    .line 337
    add-int/lit8 v2, v20, 0x1

    aget v18, p4, v2

    .line 338
    goto :goto_2

    .line 340
    :sswitch_8
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 341
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 342
    add-int/lit8 v2, v20, 0x1

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 343
    goto :goto_2

    .line 345
    :sswitch_9
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 346
    add-int/lit8 v2, v20, 0x0

    aget v17, p4, v2

    .line 347
    add-int/lit8 v2, v20, 0x1

    aget v18, p4, v2

    .line 348
    goto :goto_2

    .line 351
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    goto :goto_2

    .line 354
    :sswitch_b
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 355
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 356
    goto/16 :goto_2

    .line 358
    :sswitch_c
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 359
    add-int/lit8 v2, v20, 0x0

    aget v17, p4, v2

    .line 360
    goto/16 :goto_2

    .line 362
    :sswitch_d
    const/4 v2, 0x0

    add-int/lit8 v5, v20, 0x0

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 363
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 364
    goto/16 :goto_2

    .line 366
    :sswitch_e
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    add-int/lit8 v2, v20, 0x0

    aget v18, p4, v2

    .line 368
    goto/16 :goto_2

    .line 370
    :sswitch_f
    add-int/lit8 v2, v20, 0x0

    aget v3, p4, v2

    add-int/lit8 v2, v20, 0x1

    aget v4, p4, v2

    add-int/lit8 v2, v20, 0x2

    aget v5, p4, v2

    add-int/lit8 v2, v20, 0x3

    aget v6, p4, v2

    add-int/lit8 v2, v20, 0x4

    aget v7, p4, v2

    add-int/lit8 v2, v20, 0x5

    aget v8, p4, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 373
    add-int/lit8 v2, v20, 0x2

    aget v2, p4, v2

    add-float v15, v17, v2

    .line 374
    add-int/lit8 v2, v20, 0x3

    aget v2, p4, v2

    add-float v16, v18, v2

    .line 375
    add-int/lit8 v2, v20, 0x4

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 376
    add-int/lit8 v2, v20, 0x5

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 378
    goto/16 :goto_2

    .line 380
    :sswitch_10
    add-int/lit8 v2, v20, 0x0

    aget v3, p4, v2

    add-int/lit8 v2, v20, 0x1

    aget v4, p4, v2

    add-int/lit8 v2, v20, 0x2

    aget v5, p4, v2

    add-int/lit8 v2, v20, 0x3

    aget v6, p4, v2

    add-int/lit8 v2, v20, 0x4

    aget v7, p4, v2

    add-int/lit8 v2, v20, 0x5

    aget v8, p4, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 382
    add-int/lit8 v2, v20, 0x4

    aget v17, p4, v2

    .line 383
    add-int/lit8 v2, v20, 0x5

    aget v18, p4, v2

    .line 384
    add-int/lit8 v2, v20, 0x2

    aget v15, p4, v2

    .line 385
    add-int/lit8 v2, v20, 0x3

    aget v16, p4, v2

    .line 386
    goto/16 :goto_2

    .line 388
    :sswitch_11
    const/4 v3, 0x0

    .line 389
    .local v3, "reflectiveCtrlPointX":F
    const/4 v4, 0x0

    .line 390
    .local v4, "reflectiveCtrlPointY":F
    const/16 v2, 0x63

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x73

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x43

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 392
    :cond_0
    sub-float v3, v17, v15

    .line 393
    sub-float v4, v18, v16

    .line 395
    :cond_1
    add-int/lit8 v2, v20, 0x0

    aget v5, p4, v2

    add-int/lit8 v2, v20, 0x1

    aget v6, p4, v2

    add-int/lit8 v2, v20, 0x2

    aget v7, p4, v2

    add-int/lit8 v2, v20, 0x3

    aget v8, p4, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 399
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-float v15, v17, v2

    .line 400
    add-int/lit8 v2, v20, 0x1

    aget v2, p4, v2

    add-float v16, v18, v2

    .line 401
    add-int/lit8 v2, v20, 0x2

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 402
    add-int/lit8 v2, v20, 0x3

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 403
    goto/16 :goto_2

    .line 405
    .end local v3    # "reflectiveCtrlPointX":F
    .end local v4    # "reflectiveCtrlPointY":F
    :sswitch_12
    move/from16 v3, v17

    .line 406
    .restart local v3    # "reflectiveCtrlPointX":F
    move/from16 v4, v18

    .line 407
    .restart local v4    # "reflectiveCtrlPointY":F
    const/16 v2, 0x63

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x73

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x43

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x53

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 409
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v17

    sub-float v3, v2, v15

    .line 410
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v18

    sub-float v4, v2, v16

    .line 412
    :cond_3
    add-int/lit8 v2, v20, 0x0

    aget v5, p4, v2

    add-int/lit8 v2, v20, 0x1

    aget v6, p4, v2

    add-int/lit8 v2, v20, 0x2

    aget v7, p4, v2

    add-int/lit8 v2, v20, 0x3

    aget v8, p4, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 414
    add-int/lit8 v2, v20, 0x0

    aget v15, p4, v2

    .line 415
    add-int/lit8 v2, v20, 0x1

    aget v16, p4, v2

    .line 416
    add-int/lit8 v2, v20, 0x2

    aget v17, p4, v2

    .line 417
    add-int/lit8 v2, v20, 0x3

    aget v18, p4, v2

    .line 418
    goto/16 :goto_2

    .line 420
    .end local v3    # "reflectiveCtrlPointX":F
    .end local v4    # "reflectiveCtrlPointY":F
    :sswitch_13
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    add-int/lit8 v6, v20, 0x2

    aget v6, p4, v6

    add-int/lit8 v7, v20, 0x3

    aget v7, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 421
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-float v15, v17, v2

    .line 422
    add-int/lit8 v2, v20, 0x1

    aget v2, p4, v2

    add-float v16, v18, v2

    .line 423
    add-int/lit8 v2, v20, 0x2

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 424
    add-int/lit8 v2, v20, 0x3

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 425
    goto/16 :goto_2

    .line 427
    :sswitch_14
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    add-int/lit8 v6, v20, 0x2

    aget v6, p4, v6

    add-int/lit8 v7, v20, 0x3

    aget v7, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 428
    add-int/lit8 v2, v20, 0x0

    aget v15, p4, v2

    .line 429
    add-int/lit8 v2, v20, 0x1

    aget v16, p4, v2

    .line 430
    add-int/lit8 v2, v20, 0x2

    aget v17, p4, v2

    .line 431
    add-int/lit8 v2, v20, 0x3

    aget v18, p4, v2

    .line 432
    goto/16 :goto_2

    .line 434
    :sswitch_15
    const/4 v3, 0x0

    .line 435
    .restart local v3    # "reflectiveCtrlPointX":F
    const/4 v4, 0x0

    .line 436
    .restart local v4    # "reflectiveCtrlPointY":F
    const/16 v2, 0x71

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/16 v2, 0x74

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/16 v2, 0x51

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/16 v2, 0x54

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 438
    :cond_4
    sub-float v3, v17, v15

    .line 439
    sub-float v4, v18, v16

    .line 441
    :cond_5
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 443
    add-float v15, v17, v3

    .line 444
    add-float v16, v18, v4

    .line 445
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 446
    add-int/lit8 v2, v20, 0x1

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 447
    goto/16 :goto_2

    .line 449
    .end local v3    # "reflectiveCtrlPointX":F
    .end local v4    # "reflectiveCtrlPointY":F
    :sswitch_16
    move/from16 v3, v17

    .line 450
    .restart local v3    # "reflectiveCtrlPointX":F
    move/from16 v4, v18

    .line 451
    .restart local v4    # "reflectiveCtrlPointY":F
    const/16 v2, 0x71

    move/from16 v0, p2

    if-eq v0, v2, :cond_6

    const/16 v2, 0x74

    move/from16 v0, p2

    if-eq v0, v2, :cond_6

    const/16 v2, 0x51

    move/from16 v0, p2

    if-eq v0, v2, :cond_6

    const/16 v2, 0x54

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 453
    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v17

    sub-float v3, v2, v15

    .line 454
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v18

    sub-float v4, v2, v16

    .line 456
    :cond_7
    add-int/lit8 v2, v20, 0x0

    aget v2, p4, v2

    add-int/lit8 v5, v20, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 458
    move v15, v3

    .line 459
    move/from16 v16, v4

    .line 460
    add-int/lit8 v2, v20, 0x0

    aget v17, p4, v2

    .line 461
    add-int/lit8 v2, v20, 0x1

    aget v18, p4, v2

    .line 462
    goto/16 :goto_2

    .line 465
    .end local v3    # "reflectiveCtrlPointX":F
    .end local v4    # "reflectiveCtrlPointY":F
    :sswitch_17
    add-int/lit8 v2, v20, 0x5

    aget v2, p4, v2

    add-float v8, v2, v17

    add-int/lit8 v2, v20, 0x6

    aget v2, p4, v2

    add-float v9, v2, v18

    add-int/lit8 v2, v20, 0x0

    aget v10, p4, v2

    add-int/lit8 v2, v20, 0x1

    aget v11, p4, v2

    add-int/lit8 v2, v20, 0x2

    aget v12, p4, v2

    add-int/lit8 v2, v20, 0x3

    aget v2, p4, v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_8

    const/4 v13, 0x1

    :goto_4
    add-int/lit8 v2, v20, 0x4

    aget v2, p4, v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_9

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v5, p0

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-static/range {v5 .. v14}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 475
    add-int/lit8 v2, v20, 0x5

    aget v2, p4, v2

    add-float v17, v17, v2

    .line 476
    add-int/lit8 v2, v20, 0x6

    aget v2, p4, v2

    add-float v18, v18, v2

    .line 477
    move/from16 v15, v17

    .line 478
    move/from16 v16, v18

    .line 479
    goto/16 :goto_2

    .line 465
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 481
    :sswitch_18
    add-int/lit8 v2, v20, 0x5

    aget v8, p4, v2

    add-int/lit8 v2, v20, 0x6

    aget v9, p4, v2

    add-int/lit8 v2, v20, 0x0

    aget v10, p4, v2

    add-int/lit8 v2, v20, 0x1

    aget v11, p4, v2

    add-int/lit8 v2, v20, 0x2

    aget v12, p4, v2

    add-int/lit8 v2, v20, 0x3

    aget v2, p4, v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    :goto_6
    add-int/lit8 v2, v20, 0x4

    aget v2, p4, v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_b

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v5, p0

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-static/range {v5 .. v14}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 491
    add-int/lit8 v2, v20, 0x5

    aget v17, p4, v2

    .line 492
    add-int/lit8 v2, v20, 0x6

    aget v18, p4, v2

    .line 493
    move/from16 v15, v17

    .line 494
    move/from16 v16, v18

    goto/16 :goto_2

    .line 481
    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    goto :goto_7

    .line 499
    :cond_c
    const/4 v2, 0x0

    aput v17, p1, v2

    .line 500
    const/4 v2, 0x1

    aput v18, p1, v2

    .line 501
    const/4 v2, 0x2

    aput v15, p1, v2

    .line 502
    const/4 v2, 0x3

    aput v16, p1, v2

    goto/16 :goto_3

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    .line 328
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_18
        0x43 -> :sswitch_10
        0x48 -> :sswitch_c
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_14
        0x53 -> :sswitch_12
        0x54 -> :sswitch_16
        0x56 -> :sswitch_e
        0x5a -> :sswitch_a
        0x61 -> :sswitch_17
        0x63 -> :sswitch_f
        0x68 -> :sswitch_b
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_13
        0x73 -> :sswitch_11
        0x74 -> :sswitch_15
        0x76 -> :sswitch_d
        0x7a -> :sswitch_a
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 55
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .prologue
    .line 610
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v36

    .line 612
    .local v36, "numSegments":I
    move-wide/from16 v32, p15

    .line 613
    .local v32, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 614
    .local v18, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    .line 615
    .local v50, "sinTheta":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 616
    .local v14, "cosEta1":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    .line 617
    .local v46, "sinEta1":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v46

    mul-double v4, p7, v50

    mul-double/2addr v4, v14

    sub-double v24, v2, v4

    .line 618
    .local v24, "ep1x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v46

    mul-double v4, p7, v18

    mul-double/2addr v4, v14

    add-double v26, v2, v4

    .line 620
    .local v26, "ep1y":D
    move/from16 v0, v36

    int-to-double v2, v0

    div-double v12, p17, v2

    .line 621
    .local v12, "anglePerSegment":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v36

    if-ge v9, v0, :cond_0

    .line 622
    add-double v34, v32, v12

    .line 623
    .local v34, "eta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    .line 624
    .local v48, "sinEta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 625
    .local v16, "cosEta2":D
    mul-double v2, p5, v18

    mul-double v2, v2, v16

    add-double v2, v2, p1

    mul-double v4, p7, v50

    mul-double v4, v4, v48

    sub-double v20, v2, v4

    .line 626
    .local v20, "e2x":D
    mul-double v2, p5, v50

    mul-double v2, v2, v16

    add-double v2, v2, p3

    mul-double v4, p7, v18

    mul-double v4, v4, v48

    add-double v22, v2, v4

    .line 627
    .local v22, "e2y":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v48

    mul-double v4, p7, v50

    mul-double v4, v4, v16

    sub-double v28, v2, v4

    .line 628
    .local v28, "ep2x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v48

    mul-double v4, p7, v18

    mul-double v4, v4, v16

    add-double v30, v2, v4

    .line 629
    .local v30, "ep2y":D
    sub-double v2, v34, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v52

    .line 630
    .local v52, "tanDiff2":D
    sub-double v2, v34, v32

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v52

    mul-double v6, v6, v52

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v10, v2, v4

    .line 632
    .local v10, "alpha":D
    mul-double v2, v10, v24

    add-double v38, p9, v2

    .line 633
    .local v38, "q1x":D
    mul-double v2, v10, v26

    add-double v40, p11, v2

    .line 634
    .local v40, "q1y":D
    mul-double v2, v10, v28

    sub-double v42, v20, v2

    .line 635
    .local v42, "q2x":D
    mul-double v2, v10, v30

    sub-double v44, v22, v2

    .line 637
    .local v44, "q2y":D
    move-wide/from16 v0, v38

    double-to-float v3, v0

    move-wide/from16 v0, v40

    double-to-float v4, v0

    move-wide/from16 v0, v42

    double-to-float v5, v0

    move-wide/from16 v0, v44

    double-to-float v6, v0

    move-wide/from16 v0, v20

    double-to-float v7, v0

    move-wide/from16 v0, v22

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 643
    move-wide/from16 v32, v34

    .line 644
    move-wide/from16 p9, v20

    .line 645
    move-wide/from16 p11, v22

    .line 646
    move-wide/from16 v24, v28

    .line 647
    move-wide/from16 v26, v30

    .line 621
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 649
    .end local v10    # "alpha":D
    .end local v16    # "cosEta2":D
    .end local v20    # "e2x":D
    .end local v22    # "e2y":D
    .end local v28    # "ep2x":D
    .end local v30    # "ep2y":D
    .end local v34    # "eta2":D
    .end local v38    # "q1x":D
    .end local v40    # "q1y":D
    .end local v42    # "q2x":D
    .end local v44    # "q2y":D
    .end local v48    # "sinEta2":D
    .end local v52    # "tanDiff2":D
    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 58
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .prologue
    .line 517
    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 519
    .local v16, "thetaD":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 520
    .local v24, "cosTheta":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    .line 523
    .local v42, "sinTheta":D
    move/from16 v0, p1

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v46, v2, v8

    .line 524
    .local v46, "x0p":D
    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v52, v2, v8

    .line 525
    .local v52, "y0p":D
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v48, v2, v8

    .line 526
    .local v48, "x1p":D
    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v54, v2, v8

    .line 529
    .local v54, "y1p":D
    sub-double v30, v46, v48

    .line 530
    .local v30, "dx":D
    sub-double v32, v52, v54

    .line 531
    .local v32, "dy":D
    add-double v2, v46, v48

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v50, v2, v8

    .line 532
    .local v50, "xm":D
    add-double v2, v52, v54

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v56, v2, v8

    .line 534
    .local v56, "ym":D
    mul-double v2, v30, v30

    mul-double v8, v32, v32

    add-double v28, v2, v8

    .line 535
    .local v28, "dsq":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v28, v2

    if-nez v2, :cond_0

    .line 536
    sget-object v2, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    const-string v3, " Points are coincident"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 539
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v28

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    sub-double v26, v2, v8

    .line 540
    .local v26, "disc":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v26, v2

    if-gez v2, :cond_1

    .line 541
    sget-object v2, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Points are too far apart "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v8, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v8

    double-to-float v0, v2

    move/from16 v22, v0

    .line 543
    .local v22, "adjust":F
    mul-float v7, p5, v22

    mul-float v8, p6, v22

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    goto :goto_0

    .line 547
    .end local v22    # "adjust":F
    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 548
    .local v36, "s":D
    mul-double v38, v36, v30

    .line 549
    .local v38, "sdx":D
    mul-double v40, v36, v32

    .line 552
    .local v40, "sdy":D
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    .line 553
    sub-double v4, v50, v40

    .line 554
    .local v4, "cx":D
    add-double v6, v56, v38

    .line 560
    .local v6, "cy":D
    :goto_1
    sub-double v2, v52, v6

    sub-double v8, v46, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 562
    .local v18, "eta0":D
    sub-double v2, v54, v6

    sub-double v8, v48, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    .line 564
    .local v34, "eta1":D
    sub-double v20, v34, v18

    .line 565
    .local v20, "sweep":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move/from16 v0, p9

    if-eq v0, v2, :cond_2

    .line 566
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_5

    .line 567
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v2

    .line 573
    :cond_2
    :goto_3
    move/from16 v0, p5

    float-to-double v2, v0

    mul-double/2addr v4, v2

    .line 574
    move/from16 v0, p6

    float-to-double v2, v0

    mul-double/2addr v6, v2

    .line 575
    move-wide/from16 v44, v4

    .line 576
    .local v44, "tcx":D
    mul-double v2, v4, v24

    mul-double v8, v6, v42

    sub-double v4, v2, v8

    .line 577
    mul-double v2, v44, v42

    mul-double v8, v6, v24

    add-double v6, v2, v8

    .line 579
    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroid/util/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_0

    .line 556
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v18    # "eta0":D
    .end local v20    # "sweep":D
    .end local v34    # "eta1":D
    .end local v44    # "tcx":D
    :cond_3
    add-double v4, v50, v40

    .line 557
    .restart local v4    # "cx":D
    sub-double v6, v56, v38

    .restart local v6    # "cy":D
    goto :goto_1

    .line 565
    .restart local v18    # "eta0":D
    .restart local v20    # "sweep":D
    .restart local v34    # "eta1":D
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 569
    :cond_5
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v2

    goto :goto_3
.end method

.method public static nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5
    .param p0, "node"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 257
    const/4 v3, 0x4

    new-array v0, v3, [F

    .line 258
    .local v0, "current":[F
    const/16 v2, 0x6d

    .line 259
    .local v2, "previousCommand":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 260
    aget-object v3, p0, v1

    iget-char v3, v3, Landroid/util/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/util/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v2, v3, v4}, Landroid/util/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 261
    aget-object v3, p0, v1

    iget-char v2, v3, Landroid/util/PathParser$PathDataNode;->mType:C

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$PathDataNode;F)V
    .locals 4
    .param p1, "nodeFrom"    # Landroid/util/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroid/util/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Landroid/util/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method
