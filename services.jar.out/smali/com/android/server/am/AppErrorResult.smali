.class final Lcom/android/server/am/AppErrorResult;
.super Ljava/lang/Object;
.source "AppErrorResult.java"


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 19
    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 32
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    .line 37
    iget v1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    return v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public set(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 21
    monitor-enter p0

    .line 22
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 23
    iput p1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
