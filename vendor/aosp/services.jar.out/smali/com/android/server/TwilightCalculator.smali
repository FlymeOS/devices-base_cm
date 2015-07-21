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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 27
    .param p1, "time"    # J
    .param p3, "latiude"    # D
    .param p5, "longitude"    # D

    .prologue
    .line 72
    const-wide v20, 0xdc6d62da00L

    sub-long v20, p1, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x4ca4cb80    # 8.64E7f

    div-float v8, v20, v21

    .line 75
    .local v8, "daysSince2000":F
    const v20, 0x40c7ae92

    const v21, 0x3c8ceb25

    mul-float v21, v21, v8

    add-float v12, v20, v21

    .line 78
    .local v12, "meanAnomaly":F
    const v20, 0x3d08e2fe

    invoke-static {v12}, Landroid/util/FloatMath;->sin(F)F

    move-result v21

    mul-float v20, v20, v21

    add-float v20, v20, v12

    const v21, 0x39b702d8

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, v12

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sin(F)F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    const v21, 0x36afb0e6    # 5.236E-6f

    const/high16 v22, 0x40400000    # 3.0f

    mul-float v22, v22, v12

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sin(F)F

    move-result v22

    mul-float v21, v21, v22

    add-float v17, v20, v21

    .line 82
    .local v17, "trueAnomaly":F
    const v20, 0x3fe5f6c3

    add-float v20, v20, v17

    const v21, 0x40490fdb    # (float)Math.PI

    add-float v16, v20, v21

    .line 85
    .local v16, "solarLng":F
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4076800000000000L    # 360.0

    div-double v4, v20, v22

    .line 86
    .local v4, "arcLongitude":D
    const v20, 0x3a6bedfa    # 9.0E-4f

    sub-float v20, v8, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-float v13, v0

    .line 87
    .local v13, "n":F
    const v20, 0x3a6bedfa    # 9.0E-4f

    add-float v20, v20, v13

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v20, v20, v4

    const v22, 0x3badab9f    # 0.0053f

    invoke-static {v12}, Landroid/util/FloatMath;->sin(F)F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    const v22, -0x441de69b    # -0.0069f

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v16

    invoke-static/range {v23 .. v23}, Landroid/util/FloatMath;->sin(F)F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v18, v20, v22

    .line 91
    .local v18, "solarTransitJ2000":D
    invoke-static/range {v16 .. v16}, Landroid/util/FloatMath;->sin(F)F

    move-result v20

    const v21, 0x3ed18d1c

    invoke-static/range {v21 .. v21}, Landroid/util/FloatMath;->sin(F)F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    .line 93
    .local v14, "solarDec":D
    const-wide v20, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v10, p3, v20

    .line 95
    .local v10, "latRad":D
    const v20, -0x422988b0

    invoke-static/range {v20 .. v20}, Landroid/util/FloatMath;->sin(F)F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    div-double v6, v20, v22

    .line 99
    .local v6, "cosHourAngle":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v20, v6, v20

    if-ltz v20, :cond_0

    .line 100
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 101
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 102
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 121
    :goto_0
    return-void

    .line 104
    :cond_0
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpg-double v20, v6, v20

    if-gtz v20, :cond_1

    .line 105
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 106
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 107
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v9, v0

    .line 113
    .local v9, "hourAngle":F
    float-to-double v0, v9

    move-wide/from16 v20, v0

    add-double v20, v20, v18

    const-wide v22, 0x4194997000000000L    # 8.64E7

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    const-wide v22, 0xdc6d62da00L

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 114
    float-to-double v0, v9

    move-wide/from16 v20, v0

    sub-double v20, v18, v20

    const-wide v22, 0x4194997000000000L    # 8.64E7

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    const-wide v22, 0xdc6d62da00L

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 116
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, p1

    if-gez v20, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, p1

    if-lez v20, :cond_2

    .line 117
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    goto/16 :goto_0

    .line 119
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    goto/16 :goto_0
.end method
