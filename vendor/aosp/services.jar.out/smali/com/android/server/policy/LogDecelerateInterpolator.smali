.class public Lcom/android/server/policy/LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "LogDecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mBase:I

.field private mDrift:I

.field private final mLogScale:F


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "base"    # I
    .param p2, "drift"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mBase:I

    .line 29
    iput p2, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mDrift:I

    .line 31
    iget v0, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mDrift:I

    invoke-static {v2, v0, v1}, Lcom/android/server/policy/LogDecelerateInterpolator;->computeLog(FII)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mLogScale:F

    .line 27
    return-void
.end method

.method private static computeLog(FII)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "base"    # I
    .param p2, "drift"    # I

    .prologue
    .line 35
    int-to-double v0, p1

    neg-float v2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mDrift:I

    invoke-static {p1, v0, v1}, Lcom/android/server/policy/LogDecelerateInterpolator;->computeLog(FII)F

    move-result v0

    iget v1, p0, Lcom/android/server/policy/LogDecelerateInterpolator;->mLogScale:F

    mul-float/2addr v0, v1

    return v0
.end method
