.class public Landroid/os/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 50
    return-void
.end method


# virtual methods
.method public block()V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    .line 92
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public block(J)Z
    .locals 9
    .param p1, "timeout"    # J

    .prologue
    .line 122
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-eqz v1, :cond_1

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 125
    .local v4, "now":J
    add-long v2, v4, p1

    .line 126
    .local v2, "end":J
    :goto_0
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 128
    sub-long v6, v2, v4

    :try_start_1
    invoke-virtual {p0, v6, v7}, Landroid/os/ConditionVariable;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 134
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 123
    .end local v2    # "end":J
    .end local v4    # "now":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 137
    :cond_1
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 79
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 66
    .local v0, "old":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .line 67
    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 62
    return-void

    .line 64
    .end local v0    # "old":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
