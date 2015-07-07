.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# instance fields
.field private final mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 36
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 37
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    .line 38
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 48
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 52
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    .line 53
    return-void
.end method

.method private static native nativeColorMatrixFilter([F)J
.end method

.method private update()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 123
    .local v0, "colorMatrix":[F
    iget-wide v2, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;->destroyFilter(J)V

    .line 124
    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:J

    .line 125
    return-void
.end method


# virtual methods
.method public getColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 83
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 87
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    .line 88
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    if-eq p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    goto :goto_0
.end method

.method public setColorMatrix([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 118
    :goto_0
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    .line 119
    return-void

    .line 112
    :cond_0
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 113
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    goto :goto_0
.end method
