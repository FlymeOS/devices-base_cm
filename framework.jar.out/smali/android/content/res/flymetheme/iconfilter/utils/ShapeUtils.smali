.class public Landroid/content/res/flymetheme/iconfilter/utils/ShapeUtils;
.super Ljava/lang/Object;
.source "ShapeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCanFormParallelogram(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 7
    .param p0, "point1"    # Landroid/graphics/Point;
    .param p1, "point2"    # Landroid/graphics/Point;
    .param p2, "point3"    # Landroid/graphics/Point;
    .param p3, "point4"    # Landroid/graphics/Point;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_1

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_1

    .line 16
    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, p3, Landroid/graphics/Point;->y:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 17
    :cond_1
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    .line 18
    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 20
    :cond_3
    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 21
    iget v3, p3, Landroid/graphics/Point;->y:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget v4, p3, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 20
    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 22
    iget v2, p0, Landroid/graphics/Point;->y:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 23
    iget v3, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 22
    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move v1, v0

    .line 20
    :cond_4
    return v1
.end method
