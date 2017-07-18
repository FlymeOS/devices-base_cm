.class public Landroid/graphics/RadialGradient;
.super Landroid/graphics/Shader;
.source "RadialGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_CENTER_AND_COLOR_EDGE:I = 0x2


# instance fields
.field private mCenterColor:I

.field private mColors:[I

.field private mEdgeColor:I

.field private mPositions:[F

.field private mRadius:F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FFFIILandroid/graphics/Shader$TileMode;)V
    .locals 6
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "centerColor"    # I
    .param p5, "edgeColor"    # I
    .param p6, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 85
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "radius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 89
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 90
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 91
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 92
    iput p4, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    .line 93
    iput p5, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    .line 94
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 95
    iget v5, p6, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/RadialGradient;->nativeCreate2(FFFIII)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RadialGradient;->init(J)V

    .line 84
    return-void
.end method

.method public constructor <init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 6
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "colors"    # [I
    .param p5, "stops"    # [F
    .param p6, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 56
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "radius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    array-length v0, p4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    if-eqz p5, :cond_2

    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 66
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 67
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 68
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 69
    iput-object p4, p0, Landroid/graphics/RadialGradient;->mColors:[I

    .line 70
    iput-object p5, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 71
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 72
    iget v5, p6, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/RadialGradient;->nativeCreate1(FFF[I[FI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RadialGradient;->init(J)V

    .line 55
    return-void
.end method

.method private static native nativeCreate1(FFF[I[FI)J
.end method

.method private static native nativeCreate2(FFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 104
    iget v1, p0, Landroid/graphics/RadialGradient;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "RadialGradient should be created with either colors and positions or center color and edge color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :pswitch_0
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v2, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v4, p0, Landroid/graphics/RadialGradient;->mColors:[I

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 107
    iget-object v6, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    if-eqz v6, :cond_0

    iget-object v5, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    :cond_0
    iget-object v6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 106
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 116
    .local v0, "copy":Landroid/graphics/RadialGradient;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/RadialGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 117
    return-object v0

    .line 110
    .end local v0    # "copy":Landroid/graphics/RadialGradient;
    :pswitch_1
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v2, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    iget v5, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    iget-object v6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 111
    .restart local v0    # "copy":Landroid/graphics/RadialGradient;
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
