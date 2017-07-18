.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# static fields
.field private static final TYPE_PORTERDUFFMODE:I = 0x2

.field private static final TYPE_XFERMODE:I = 0x1


# instance fields
.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private final mShaderA:Landroid/graphics/Shader;

.field private final mShaderB:Landroid/graphics/Shader;

.field private mType:I

.field private mXferMode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/ComposeShader;->mType:I

    .line 69
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 70
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 71
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    .line 73
    iget v4, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    .line 72
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/ComposeShader;->nativeCreate2(JJI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ComposeShader;->init(J)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 6
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/ComposeShader;->mType:I

    .line 53
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 54
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 55
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    .line 57
    if-eqz p3, :cond_0

    iget-wide v4, p3, Landroid/graphics/Xfermode;->native_instance:J

    .line 56
    :goto_0
    invoke-static/range {v0 .. v5}, Landroid/graphics/ComposeShader;->nativeCreate1(JJJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ComposeShader;->init(J)V

    .line 51
    return-void

    .line 57
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private static native nativeCreate1(JJJ)J
.end method

.method private static native nativeCreate2(JJI)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    .prologue
    .line 82
    iget v1, p0, Landroid/graphics/ComposeShader;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 91
    const-string/jumbo v2, "ComposeShader should be created with either Xfermode or PorterDuffMode"

    .line 90
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :pswitch_0
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 93
    .local v0, "copy":Landroid/graphics/ComposeShader;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/ComposeShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 94
    return-object v0

    .line 87
    .end local v0    # "copy":Landroid/graphics/ComposeShader;
    :pswitch_1
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 88
    .restart local v0    # "copy":Landroid/graphics/ComposeShader;
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
