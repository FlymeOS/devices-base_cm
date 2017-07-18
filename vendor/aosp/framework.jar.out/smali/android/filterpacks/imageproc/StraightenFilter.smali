.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "StraightenFilter.java"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    .line 40
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 43
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    .line 47
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 48
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 49
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 53
    return-void
.end method

.method private updateParameters()V
    .locals 13

    .prologue
    .line 116
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const v11, 0x3c8efa35

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v0, v10

    .line 117
    .local v0, "cosTheta":F
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const v11, 0x3c8efa35

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 119
    .local v9, "sinTheta":F
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 120
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Max angle is out of range (0-180)."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 121
    :cond_0
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    const/high16 v10, 0x42b40000    # 90.0f

    :goto_0
    iput v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 123
    new-instance v3, Landroid/filterfw/geometry/Point;

    neg-float v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    .line 124
    neg-float v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    sub-float/2addr v11, v12

    .line 123
    invoke-direct {v3, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 126
    .local v3, "p0":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    .line 127
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    sub-float/2addr v11, v12

    .line 126
    invoke-direct {v4, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 129
    .local v4, "p1":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    neg-float v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    .line 130
    neg-float v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    add-float/2addr v11, v12

    .line 129
    invoke-direct {v5, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 132
    .local v5, "p2":Landroid/filterfw/geometry/Point;
    new-instance v6, Landroid/filterfw/geometry/Point;

    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    .line 133
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    add-float/2addr v11, v12

    .line 132
    invoke-direct {v6, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 135
    .local v6, "p3":Landroid/filterfw/geometry/Point;
    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v4, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 136
    .local v2, "maxWidth":F
    iget v10, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 138
    .local v1, "maxHeight":F
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v2

    .line 139
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    div-float/2addr v11, v1

    .line 138
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v8, v11, v10

    .line 141
    .local v8, "scale":F
    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    iget v11, v3, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 142
    iget v10, v4, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    invoke-virtual {v4, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 143
    iget v10, v5, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    iget v11, v5, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    invoke-virtual {v5, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 144
    iget v10, v6, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    iget v11, v6, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    invoke-virtual {v6, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 146
    new-instance v7, Landroid/filterfw/geometry/Quad;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 147
    .local v7, "quad":Landroid/filterfw/geometry/Quad;
    iget-object v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v10, v7}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 115
    return-void

    .line 121
    .end local v1    # "maxHeight":F
    .end local v2    # "maxWidth":F
    .end local v3    # "p0":Landroid/filterfw/geometry/Point;
    .end local v4    # "p1":Landroid/filterfw/geometry/Point;
    .end local v5    # "p2":Landroid/filterfw/geometry/Point;
    .end local v6    # "p3":Landroid/filterfw/geometry/Point;
    .end local v7    # "quad":Landroid/filterfw/geometry/Quad;
    .end local v8    # "scale":F
    :cond_1
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    goto/16 :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 79
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 64
    packed-switch p2, :pswitch_data_0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    const-string/jumbo v3, "!"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 67
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 68
    iput-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 75
    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 63
    return-void

    .line 64
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 88
    const-string/jumbo v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 89
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 92
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 93
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 97
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 98
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 99
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 100
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 106
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 109
    const-string/jumbo v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/StraightenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 112
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 86
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
