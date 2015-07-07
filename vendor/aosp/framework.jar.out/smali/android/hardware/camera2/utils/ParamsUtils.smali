.class public Landroid/hardware/camera2/utils/ParamsUtils;
.super Ljava/lang/Object;
.source "ParamsUtils.java"


# static fields
.field private static final RATIONAL_DENOMINATOR:I = 0xf4240


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static convertRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 1
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "destination"    # Landroid/graphics/RectF;

    .prologue
    .line 170
    const-string/jumbo v0, "source must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 174
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 175
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 176
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 177
    return-void
.end method

.method public static createRational(F)Landroid/util/Rational;
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 122
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    sget-object v3, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 157
    :goto_0
    return-object v3

    .line 124
    :cond_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, p0, v3

    if-nez v3, :cond_1

    .line 125
    sget-object v3, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    goto :goto_0

    .line 126
    :cond_1
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v3, p0, v3

    if-nez v3, :cond_2

    .line 127
    sget-object v3, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    goto :goto_0

    .line 128
    :cond_2
    const/4 v3, 0x0

    cmpl-float v3, p0, v3

    if-nez v3, :cond_3

    .line 129
    sget-object v3, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    goto :goto_0

    .line 139
    :cond_3
    const v0, 0xf4240

    .line 142
    .local v0, "den":I
    :goto_1
    int-to-float v3, v0

    mul-float v2, p0, v3

    .line 144
    .local v2, "numF":F
    const/high16 v3, -0x31000000

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    const/high16 v3, 0x4f000000

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 155
    :cond_5
    float-to-int v1, v2

    .line 157
    .local v1, "num":I
    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v1, v0}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    .line 148
    .end local v1    # "num":I
    :cond_6
    div-int/lit8 v0, v0, 0xa

    .line 149
    goto :goto_1
.end method

.method public static createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 65
    const-string/jumbo v1, "rect must not be null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 70
    return-object v0
.end method

.method public static createRect(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "size"    # Landroid/util/Size;

    .prologue
    const/4 v3, 0x0

    .line 47
    const-string/jumbo v0, "size must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static createSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    const-string/jumbo v0, "rect must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string/jumbo v1, "r must not be null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "key must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "defaultValue must not be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 193
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "transform"    # Landroid/graphics/Matrix;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    const-string/jumbo v1, "transform must not be null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v1, "rect must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 91
    .local v0, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 92
    invoke-static {v0}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method
