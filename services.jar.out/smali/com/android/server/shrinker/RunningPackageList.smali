.class Lcom/android/server/shrinker/RunningPackageList;
.super Ljava/lang/Object;
.source "RunningPackageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/shrinker/RunningPackageList$Comparator;
    }
.end annotation


# static fields
.field private static final OOM_LABEL:[Ljava/lang/String;


# instance fields
.field pkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 180
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 181
    const-string/jumbo v1, "System"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "Persistent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "Foreground"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "Visible"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "Perceptible"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "Heavy"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "Backup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "Home"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "Previous"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "Services"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "Cached"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 180
    sput-object v0, Lcom/android/server/shrinker/RunningPackageList;->OOM_LABEL:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    .line 10
    return-void
.end method

.method private logError(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 79
    const-string/jumbo v0, "Shrinker"

    const-string/jumbo v1, "pgk=%s uid=%d process=%s pid=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/android/server/shrinker/Utils;->printStackTrace()V

    .line 78
    return-void
.end method


# virtual methods
.method public add(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/shrinker/RunningPackageList;->getPackage(Landroid/content/pm/ApplicationInfo;)Lcom/android/server/shrinker/PackageRecord;

    move-result-object v0

    .line 16
    .local v0, "list":Lcom/android/server/shrinker/PackageRecord;
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/android/server/shrinker/PackageRecord;

    .end local v0    # "list":Lcom/android/server/shrinker/PackageRecord;
    invoke-direct {v0, p1}, Lcom/android/server/shrinker/PackageRecord;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 18
    .restart local v0    # "list":Lcom/android/server/shrinker/PackageRecord;
    iget-object v1, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/shrinker/PackageRecord;->find(I)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/shrinker/RunningPackageList;->logError(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 22
    return-void

    .line 24
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/shrinker/PackageRecord;->put(Ljava/lang/String;I)Lcom/android/server/shrinker/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 13
    return-void

    .line 14
    .end local v0    # "list":Lcom/android/server/shrinker/PackageRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPackage(Landroid/content/pm/ApplicationInfo;)Lcom/android/server/shrinker/PackageRecord;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/PackageRecord;

    iget-object v1, v1, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1}, Lcom/android/server/shrinker/Utils;->isEqual(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/PackageRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 125
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getProcess(II)Lcom/android/server/shrinker/ProcessRecord;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 100
    monitor-enter p0

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "app":Lcom/android/server/shrinker/ProcessRecord;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .end local v0    # "app":Lcom/android/server/shrinker/ProcessRecord;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecord;

    iget-object v2, v2, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, p1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecord;

    invoke-virtual {v2, p2}, Lcom/android/server/shrinker/PackageRecord;->find(I)Lcom/android/server/shrinker/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    .local v0, "app":Lcom/android/server/shrinker/ProcessRecord;
    if-eqz v0, :cond_0

    monitor-exit p0

    .line 106
    return-object v0

    .line 102
    .end local v0    # "app":Lcom/android/server/shrinker/ProcessRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 110
    return-object v3

    .line 100
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getProcess(Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/shrinker/ProcessRecord;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/shrinker/RunningPackageList;->getPackage(Landroid/content/pm/ApplicationInfo;)Lcom/android/server/shrinker/PackageRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    .local v0, "list":Lcom/android/server/shrinker/PackageRecord;
    if-nez v0, :cond_0

    monitor-exit p0

    .line 118
    return-object v1

    .line 120
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/shrinker/PackageRecord;->find(I)Lcom/android/server/shrinker/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 115
    .end local v0    # "list":Lcom/android/server/shrinker/PackageRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRunningAppList(Z)Ljava/util/ArrayList;
    .locals 5
    .param p1, "optimize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/PackageRecord;

    .line 87
    .local v1, "r":Lcom/android/server/shrinker/PackageRecord;
    invoke-virtual {v1}, Lcom/android/server/shrinker/PackageRecord;->toExt()Lcom/android/server/shrinker/PackageRecordExt;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v1    # "r":Lcom/android/server/shrinker/PackageRecord;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecordExt;

    .line 91
    .local v2, "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v2, p1}, Lcom/android/server/shrinker/PackageRecordExt;->syncData(Z)V

    goto :goto_1

    .line 93
    .end local v2    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecordExt;

    .line 94
    .restart local v2    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v2}, Lcom/android/server/shrinker/PackageRecordExt;->syncOom()V

    goto :goto_2

    .line 96
    .end local v2    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_2
    return-object v0
.end method

.method public remove(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/shrinker/PackageRecord;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    const/4 v2, 0x0

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/shrinker/RunningPackageList;->getPackage(Landroid/content/pm/ApplicationInfo;)Lcom/android/server/shrinker/PackageRecord;

    move-result-object v0

    .line 32
    .local v0, "list":Lcom/android/server/shrinker/PackageRecord;
    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/shrinker/RunningPackageList;->logError(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 34
    return-object v2

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {v0, p3}, Lcom/android/server/shrinker/PackageRecord;->remove(I)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v1

    .line 38
    .local v1, "r":Lcom/android/server/shrinker/ProcessRecord;
    if-nez v1, :cond_2

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/shrinker/RunningPackageList;->logError(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 45
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecord;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 48
    return-object v0

    .line 41
    :cond_2
    const/16 v2, 0x10

    :try_start_2
    iput v2, v1, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    .line 42
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/shrinker/ProcessRecord;->pid:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "list":Lcom/android/server/shrinker/PackageRecord;
    .end local v1    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAdj(Landroid/content/pm/ApplicationInfo;IILandroid/content/pm/ApplicationInfo;I)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pid"    # I
    .param p3, "adj"    # I
    .param p4, "oomInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "oomPid"    # I

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/shrinker/RunningPackageList;->getProcess(Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v0

    .line 55
    .local v0, "r":Lcom/android/server/shrinker/ProcessRecord;
    const/4 v1, 0x0

    .line 56
    .local v1, "s":Lcom/android/server/shrinker/ProcessRecord;
    if-nez v0, :cond_0

    .line 57
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/shrinker/RunningPackageList;->logError(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 58
    return-void

    .line 60
    :cond_0
    if-eqz p5, :cond_1

    .line 61
    :try_start_1
    invoke-virtual {p0, p4, p5}, Lcom/android/server/shrinker/RunningPackageList;->getProcess(Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v1

    .line 63
    .end local v1    # "s":Lcom/android/server/shrinker/ProcessRecord;
    :cond_1
    invoke-virtual {v0, p3, v1}, Lcom/android/server/shrinker/ProcessRecord;->setAdj(ILcom/android/server/shrinker/ProcessRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 52
    return-void

    .line 53
    .end local v0    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setFreeze(Landroid/content/pm/ApplicationInfo;IZ)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pid"    # I
    .param p3, "freeze"    # Z

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/shrinker/RunningPackageList;->getProcess(Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v0

    .line 70
    .local v0, "r":Lcom/android/server/shrinker/ProcessRecord;
    if-nez v0, :cond_0

    .line 71
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/shrinker/RunningPackageList;->logError(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 72
    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {v0, p3}, Lcom/android/server/shrinker/ProcessRecord;->setFreeze(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 67
    return-void

    .line 68
    .end local v0    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/shrinker/RunningPackageList;->pkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/16 v10, 0xa

    .line 142
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/shrinker/Shrinker;->getScanner()Lcom/android/server/shrinker/RootScanner;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/shrinker/RootScanner;->prepareList()V

    .line 143
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/shrinker/RunningPackageList;->getRunningAppList(Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/shrinker/Utils;->classify(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v3

    .line 144
    .local v3, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x400

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 146
    .local v7, "size":I
    new-instance v1, Lcom/android/server/shrinker/RunningPackageList$Comparator;

    invoke-direct {v1, v9}, Lcom/android/server/shrinker/RunningPackageList$Comparator;-><init>(Lcom/android/server/shrinker/RunningPackageList$Comparator;)V

    .line 147
    .local v1, "comp":Lcom/android/server/shrinker/RunningPackageList$Comparator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v8, Lcom/android/server/shrinker/RunningPackageList;->OOM_LABEL:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 148
    sget-object v8, Lcom/android/server/shrinker/RunningPackageList;->OOM_LABEL:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 149
    .local v4, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    if-eqz v4, :cond_1

    .line 150
    sget-object v8, Lcom/android/server/shrinker/RunningPackageList;->OOM_LABEL:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/shrinker/PackageRecordExt;

    .line 153
    .local v5, "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v5}, Lcom/android/server/shrinker/PackageRecordExt;->size()I

    move-result v8

    add-int/2addr v7, v8

    .line 154
    invoke-virtual {v5}, Lcom/android/server/shrinker/PackageRecordExt;->updateRss()V

    .line 155
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/server/shrinker/PackageRecordExt;->updatePss(Z)V

    goto :goto_1

    .line 157
    .end local v5    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_0
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/shrinker/PackageRecordExt;

    .line 159
    .restart local v5    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v5}, Lcom/android/server/shrinker/PackageRecordExt;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 147
    .end local v5    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    .end local v6    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v4    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    :cond_2
    const-string/jumbo v8, "Total size:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
