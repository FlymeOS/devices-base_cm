.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/hardware/GeomagneticField$LegendreTable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/hardware/GeomagneticField$LegendreTable;->-assertionsDisabled:Z

    .line 335
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 11
    .param p1, "maxN"    # I
    .param p2, "thetaRad"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 357
    .local v0, "cos":F
    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 359
    .local v4, "sin":F
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [[F

    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 360
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [[F

    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 361
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    new-array v8, v6, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v7

    aput-object v8, v5, v7

    .line 362
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v8, v6, [F

    const/4 v9, 0x0

    aput v9, v8, v7

    aput-object v8, v5, v7

    .line 363
    const/4 v3, 0x1

    .local v3, "n":I
    :goto_0
    if-gt v3, p1, :cond_6

    .line 364
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v3, 0x1

    new-array v8, v8, [F

    aput-object v8, v5, v3

    .line 365
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v8, v3, 0x1

    new-array v8, v8, [F

    aput-object v8, v5, v3

    .line 366
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_1
    if-gt v2, v3, :cond_5

    .line 367
    if-ne v3, v2, :cond_0

    .line 368
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    mul-float/2addr v8, v4

    aput v8, v5, v2

    .line 369
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    mul-float/2addr v8, v0

    .line 370
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v10, v3, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v2, -0x1

    aget v9, v9, v10

    mul-float/2addr v9, v4

    .line 369
    add-float/2addr v8, v9

    aput v8, v5, v2

    .line 366
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 371
    :cond_0
    if-eq v3, v6, :cond_1

    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_2

    .line 372
    :cond_1
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v2

    mul-float/2addr v8, v0

    aput v8, v5, v2

    .line 373
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    neg-float v8, v4

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v10, v3, -0x1

    aget-object v9, v9, v10

    aget v9, v9, v2

    mul-float/2addr v8, v9

    .line 374
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v10, v3, -0x1

    aget-object v9, v9, v10

    aget v9, v9, v2

    mul-float/2addr v9, v0

    .line 373
    add-float/2addr v8, v9

    aput v8, v5, v2

    goto :goto_2

    .line 376
    :cond_2
    sget-boolean v5, Landroid/hardware/GeomagneticField$LegendreTable;->-assertionsDisabled:Z

    if-nez v5, :cond_4

    if-le v3, v6, :cond_3

    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_3

    move v5, v6

    :goto_3
    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    move v5, v7

    goto :goto_3

    .line 377
    :cond_4
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v5, v8

    mul-int v8, v2, v2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    .line 378
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, -0x3

    mul-int/2addr v8, v9

    int-to-float v8, v8

    .line 377
    div-float v1, v5, v8

    .line 379
    .local v1, "k":F
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    aget v8, v8, v2

    mul-float/2addr v8, v0

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v10, v3, -0x2

    aget-object v9, v9, v10

    aget v9, v9, v2

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    aput v8, v5, v2

    .line 380
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    neg-float v8, v4

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v10, v3, -0x1

    aget-object v9, v9, v10

    aget v9, v9, v2

    mul-float/2addr v8, v9

    .line 381
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v10, v3, -0x1

    aget-object v9, v9, v10

    aget v9, v9, v2

    mul-float/2addr v9, v0

    .line 380
    add-float/2addr v8, v9

    .line 381
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v10, v3, -0x2

    aget-object v9, v9, v10

    aget v9, v9, v2

    mul-float/2addr v9, v1

    .line 380
    sub-float/2addr v8, v9

    aput v8, v5, v2

    goto/16 :goto_2

    .line 363
    .end local v1    # "k":F
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 351
    .end local v2    # "m":I
    :cond_6
    return-void
.end method
