.class Lcom/android/server/shrinker/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# instance fields
.field adj:I

.field frozen:Z

.field killed:Z

.field lastRss:J

.field lastTrimMemoryTime:J

.field mWinList:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field oom:Lcom/android/server/shrinker/ProcessRecord;

.field parent:Lcom/android/server/shrinker/PackageRecord;

.field pid:I

.field priority:I

.field process:Ljava/lang/String;

.field pss:J

.field rss:J

.field showUI:Z

.field syncParent:Lcom/android/server/shrinker/PackageRecordExt;


# direct methods
.method public constructor <init>(Lcom/android/server/shrinker/PackageRecord;Ljava/lang/String;I)V
    .locals 1
    .param p1, "parent"    # Lcom/android/server/shrinker/PackageRecord;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    .line 31
    iput-object p1, p0, Lcom/android/server/shrinker/ProcessRecord;->parent:Lcom/android/server/shrinker/PackageRecord;

    .line 32
    iput-object p2, p0, Lcom/android/server/shrinker/ProcessRecord;->process:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    .line 34
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    .line 30
    return-void
.end method


# virtual methods
.method public destoryWindow(I)V
    .locals 4
    .param p1, "winId"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hideWindow(I)V
    .locals 5
    .param p1, "winId"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/shrinker/ProcessRecord;->parent:Lcom/android/server/shrinker/PackageRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    monitor-enter v2

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    .line 73
    const/4 v1, 0x0

    return v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public kill(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 102
    iget v1, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/shrinker/ProcessRecord;->killed:Z

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    .line 104
    .local v0, "sync":Ljava/lang/Object;
    monitor-enter v0

    .line 105
    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/shrinker/ProcessRecord;->process:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object p1, v1, v2

    const/16 v2, 0x7547

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 106
    iget v1, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/shrinker/ProcessRecord;->killed:Z

    .line 108
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->parent:Lcom/android/server/shrinker/PackageRecord;

    iget-object v1, v1, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->killFlymeProcessGroup(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public scheduleTrimMemory(ZI)V
    .locals 6
    .param p1, "critical"    # Z
    .param p2, "level"    # I

    .prologue
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 119
    .local v0, "time":J
    iget v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->lastTrimMemoryTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 120
    iput-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->lastTrimMemoryTime:J

    .line 121
    iget v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-static {v2, p2, p1}, Lcom/android/server/am/Ams_Interface;->scheduleTrimMemory(IIZ)Z

    .line 117
    :cond_0
    return-void
.end method

.method public setAdj(ILcom/android/server/shrinker/ProcessRecord;)V
    .locals 0
    .param p1, "adj"    # I
    .param p2, "oom"    # Lcom/android/server/shrinker/ProcessRecord;

    .prologue
    .line 38
    iput p1, p0, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    .line 39
    iput-object p2, p0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    .line 37
    return-void
.end method

.method public setFreeze(Z)V
    .locals 0
    .param p1, "freeze"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/shrinker/ProcessRecord;->frozen:Z

    .line 113
    return-void
.end method

.method public setSyncParent(Lcom/android/server/shrinker/PackageRecordExt;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/server/shrinker/PackageRecordExt;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/shrinker/ProcessRecord;->syncParent:Lcom/android/server/shrinker/PackageRecordExt;

    .line 76
    return-void
.end method

.method public showWindow(III)V
    .locals 5
    .param p1, "winId"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 44
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/shrinker/Utils;->isLargeHalfScreen(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/shrinker/ProcessRecord;->showUI:Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/shrinker/ProcessRecord;->mWinList:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/shrinker/ProcessRecord;->parent:Lcom/android/server/shrinker/PackageRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->process:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, " adj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v1, " showUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/shrinker/ProcessRecord;->showUI:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 132
    const-string/jumbo v1, " pss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    iget-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 135
    const-string/jumbo v1, " rss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget v1, v1, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-lez v1, :cond_2

    .line 138
    const-string/jumbo v1, "\n\t\t     connected by [%s,%d,%d]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/shrinker/ProcessRecord;->process:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget v3, v3, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget v3, v3, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updatePss(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 91
    iget v0, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-gtz v0, :cond_1

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    const-wide/32 v2, 0x19000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    iget-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->lastRss:J

    iget-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 95
    iget v0, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-static {v0, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    .line 96
    iget-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    iput-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->lastRss:J

    goto :goto_0
.end method

.method public updateRss()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 81
    iget v0, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-gtz v0, :cond_0

    .line 82
    iput-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    .line 83
    iput-wide v2, p0, Lcom/android/server/shrinker/ProcessRecord;->lastRss:J

    .line 80
    :goto_0
    return-void

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    invoke-static {v0}, Lcom/android/server/shrinker/Utils;->getRss(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    goto :goto_0
.end method
