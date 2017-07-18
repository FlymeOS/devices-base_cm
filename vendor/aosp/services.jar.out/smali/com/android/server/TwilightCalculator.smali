.class public Lcom/android/server/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L


# instance fields
.field public mState:I

.field public mSunrise:J

.field public mSunset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 29
    .param p1, "time"    # J
    .param p3, "latiude"    # D
    .param p5, "longitude"    # D

    .prologue
    .line 71
    const-wide v22, 0xdc6d62da00L

    sub-long v22, p1, v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x4ca4cb80    # 8.64E7f

    div-float v8, v22, v23

    .line 74
    .local v8, "daysSince2000":F
    const v22, 0x3c8ceb25

    mul-float v22, v22, v8

    const v23, 0x40c7ae92

    add-float v12, v23, v22

    .line 77
    .local v12, "meanAnomaly":F
    float-to-double v0, v12

    move-wide/from16 v22, v0

    float-to-double v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const-wide v26, 0x3fa11c5fc0000000L    # 0.03341960161924362

    mul-double v24, v24, v26

    add-double v22, v22, v24

    .line 78
    const/high16 v24, 0x40000000    # 2.0f

    mul-float v24, v24, v12

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 77
    const-wide v26, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double v24, v24, v26

    add-double v22, v22, v24

    .line 78
    const/high16 v24, 0x40400000    # 3.0f

    mul-float v24, v24, v12

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const-wide v26, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double v24, v24, v26

    .line 77
    add-double v20, v22, v24

    .line 81
    .local v20, "trueAnomaly":D
    const-wide v22, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double v22, v22, v20

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    add-double v16, v22, v24

    .line 84
    .local v16, "solarLng":D
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4076800000000000L    # 360.0

    div-double v4, v22, v24

    .line 85
    .local v4, "arcLongitude":D
    const v22, 0x3a6bedfa    # 9.0E-4f

    sub-float v22, v8, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v22, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v13, v0

    .line 86
    .local v13, "n":F
    const v22, 0x3a6bedfa    # 9.0E-4f

    add-float v22, v22, v13

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v22, v22, v4

    float-to-double v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const-wide v26, 0x3f75b573eab367a1L    # 0.0053

    mul-double v24, v24, v26

    add-double v22, v22, v24

    .line 87
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const-wide v26, -0x4083bcd35a858794L    # -0.0069

    mul-double v24, v24, v26

    .line 86
    add-double v18, v22, v24

    .line 90
    .local v18, "solarTransitJ2000":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    const-wide v24, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    .line 92
    .local v14, "solarDec":D
    const-wide v22, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v10, p3, v22

    .line 94
    .local v10, "latRad":D
    const-wide v22, -0x4045311600000000L    # -0.10471975803375244

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 95
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    .line 94
    mul-double v24, v24, v26

    sub-double v22, v22, v24

    .line 95
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 94
    div-double v6, v22, v24

    .line 98
    .local v6, "cosHourAngle":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v6, v22

    if-ltz v22, :cond_0

    .line 99
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 100
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 101
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 102
    return-void

    .line 103
    :cond_0
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpg-double v22, v6, v22

    if-gtz v22, :cond_1

    .line 104
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 105
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 106
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 107
    return-void

    .line 110
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v22

    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v9, v0

    .line 112
    .local v9, "hourAngle":F
    float-to-double v0, v9

    move-wide/from16 v22, v0

    add-double v22, v22, v18

    const-wide v24, 0x4194997000000000L    # 8.64E7

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    const-wide v24, 0xdc6d62da00L

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 113
    float-to-double v0, v9

    move-wide/from16 v22, v0

    sub-double v22, v18, v22

    const-wide v24, 0x4194997000000000L    # 8.64E7

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    const-wide v24, 0xdc6d62da00L

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 115
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, p1

    if-gez v22, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, p1

    if-lez v22, :cond_2

    .line 116
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 70
    :goto_0
    return-void

    .line 118
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    goto :goto_0
.end method
