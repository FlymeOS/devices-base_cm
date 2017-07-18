.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "baseType"    # I
    .param p2, "target"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    .line 34
    return-void
.end method


# virtual methods
.method public setBaseType(I)V
    .locals 1
    .param p1, "baseType"    # I

    .prologue
    .line 39
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    .line 40
    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    .line 38
    return-void
.end method

.method public setBytesPerSample(I)V
    .locals 1
    .param p1, "bytesPerSample"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 47
    return-void
.end method

.method public setDimensionCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 82
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 81
    return-void
.end method

.method public setDimensions(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 58
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 59
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 60
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 57
    return-void
.end method

.method public setDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 65
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 66
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 67
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 68
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 64
    return-void
.end method

.method public setDimensions(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # I

    .prologue
    .line 73
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 74
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 75
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 76
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 77
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 72
    return-void
.end method

.method public setDimensions([I)V
    .locals 1
    .param p1, "dimensions"    # [I

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 52
    return-void

    .line 53
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setObjectClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "objectClass"    # Ljava/lang/Class;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    .line 85
    return-void
.end method

.method public setTarget(I)V
    .locals 0
    .param p1, "target"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    .line 43
    return-void
.end method
