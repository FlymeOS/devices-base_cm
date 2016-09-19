.class public Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;
.super Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;
.source "DeformFilter.java"


# instance fields
.field private isAvailable:Z

.field private mDeformMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mRotateDegree:F

.field private mScaleX:F

.field private mScaleY:F

.field private mSkewX:F

.field private mSkewY:F

.field private mTransToX:I

.field private mTransToY:I

.field private pfd:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;-><init>()V

    .line 18
    iput v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleX:F

    .line 19
    iput v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleY:F

    .line 20
    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewX:F

    .line 21
    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewY:F

    .line 22
    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mRotateDegree:F

    .line 31
    iput-boolean v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->isAvailable:Z

    .line 34
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    return-void
.end method

.method private createDeformMatrix()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mDeformMatrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v1, "scaleMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleX:F

    iget v4, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleY:F

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 66
    iget v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mRotateDegree:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    .local v0, "rotateMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mRotateDegree:F

    invoke-virtual {v0, v3, v5, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 69
    iget-object v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mDeformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 75
    .end local v0    # "rotateMatrix":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    .local v2, "skewMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewX:F

    iget v4, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setSkew(FF)V

    .line 73
    iget-object v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mDeformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto :goto_0
.end method


# virtual methods
.method public filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x42b40000    # 90.0f

    .line 79
    iget-boolean v5, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->isAvailable:Z

    if-nez v5, :cond_0

    .line 89
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 80
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 81
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 82
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v5, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mDeformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 84
    iget v5, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mTransToX:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    int-to-float v6, v4

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mTransToY:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 85
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 86
    .local v1, "dstBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 88
    iget-object v5, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p1, v1

    .line 89
    goto :goto_0
.end method

.method public setPoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point1"    # Landroid/graphics/Point;
    .param p2, "point2"    # Landroid/graphics/Point;
    .param p3, "point3"    # Landroid/graphics/Point;
    .param p4, "point4"    # Landroid/graphics/Point;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v1, 0x5a

    const/4 v0, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    .line 40
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    .end local p1    # "point1":Landroid/graphics/Point;
    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 41
    .restart local p1    # "point1":Landroid/graphics/Point;
    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Landroid/graphics/Point;

    .end local p2    # "point2":Landroid/graphics/Point;
    invoke-direct {p2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 42
    .restart local p2    # "point2":Landroid/graphics/Point;
    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Landroid/graphics/Point;

    .end local p3    # "point3":Landroid/graphics/Point;
    invoke-direct {p3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 43
    .restart local p3    # "point3":Landroid/graphics/Point;
    :cond_2
    if-nez p4, :cond_3

    new-instance p4, Landroid/graphics/Point;

    .end local p4    # "point4":Landroid/graphics/Point;
    invoke-direct {p4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 44
    .restart local p4    # "point4":Landroid/graphics/Point;
    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/flymetheme/iconfilter/utils/ShapeUtils;->isCanFormParallelogram(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->isAvailable:Z

    if-nez v0, :cond_4

    .line 60
    :goto_0
    return-void

    .line 45
    :cond_4
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mTransToX:I

    .line 46
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mTransToY:I

    .line 47
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleX:F

    .line 48
    iget v0, p4, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleY:F

    .line 49
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    .line 50
    iput v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewY:F

    iput v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewX:F

    .line 51
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleX:F

    .line 52
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mScaleY:F

    .line 53
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_5

    :cond_5
    iput v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mRotateDegree:F

    .line 59
    :goto_1
    invoke-direct {p0}, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->createDeformMatrix()V

    goto :goto_0

    .line 55
    :cond_6
    iput v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mRotateDegree:F

    .line 56
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p4, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewX:F

    .line 57
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->mSkewY:F

    goto :goto_1
.end method
