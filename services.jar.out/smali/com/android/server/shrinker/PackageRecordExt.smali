.class Lcom/android/server/shrinker/PackageRecordExt;
.super Lcom/android/server/shrinker/PackageRecord;
.source "PackageRecordExt.java"


# instance fields
.field duration:I

.field flags:I

.field frozen:Z

.field killReason:Ljava/lang/String;

.field killType:I

.field minAdj:I

.field oomAdj:I

.field oomPriority:I

.field priority:I

.field skip:Z

.field totalPss:J

.field totalRss:J

.field visible:Z


# direct methods
.method public constructor <init>(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/shrinker/PackageRecord;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/shrinker/PackageRecordExt;->set(Lcom/android/server/shrinker/PackageRecord;)V

    .line 25
    return-void
.end method

.method private getMinAdj()I
    .locals 4

    .prologue
    .line 134
    const/16 v0, 0x10

    .line 135
    .local v0, "adj":I
    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    .line 136
    .local v1, "r":Lcom/android/server/shrinker/ProcessRecord;
    iget v3, v1, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    if-le v0, v3, :cond_0

    iget v0, v1, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    goto :goto_0

    .line 138
    .end local v1    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :cond_1
    return v0
.end method

.method private isStatusChanged()Z
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/shrinker/PackageRecordExt;->getMinAdj()I

    move-result v0

    iget v1, p0, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isSystemApp()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecordExt;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public kill()Z
    .locals 5

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/shrinker/PackageRecordExt;->isStatusChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/4 v3, 0x0

    return v3

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "killed":Z
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->killType:I

    sget v4, Lcom/android/server/shrinker/Utils;->PROC_KILL_ALL:I

    if-ne v3, v4, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    .line 117
    .local v1, "r":Lcom/android/server/shrinker/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->killReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/shrinker/ProcessRecord;->kill(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "r":Lcom/android/server/shrinker/ProcessRecord;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->killType:I

    sget v4, Lcom/android/server/shrinker/Utils;->PROC_KILL_MAIN:I

    if-ne v3, v4, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    invoke-static {v3}, Lcom/android/server/shrinker/Utils;->isValid(Lcom/android/server/shrinker/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/shrinker/ProcessRecord;->showUI:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/shrinker/ProcessRecord;->killed:Z

    if-eqz v3, :cond_3

    .line 126
    :cond_2
    :goto_1
    return v0

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->killReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/shrinker/ProcessRecord;->kill(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public scheduleTrimMemory(I)V
    .locals 5
    .param p1, "factor"    # I

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "level":I
    const/4 v0, 0x0

    .line 144
    .local v0, "critical":Z
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 145
    iget-boolean v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->visible:Z

    if-eqz v4, :cond_1

    .line 146
    const/4 v1, 0x5

    .line 155
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/ProcessRecord;

    .line 156
    .local v2, "r":Lcom/android/server/shrinker/ProcessRecord;
    invoke-virtual {v2, v0, v1}, Lcom/android/server/shrinker/ProcessRecord;->scheduleTrimMemory(ZI)V

    goto :goto_1

    .line 147
    .end local v2    # "r":Lcom/android/server/shrinker/ProcessRecord;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    const/16 v1, 0x3c

    goto :goto_0

    .line 149
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 151
    iget-boolean v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->visible:Z

    if-eqz v4, :cond_3

    .line 152
    const/16 v1, 0xf

    goto :goto_0

    .line 153
    :cond_3
    const/16 v1, 0x50

    goto :goto_0

    .line 141
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public syncData(Z)V
    .locals 8
    .param p1, "optimize"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    .line 52
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    .line 53
    iput-boolean v6, p0, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    .line 54
    iput-boolean v7, p0, Lcom/android/server/shrinker/PackageRecordExt;->frozen:Z

    .line 55
    sget v3, Lcom/android/server/shrinker/Utils;->PROC_KILL_ALL:I

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->killType:I

    .line 56
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->killReason:Ljava/lang/String;

    .line 57
    iput-boolean v6, p0, Lcom/android/server/shrinker/PackageRecordExt;->visible:Z

    .line 58
    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    .line 59
    .local v1, "r":Lcom/android/server/shrinker/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/shrinker/Utils;->isValid(Lcom/android/server/shrinker/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    iget v4, v1, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    if-le v3, v4, :cond_1

    iget v3, v1, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    .line 61
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/shrinker/ProcessRecord;->frozen:Z

    if-nez v3, :cond_2

    iput-boolean v6, p0, Lcom/android/server/shrinker/PackageRecordExt;->frozen:Z

    .line 62
    :cond_2
    iget-boolean v3, v1, Lcom/android/server/shrinker/ProcessRecord;->showUI:Z

    if-eqz v3, :cond_3

    iput-boolean v7, p0, Lcom/android/server/shrinker/PackageRecordExt;->showUI:Z

    .line 63
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->visible:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/shrinker/ProcessRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v7, p0, Lcom/android/server/shrinker/PackageRecordExt;->visible:Z

    .line 64
    :cond_4
    invoke-virtual {v1, p0}, Lcom/android/server/shrinker/ProcessRecord;->setSyncParent(Lcom/android/server/shrinker/PackageRecordExt;)V

    goto :goto_0

    .line 67
    .end local v1    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :cond_5
    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 68
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    .line 69
    invoke-static {v7, v0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    .line 70
    iget-boolean v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->visible:Z

    if-eqz v3, :cond_6

    .line 71
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    .line 74
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->recent:Z

    if-eqz v3, :cond_7

    .line 75
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    .line 77
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->visible:Z

    if-eqz v3, :cond_b

    .line 78
    iput v6, p0, Lcom/android/server/shrinker/PackageRecordExt;->duration:I

    .line 83
    :goto_1
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v3}, Lcom/android/server/shrinker/PackageStateInfo;->isDisallow(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 84
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    and-int/lit16 v3, v3, 0xd1c

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    .line 89
    :cond_8
    :goto_2
    if-nez p1, :cond_9

    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v3}, Lcom/android/server/shrinker/PackageStateInfo;->isBlack(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 90
    :cond_9
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    .line 50
    :cond_a
    return-void

    .line 80
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/shrinker/PackageRecordExt;->lastActiveTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->duration:I

    goto :goto_1

    .line 85
    :cond_c
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v3}, Lcom/android/server/shrinker/PackageStateInfo;->isNotification(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    const/16 v4, -0x10

    if-eq v3, v4, :cond_8

    .line 86
    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    goto :goto_2
.end method

.method public syncOom()V
    .locals 4

    .prologue
    .line 95
    iget v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    iput v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    .line 96
    iget v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    iput v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    .line 97
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/ProcessRecord;

    .line 98
    .local v0, "r":Lcom/android/server/shrinker/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/shrinker/Utils;->isValid(Lcom/android/server/shrinker/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    invoke-static {v2}, Lcom/android/server/shrinker/Utils;->isValid(Lcom/android/server/shrinker/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, v0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/shrinker/ProcessRecord;->syncParent:Lcom/android/server/shrinker/PackageRecordExt;

    if-eqz v2, :cond_1

    .line 100
    iget v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    iget-object v3, v0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/shrinker/ProcessRecord;->syncParent:Lcom/android/server/shrinker/PackageRecordExt;

    iget v3, v3, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    .line 102
    :cond_1
    iget-object v2, v0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget v2, v2, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    if-ge v2, v3, :cond_0

    .line 103
    iget-object v2, v0, Lcom/android/server/shrinker/ProcessRecord;->oom:Lcom/android/server/shrinker/ProcessRecord;

    iget v2, v2, Lcom/android/server/shrinker/ProcessRecord;->adj:I

    iput v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    goto :goto_0

    .line 94
    .end local v0    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/shrinker/PackageRecordExt;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 12
    .param p1, "kill"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v2, " uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v2, "\tadj:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v2, "\tduration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v2, "\tshowUi:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->showUI:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v2, "\tid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/am/Ams_Utils;->getCloneId(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    iget-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_0

    .line 182
    const-string/jumbo v2, "\trss:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    iget-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    .line 187
    const-string/jumbo v2, "\tpss:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    iget v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    if-eqz v2, :cond_2

    .line 192
    const-string/jumbo v2, "\tpriority:[0x%x]"

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    invoke-static {v7, v3}, Lcom/android/server/shrinker/PackageStateInfo;->description(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    iget v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    if-eqz v2, :cond_3

    .line 198
    const-string/jumbo v2, "\tflags:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v8, v3}, Lcom/android/server/shrinker/PackageStateInfo;->description(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_3
    if-eqz p1, :cond_6

    .line 204
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/shrinker/ProcessRecord;->killed:Z

    if-eqz v2, :cond_4

    .line 205
    const-string/jumbo v2, "\tProcessRecord:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 210
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/shrinker/ProcessRecord;->killed:Z

    if-eqz v2, :cond_5

    .line 211
    const-string/jumbo v2, "\tProcessRecord:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/shrinker/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    if-eqz v2, :cond_7

    .line 218
    const-string/jumbo v2, "\tProcessRecord:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 223
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    if-eq v2, v3, :cond_8

    .line 224
    const-string/jumbo v2, "\tProcessRecord:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/shrinker/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v7, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updatePss()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/shrinker/PackageRecordExt;->updatePss(Z)V

    .line 46
    return-void
.end method

.method public updatePss(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 39
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/shrinker/PackageRecordExt;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/shrinker/ProcessRecord;->updatePss(Z)V

    .line 42
    iget-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    iget-wide v4, v1, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public updateRss()V
    .locals 6

    .prologue
    .line 30
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/shrinker/PackageRecordExt;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/shrinker/ProcessRecord;->updateRss()V

    .line 33
    iget-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecordExt;->procs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    iget-wide v4, v1, Lcom/android/server/shrinker/ProcessRecord;->rss:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
