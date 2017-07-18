.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneIfNotEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 36
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static concat([BII[BII)[B
    .locals 3
    .param p0, "arr1"    # [B
    .param p1, "offset1"    # I
    .param p2, "len1"    # I
    .param p3, "arr2"    # [B
    .param p4, "offset2"    # I
    .param p5, "len2"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    if-nez p2, :cond_0

    .line 47
    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    return-object v1

    .line 48
    :cond_0
    if-nez p5, :cond_1

    .line 49
    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    return-object v1

    .line 51
    :cond_1
    add-int v1, p2, p5

    new-array v0, v1, [B

    .line 52
    .local v0, "result":[B
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 53
    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 54
    return-object v0
.end method

.method public static concat([B[B)[B
    .locals 6
    .param p0, "arr1"    # [B
    .param p1, "arr2"    # [B

    .prologue
    const/4 v1, 0x0

    .line 40
    if-eqz p0, :cond_0

    array-length v2, p0

    .line 41
    :goto_0
    if-eqz p1, :cond_1

    array-length v5, p1

    :goto_1
    move-object v0, p0

    move-object v3, p1

    move v4, v1

    .line 40
    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v5, v1

    .line 41
    goto :goto_1
.end method

.method public static concat([I[I)[I
    .locals 4
    .param p0, "arr1"    # [I
    .param p1, "arr2"    # [I

    .prologue
    const/4 v3, 0x0

    .line 71
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 72
    :cond_0
    return-object p1

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_3

    .line 74
    :cond_2
    return-object p0

    .line 76
    :cond_3
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 77
    .local v0, "result":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 78
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 79
    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .end local p0    # "array":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "array":[Ljava/lang/String;
    :cond_0
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 3
    .param p0, "arr"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    if-nez p2, :cond_0

    .line 60
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1

    .line 62
    :cond_0
    if-nez p1, :cond_1

    array-length v1, p0

    if-ne p2, v1, :cond_1

    .line 63
    return-object p0

    .line 65
    :cond_1
    new-array v0, p2, [B

    .line 66
    .local v0, "result":[B
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    return-object v0
.end method
