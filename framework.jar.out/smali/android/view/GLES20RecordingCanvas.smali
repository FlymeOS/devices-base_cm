.class Landroid/view/GLES20RecordingCanvas;
.super Landroid/view/GLES20Canvas;
.source "GLES20RecordingCanvas.java"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/GLES20RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mNode:Landroid/view/RenderNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/view/GLES20Canvas;-><init>()V

    .line 41
    return-void
.end method

.method static obtain(Landroid/view/RenderNode;)Landroid/view/GLES20RecordingCanvas;
    .locals 3
    .param p0, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 44
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "node cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    sget-object v1, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    .line 46
    .local v0, "canvas":Landroid/view/GLES20RecordingCanvas;
    if-nez v0, :cond_1

    .line 47
    new-instance v0, Landroid/view/GLES20RecordingCanvas;

    .end local v0    # "canvas":Landroid/view/GLES20RecordingCanvas;
    invoke-direct {v0}, Landroid/view/GLES20RecordingCanvas;-><init>()V

    .line 49
    .restart local v0    # "canvas":Landroid/view/GLES20RecordingCanvas;
    :cond_1
    iput-object p0, v0, Landroid/view/GLES20RecordingCanvas;->mNode:Landroid/view/RenderNode;

    .line 50
    return-object v0
.end method


# virtual methods
.method finishRecording()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Landroid/view/GLES20RecordingCanvas;->mRenderer:J

    invoke-static {v0, v1}, Landroid/view/GLES20RecordingCanvas;->nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mNode:Landroid/view/RenderNode;

    .line 55
    sget-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
