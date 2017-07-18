.class public final Landroid/view/SurfaceSession;
.super Ljava/lang/Object;
.source "SurfaceSession.java"


# instance fields
.field private mNativeClient:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/view/SurfaceSession;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    .line 34
    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeKill(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 43
    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 40
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 45
    throw v0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeKill(J)V

    .line 55
    return-void
.end method
