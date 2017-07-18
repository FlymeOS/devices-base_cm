.class public Landroid/graphics/drawable/PaintDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const-string/jumbo v6, "corners"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 77
    sget-object v6, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    .line 76
    invoke-virtual {p2, p4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 78
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 80
    .local v3, "radius":I
    int-to-float v6, v3

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 85
    const/4 v6, 0x1

    .line 84
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 87
    .local v4, "topLeftRadius":I
    const/4 v6, 0x2

    .line 86
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 89
    .local v5, "topRightRadius":I
    const/4 v6, 0x3

    .line 88
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 91
    .local v1, "bottomLeftRadius":I
    const/4 v6, 0x4

    .line 90
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 93
    .local v2, "bottomRightRadius":I
    if-ne v4, v3, :cond_0

    if-eq v5, v3, :cond_2

    .line 95
    :cond_0
    :goto_0
    const/16 v6, 0x8

    new-array v6, v6, [F

    .line 96
    int-to-float v7, v4

    const/4 v8, 0x0

    aput v7, v6, v8

    int-to-float v7, v4

    const/4 v8, 0x1

    aput v7, v6, v8

    .line 97
    int-to-float v7, v5

    const/4 v8, 0x2

    aput v7, v6, v8

    int-to-float v7, v5

    const/4 v8, 0x3

    aput v7, v6, v8

    .line 98
    int-to-float v7, v1

    const/4 v8, 0x4

    aput v7, v6, v8

    int-to-float v7, v1

    const/4 v8, 0x5

    aput v7, v6, v8

    .line 99
    int-to-float v7, v2

    const/4 v8, 0x6

    aput v7, v6, v8

    int-to-float v7, v2

    const/4 v8, 0x7

    aput v7, v6, v8

    .line 95
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 102
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    const/4 v6, 0x1

    return v6

    .line 94
    :cond_2
    if-ne v1, v3, :cond_0

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 105
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bottomLeftRadius":I
    .end local v2    # "bottomRightRadius":I
    .end local v3    # "radius":I
    .end local v4    # "topLeftRadius":I
    .end local v5    # "topRightRadius":I
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v6

    return v6
.end method

.method public setCornerRadii([F)V
    .locals 2
    .param p1, "radii"    # [F

    .prologue
    const/4 v1, 0x0

    .line 62
    if-nez p1, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->invalidateSelf()V

    .line 61
    return-void

    .line 67
    :cond_1
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0
.end method

.method public setCornerRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .prologue
    const/16 v3, 0x8

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "radii":[F
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 47
    new-array v1, v3, [F

    .line 48
    .local v1, "radii":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 49
    aput p1, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    .end local v1    # "radii":[F
    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 44
    return-void
.end method
