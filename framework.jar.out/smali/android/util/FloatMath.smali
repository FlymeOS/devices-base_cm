.class public Landroid/util/FloatMath;
.super Ljava/lang/Object;
.source "FloatMath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ceil(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 59
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static cos(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    .line 81
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static exp(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 105
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static floor(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 47
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static hypot(FF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 131
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static pow(FF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 118
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static sin(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    .line 70
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static sqrt(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 93
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
