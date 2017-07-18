.class Landroid/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 26
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 27
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 28
    .local v2, "mid":I
    aget v3, p0, v2

    .line 30
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 31
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    if-le v3, p2, :cond_1

    .line 33
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 35
    :cond_1
    return v2

    .line 38
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    not-int v4, v1

    return v4
.end method

.method static binarySearch([JIJ)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 45
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 46
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 47
    .local v2, "mid":I
    aget-wide v4, p0, v2

    .line 49
    .local v4, "midVal":J
    cmp-long v3, v4, p2

    if-gez v3, :cond_0

    .line 50
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    cmp-long v3, v4, p2

    if-lez v3, :cond_1

    .line 52
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 54
    :cond_1
    return v2

    .line 57
    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_2
    not-int v3, v1

    return v3
.end method
