.class public Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;
.super Ljava/lang/Object;
.source "ConstrainUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 10
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 14
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static constrainLoop(FFF)F
    .locals 2
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 22
    move v0, p0

    .line 23
    .local v0, "result":F
    cmpl-float v1, p0, p2

    if-lez v1, :cond_1

    .line 24
    sub-float v1, p0, p2

    add-float v0, p1, v1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    cmpg-float v1, p0, p1

    if-gez v1, :cond_0

    .line 26
    sub-float v1, p1, p0

    sub-float v0, p2, v1

    goto :goto_0
.end method
