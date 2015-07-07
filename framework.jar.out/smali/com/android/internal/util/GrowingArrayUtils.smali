.class public final Lcom/android/internal/util/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/internal/util/GrowingArrayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "element"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 60
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 61
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    .line 62
    .local v0, "newArray":[I
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 63
    move-object p0, v0

    .line 65
    .end local v0    # "newArray":[I
    :cond_1
    aput p2, p0, p1

    .line 66
    return-object p0
.end method

.method public static append([JIJ)[J
    .locals 4
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "element"    # J

    .prologue
    const/4 v3, 0x0

    .line 73
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 75
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 76
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    .line 77
    .local v0, "newArray":[J
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 78
    move-object p0, v0

    .line 80
    .end local v0    # "newArray":[J
    :cond_1
    aput-wide p2, p0, p1

    .line 81
    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 41
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 43
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    move-object p0, v0

    .line 50
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    aput-object p2, p0, p1

    .line 51
    return-object p0
.end method

.method public static append([ZIZ)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "element"    # Z

    .prologue
    const/4 v3, 0x0

    .line 88
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 90
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 91
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    .line 92
    .local v0, "newArray":[Z
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 93
    move-object p0, v0

    .line 95
    .end local v0    # "newArray":[Z
    :cond_1
    aput-boolean p2, p0, p1

    .line 96
    return-object p0
.end method

.method public static growSize(I)I
    .locals 1
    .param p0, "currentSize"    # I

    .prologue
    .line 191
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p0, 0x2

    goto :goto_0
.end method

.method public static insert([IIII)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # I

    .prologue
    const/4 v3, 0x0

    .line 132
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 134
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 135
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 136
    aput p3, p0, p2

    .line 144
    .end local p0    # "array":[I
    :goto_0
    return-object p0

    .line 140
    .restart local p0    # "array":[I
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    .line 141
    .local v0, "newArray":[I
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 142
    aput p3, v0, p2

    .line 143
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object p0, v0

    .line 144
    goto :goto_0
.end method

.method public static insert([JIIJ)[J
    .locals 5
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # J

    .prologue
    const/4 v3, 0x0

    .line 151
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 153
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 154
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 155
    aput-wide p3, p0, p2

    .line 163
    .end local p0    # "array":[J
    :goto_0
    return-object p0

    .line 159
    .restart local p0    # "array":[J
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    .line 160
    .local v0, "newArray":[J
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 161
    aput-wide p3, v0, p2

    .line 162
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object p0, v0

    .line 163
    goto :goto_0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 111
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 113
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 114
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    aput-object p3, p0, p2

    .line 125
    .end local p0    # "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object p0

    .line 120
    .restart local p0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    aput-object p3, v0, p2

    .line 124
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 125
    goto :goto_0
.end method

.method public static insert([ZIIZ)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # Z

    .prologue
    const/4 v3, 0x0

    .line 170
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 172
    :cond_0
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 173
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 174
    aput-boolean p3, p0, p2

    .line 182
    .end local p0    # "array":[Z
    :goto_0
    return-object p0

    .line 178
    .restart local p0    # "array":[Z
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    .line 179
    .local v0, "newArray":[Z
    invoke-static {p0, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 180
    aput-boolean p3, v0, p2

    .line 181
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    move-object p0, v0

    .line 182
    goto :goto_0
.end method
