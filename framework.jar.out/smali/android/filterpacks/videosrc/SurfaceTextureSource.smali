.class public Landroid/filterpacks/videosrc/SurfaceTextureSource;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTextureSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureSource"

.field private static final mLogVerbose:Z

.field private static final mSourceCoords:[F


# instance fields
.field private mCloseOnTimeout:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "closeOnTimeout"
    .end annotation
.end field

.field private mFirstFrame:Z

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mFrameTransform:[F

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mMappedCoords:[F

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mNewFrameAvailable:Landroid/os/ConditionVariable;

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private final mRenderShader:Ljava/lang/String;

.field private mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "sourceListener"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWaitTimeout:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitTimeout"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    .line 131
    const-string v0, "SurfaceTextureSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    return-void

    .line 114
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 134
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    .line 93
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    .line 119
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mRenderShader:Ljava/lang/String;

    .line 247
    new-instance v0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;-><init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 135
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    .line 136
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    .line 137
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    .line 138
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$100(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroid/filterpacks/videosrc/SurfaceTextureSource;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private createFormats()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 148
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 151
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v2, 0x0

    .line 227
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureSource"

    const-string v1, "SurfaceTextureSource closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    invoke-interface {v0, v2}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 229
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 230
    iput-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 231
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 242
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 245
    :cond_1
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 170
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureSource"

    const-string v1, "Opening SurfaceTextureSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 174
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 176
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    .line 178
    return-void
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 155
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureSource"

    const-string v1, "Preparing SurfaceTextureSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->createFormats()V

    .line 160
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 165
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 166
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v1, 0x0

    .line 182
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SurfaceTextureSource"

    const-string v2, "Processing new frame"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    if-eqz v0, :cond_6

    .line 187
    :cond_1
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v9

    .line 189
    .local v9, "gotNewFrame":Z
    if-nez v9, :cond_5

    .line 190
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    if-nez v0, :cond_2

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timeout waiting for new frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    if-eqz v0, :cond_3

    const-string v0, "SurfaceTextureSource"

    const-string v1, "Timeout waiting for a new frame. Closing."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->closeOutputPort(Ljava/lang/String;)V

    .line 223
    .end local v9    # "gotNewFrame":Z
    :goto_0
    return-void

    .line 199
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 201
    :cond_5
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 202
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    .line 205
    :cond_6
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 207
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 208
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    sget-object v4, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 211
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    aget v1, v2, v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    iget-object v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/16 v8, 0xc

    aget v7, v7, v8

    iget-object v8, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    const/16 v11, 0xd

    aget v8, v8, v11

    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 216
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v10

    .line 217
    .local v10, "output":Landroid/filterfw/core/Frame;
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0, v1, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 219
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 221
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0, v10}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 222
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 143
    const-string/jumbo v0, "video"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 145
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 235
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 238
    :cond_0
    return-void
.end method
