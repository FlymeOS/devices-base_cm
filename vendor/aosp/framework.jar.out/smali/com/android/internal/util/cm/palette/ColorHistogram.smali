.class final Lcom/android/internal/util/cm/palette/ColorHistogram;
.super Ljava/lang/Object;
.source "ColorHistogram.java"


# instance fields
.field private final mColorCounts:[I

.field private final mColors:[I

.field private final mNumberColors:I


# direct methods
.method constructor <init>([I)V
    .locals 1
    .param p1, "pixels"    # [I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 42
    invoke-static {p1}, Lcom/android/internal/util/cm/palette/ColorHistogram;->countDistinctColors([I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mNumberColors:I

    .line 45
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mNumberColors:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColors:[I

    .line 46
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mNumberColors:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColorCounts:[I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/util/cm/palette/ColorHistogram;->countFrequencies([I)V

    .line 50
    return-void
.end method

.method private static countDistinctColors([I)I
    .locals 5
    .param p0, "pixels"    # [I

    .prologue
    .line 74
    array-length v3, p0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 76
    array-length v0, p0

    .line 92
    :cond_0
    return v0

    .line 80
    :cond_1
    const/4 v0, 0x1

    .line 81
    .local v0, "colorCount":I
    const/4 v3, 0x0

    aget v1, p0, v3

    .line 84
    .local v1, "currentColor":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 86
    aget v3, p0, v2

    if-eq v3, v1, :cond_2

    .line 87
    aget v1, p0, v2

    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 84
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private countFrequencies([I)V
    .locals 6
    .param p1, "pixels"    # [I

    .prologue
    const/4 v5, 0x1

    .line 96
    array-length v3, p1

    if-nez v3, :cond_1

    .line 125
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v1, 0x0

    .line 101
    .local v1, "currentColorIndex":I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 103
    .local v0, "currentColor":I
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColors:[I

    aput v0, v3, v1

    .line 104
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColorCounts:[I

    aput v5, v3, v1

    .line 106
    array-length v3, p1

    if-eq v3, v5, :cond_0

    .line 112
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 113
    aget v3, p1, v2

    if-ne v3, v0, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColorCounts:[I

    aget v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    .line 112
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_2
    aget v0, p1, v2

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColors:[I

    aput v0, v3, v1

    .line 122
    iget-object v3, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColorCounts:[I

    aput v5, v3, v1

    goto :goto_1
.end method


# virtual methods
.method getColorCounts()[I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColorCounts:[I

    return-object v0
.end method

.method getColors()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mColors:[I

    return-object v0
.end method

.method getNumberOfColors()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/util/cm/palette/ColorHistogram;->mNumberColors:I

    return v0
.end method
