.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mLocalMatrix:Landroid/graphics/Matrix;

.field private native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeSetLocalMatrix(JJ)V
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/graphics/Shader;

    invoke-direct {v0}, Landroid/graphics/Shader;-><init>()V

    .line 101
    .local v0, "copy":Landroid/graphics/Shader;
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 102
    return-object v0
.end method

.method protected copyLocalMatrix(Landroid/graphics/Shader;)V
    .locals 2
    .param p1, "dest"    # Landroid/graphics/Shader;

    .prologue
    .line 109
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 111
    .local v0, "lm":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 112
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 116
    .end local v0    # "lm":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeDestructor(J)V

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v0

    iget-wide v2, p0, Landroid/graphics/Shader;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/Shader;->nativeDestructor(J)V

    throw v0
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 2
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 72
    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 74
    :cond_0
    return v0
.end method

.method getNativeInstance()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    return-wide v0
.end method

.method protected init(J)V
    .locals 1
    .param p1, "ni"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Landroid/graphics/Shader;->native_instance:J

    .line 38
    return-void
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 85
    iget-wide v2, p0, Landroid/graphics/Shader;->native_instance:J

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Shader;->nativeSetLocalMatrix(JJ)V

    .line 86
    return-void

    .line 85
    :cond_0
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_0
.end method
