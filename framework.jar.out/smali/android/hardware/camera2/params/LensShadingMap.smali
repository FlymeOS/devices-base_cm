.class public final Landroid/hardware/camera2/params/LensShadingMap;
.super Ljava/lang/Object;
.source "LensShadingMap.java"


# static fields
.field public static final MINIMUM_GAIN_FACTOR:F = 1.0f


# instance fields
.field private final mColumns:I

.field private final mElements:[F

.field private final mRows:I


# direct methods
.method public constructor <init>([FII)V
    .locals 3
    .param p1, "elements"    # [F
    .param p2, "rows"    # I
    .param p3, "columns"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v0, "rows must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 64
    const-string/jumbo v0, "columns must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 65
    const-string/jumbo v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 67
    array-length v0, p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "elements must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    const-string/jumbo v2, " length, received "

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    array-length v2, p1

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const-string/jumbo v0, "elements"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 61
    return-void
.end method


# virtual methods
.method public copyGainFactors([FI)V
    .locals 3
    .param p1, "destination"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 197
    const-string/jumbo v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 198
    const-string/jumbo v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    array-length v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 196
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    return v1

    .line 219
    :cond_0
    if-ne p0, p1, :cond_1

    .line 220
    const/4 v1, 0x1

    return v1

    .line 222
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/LensShadingMap;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 223
    check-cast v0, Landroid/hardware/camera2/params/LensShadingMap;

    .line 224
    .local v0, "other":Landroid/hardware/camera2/params/LensShadingMap;
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    iget v3, v0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ne v2, v3, :cond_2

    .line 225
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    iget v3, v0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ne v2, v3, :cond_2

    .line 226
    iget-object v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    iget-object v2, v0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    .line 224
    :cond_2
    return v1

    .line 228
    .end local v0    # "other":Landroid/hardware/camera2/params/LensShadingMap;
    :cond_3
    return v1
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    return v0
.end method

.method public getGainFactor(III)F
    .locals 2
    .param p1, "colorChannel"    # I
    .param p2, "column"    # I
    .param p3, "row"    # I

    .prologue
    .line 128
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-lt p2, v0, :cond_3

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "column out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    if-ltz p3, :cond_4

    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-lt p3, v0, :cond_5

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v1, p3

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getGainFactorCount()I
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getGainFactorVector(II)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 7
    .param p1, "column"    # I
    .param p2, "row"    # I

    .prologue
    .line 156
    if-ltz p1, :cond_0

    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-lt p1, v5, :cond_1

    .line 157
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "column out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_1
    if-ltz p2, :cond_2

    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-lt p2, v5, :cond_3

    .line 159
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "row out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_3
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v5, p2

    add-int/2addr v5, p1

    mul-int/lit8 v3, v5, 0x4

    .line 165
    .local v3, "offset":I
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x0

    .line 164
    aget v4, v5, v6

    .line 167
    .local v4, "red":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x1

    .line 166
    aget v1, v5, v6

    .line 169
    .local v1, "greenEven":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x2

    .line 168
    aget v2, v5, v6

    .line 171
    .local v2, "greenOdd":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x3

    .line 170
    aget v0, v5, v6

    .line 173
    .local v0, "blue":F
    new-instance v5, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v5, v4, v1, v2, v0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    return-object v5
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    .line 237
    .local v0, "elemsHash":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v5, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "LensShadingMap{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v6, "R:("

    const/4 v7, 0x0

    aput-object v6, v2, v7

    const-string/jumbo v6, "G_even:("

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const-string/jumbo v6, "G_odd:("

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const-string/jumbo v6, "B:("

    aput-object v6, v2, v8

    .line 258
    .local v2, "channelPrefix":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_0
    if-ge v1, v9, :cond_5

    .line 259
    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_1
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ge v4, v6, :cond_3

    .line 262
    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ge v0, v6, :cond_1

    .line 264
    invoke-virtual {p0, v1, v0, v4}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    move-result v3

    .line 265
    .local v3, "gain":F
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 266
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 267
    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 270
    .end local v3    # "gain":F
    :cond_1
    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_2

    .line 272
    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "c":I
    :cond_3
    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    if-ge v1, v8, :cond_4

    .line 278
    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v4    # "r":I
    :cond_5
    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
