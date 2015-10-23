.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "LightingColorFilter.java"


# instance fields
.field private mAdd:I

.field private mMul:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "mul"    # I
    .param p2, "add"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 49
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 50
    iput p2, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 51
    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    .line 52
    return-void
.end method

.method private static native native_CreateLightingFilter(II)J
.end method

.method private update()V
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Landroid/graphics/LightingColorFilter;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->destroyFilter(J)V

    .line 108
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    iget v1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/LightingColorFilter;->native_instance:J

    .line 109
    return-void
.end method


# virtual methods
.method public getColorAdd()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    return v0
.end method

.method public getColorMultiply()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    return v0
.end method

.method public setColorAdd(I)V
    .locals 0
    .param p1, "add"    # I

    .prologue
    .line 102
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 103
    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    .line 104
    return-void
.end method

.method public setColorMultiply(I)V
    .locals 0
    .param p1, "mul"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 77
    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    .line 78
    return-void
.end method
