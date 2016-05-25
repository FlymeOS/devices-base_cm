.class public Landroid/filterpacks/imageproc/BlackWhiteFilter;
.super Landroid/filterfw/core/Filter;
.source "BlackWhiteFilter.java"


# instance fields
.field private mBlack:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "black"
    .end annotation
.end field

.field private final mBlackWhiteShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWhite:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "white"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    .line 39
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    .line 47
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlackWhiteShader:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    .line 88
    return-void
.end method

.method private updateParameters()V
    .locals 6

    .prologue
    .line 118
    iget v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    iget v5, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    sub-float/2addr v4, v5

    div-float v0, v3, v4

    .line 119
    .local v0, "scale":F
    :goto_0
    const v2, 0x3b808081

    .line 120
    .local v2, "stepsize":F
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v4, "black"

    iget v5, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "scale"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "stepsize"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const/4 v3, 0x2

    new-array v1, v3, [F

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    aput v4, v1, v3

    .line 125
    .local v1, "seed":[F
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "seed"

    invoke-virtual {v3, v4, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void

    .line 118
    .end local v0    # "scale":F
    .end local v1    # "seed":[F
    .end local v2    # "stepsize":F
    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

    .line 133
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 98
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 105
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 106
    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 107
    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

    .line 114
    iput p2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    .line 115
    return-void

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 138
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 139
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 142
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 143
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 150
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 153
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 156
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 157
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 93
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
