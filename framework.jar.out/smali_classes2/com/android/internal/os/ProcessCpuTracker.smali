.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_BLOCKIO:I = 0x6

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_BLOCKIO:I = 0x4

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2a

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 103
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 158
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 301
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 103
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 158
    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 171
    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeThreads"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 101
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 155
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 156
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 169
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 177
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 181
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 182
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 183
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 213
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 321
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 322
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 32
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 413
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v21

    .line 414
    .local v21, "pids":[I
    if-nez v21, :cond_1

    const/4 v10, 0x0

    .line 415
    .local v10, "NP":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 416
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 417
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_0

    .line 418
    aget v6, v21, v13

    .line 419
    .local v6, "pid":I
    if-gez v6, :cond_2

    .line 420
    move v10, v6

    .line 588
    .end local v6    # "pid":I
    :cond_0
    :goto_2
    if-ge v12, v11, :cond_f

    .line 590
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 591
    .local v24, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 592
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 593
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 594
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 595
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    .line 596
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 597
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 598
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 599
    add-int/lit8 v11, v11, -0x1

    .line 601
    goto :goto_2

    .line 414
    .end local v10    # "NP":I
    .end local v11    # "NS":I
    .end local v12    # "curStatsIndex":I
    .end local v13    # "i":I
    .end local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, v21

    array-length v10, v0

    goto :goto_0

    .line 423
    .restart local v6    # "pid":I
    .restart local v10    # "NP":I
    .restart local v11    # "NS":I
    .restart local v12    # "curStatsIndex":I
    .restart local v13    # "i":I
    :cond_2
    if-ge v12, v11, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object/from16 v24, v4

    .line 425
    .restart local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_3
    if-eqz v24, :cond_9

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v4, v6, :cond_9

    .line 427
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 428
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 429
    add-int/lit8 v12, v12, 0x1

    .line 434
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_3

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 437
    .local v28, "uptime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    move-object/from16 v22, v0

    .line 438
    .local v22, "procStats":[J
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_5

    .line 417
    .end local v22    # "procStats":[J
    .end local v28    # "uptime":J
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 423
    .end local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    const/16 v24, 0x0

    goto :goto_3

    .line 443
    .restart local v22    # "procStats":[J
    .restart local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v28    # "uptime":J
    :cond_5
    const/4 v4, 0x0

    aget-wide v18, v22, v4

    .line 444
    .local v18, "minfaults":J
    const/4 v4, 0x1

    aget-wide v16, v22, v4

    .line 445
    .local v16, "majfaults":J
    const/4 v4, 0x2

    aget-wide v30, v22, v4

    .line 446
    .local v30, "utime":J
    const/4 v4, 0x3

    aget-wide v26, v22, v4

    .line 447
    .local v26, "stime":J
    const/4 v4, 0x4

    aget-wide v14, v22, v4

    .line 449
    .local v14, "iowait":J
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v4, v30, v4

    if-nez v4, :cond_6

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v4, v26, v4

    if-nez v4, :cond_6

    .line 450
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 451
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 452
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 453
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 454
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    .line 455
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v4, :cond_3

    .line 456
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_4

    .line 461
    :cond_6
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v4, :cond_7

    .line 462
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 465
    :cond_7
    if-gez p2, :cond_8

    .line 466
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    .line 468
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 480
    :cond_8
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v4, v28, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 481
    move-wide/from16 v0, v28

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 482
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v4, v30, v4

    long-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 483
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 484
    move-wide/from16 v0, v30

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 485
    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 486
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v4, v18, v4

    long-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 487
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v4, v16, v4

    long-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 488
    move-wide/from16 v0, v18

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 489
    move-wide/from16 v0, v16

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 490
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_iowait:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    .line 491
    move-object/from16 v0, v24

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_iowait:J

    .line 492
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_4

    .line 498
    .end local v14    # "iowait":J
    .end local v16    # "majfaults":J
    .end local v18    # "minfaults":J
    .end local v22    # "procStats":[J
    .end local v26    # "stime":J
    .end local v28    # "uptime":J
    .end local v30    # "utime":J
    :cond_9
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-le v4, v6, :cond_e

    .line 500
    :cond_a
    new-instance v24, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .end local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 501
    .restart local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 502
    add-int/lit8 v12, v12, 0x1

    .line 503
    add-int/lit8 v11, v11, 0x1

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v23, v0

    .line 509
    .local v23, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    move-object/from16 v22, v0

    .line 510
    .restart local v22    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 511
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 513
    .local v20, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v4, v1, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 519
    const/4 v4, 0x5

    aget-wide v4, v22, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 521
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 522
    const/4 v4, 0x0

    aget-object v4, v23, v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 523
    const/4 v4, 0x1

    aget-wide v4, v22, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 524
    const/4 v4, 0x2

    aget-wide v4, v22, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 525
    const/4 v4, 0x3

    aget-wide v4, v22, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 526
    const/4 v4, 0x4

    aget-wide v4, v22, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 527
    const/4 v4, 0x6

    aget-wide v4, v22, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_iowait:J

    .line 541
    :goto_5
    if-gez p2, :cond_d

    .line 542
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    .line 544
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 557
    :cond_b
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 558
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 559
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 560
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 561
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    .line 562
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 563
    if-nez p3, :cond_3

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_3

    .line 564
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_4

    .line 534
    :cond_c
    const-string v4, "ProcessCpuTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unknown process pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v4, "<unknown>"

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 536
    const-wide/16 v4, 0x0

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 537
    const-wide/16 v4, 0x0

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 538
    const-wide/16 v4, 0x0

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_iowait:J

    goto/16 :goto_5

    .line 547
    :cond_d
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_b

    .line 548
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 549
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    goto/16 :goto_6

    .line 570
    .end local v20    # "path":Ljava/lang/String;
    .end local v22    # "procStats":[J
    .end local v23    # "procStatsString":[Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 571
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 572
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 573
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 574
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    .line 575
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 576
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 577
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 578
    add-int/lit8 v11, v11, -0x1

    .line 584
    add-int/lit8 v13, v13, -0x1

    .line 585
    goto/16 :goto_4

    .line 603
    .end local v6    # "pid":I
    .end local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_f
    return-object v21
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .param p1, "out"    # [J

    .prologue
    const/16 v13, 0x3c

    const/4 v12, 0x0

    .line 648
    move-object v6, p1

    .line 649
    .local v6, "tempTimes":[J
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    .line 650
    .local v5, "tempSpeeds":[J
    const/16 v0, 0x3c

    .line 651
    .local v0, "MAX_SPEEDS":I
    if-nez p1, :cond_0

    .line 652
    new-array v6, v13, [J

    .line 653
    new-array v5, v13, [J

    .line 655
    :cond_0
    const/4 v3, 0x0

    .line 656
    .local v3, "speed":I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 659
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .local v4, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 661
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 663
    .local v7, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 665
    .local v8, "val":J
    array-length v10, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v10, :cond_4

    .line 685
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "val":J
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 686
    new-array p1, v3, [J

    .line 687
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    .line 688
    iget-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 689
    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 691
    :cond_3
    return-object p1

    .line 668
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v8    # "val":J
    :cond_4
    :try_start_1
    aput-wide v8, v5, v3

    .line 669
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 670
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 671
    aput-wide v8, v6, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    add-int/lit8 v3, v3, 0x1

    .line 673
    if-ne v3, v13, :cond_1

    goto :goto_1

    .line 678
    .end local v8    # "val":J
    :catch_0
    move-exception v2

    .line 679
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-string v10, "ProcessCpuTracker"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .prologue
    .line 934
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 935
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 937
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 939
    move-object v2, v0

    .line 940
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 941
    .local v1, "i":I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 942
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 945
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 946
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 949
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 950
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 951
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 953
    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .prologue
    .line 859
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 860
    if-nez p5, :cond_0

    const/4 p5, 0x1

    .line 861
    :cond_0
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 862
    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    if-ltz p3, :cond_1

    .line 864
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 865
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 867
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 868
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 870
    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 872
    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    if-lez p8, :cond_2

    .line 874
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    move/from16 v0, p8

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 876
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    :cond_2
    if-lez p9, :cond_3

    .line 879
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    move/from16 v0, p9

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 881
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    :cond_3
    if-lez p10, :cond_4

    .line 884
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    move/from16 v0, p10

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 886
    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    :cond_4
    if-gtz p11, :cond_5

    if-lez p12, :cond_7

    .line 889
    :cond_5
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    if-lez p11, :cond_6

    .line 891
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 893
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    :cond_6
    if-lez p12, :cond_7

    .line 896
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 898
    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 902
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    const-wide/16 v8, 0xa

    .line 844
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 845
    .local v4, "thousands":J
    div-long v0, v4, v8

    .line 846
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 847
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 848
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 849
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 850
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 851
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 854
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 908
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 909
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 911
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 913
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 915
    if-lez v3, :cond_2

    .line 917
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 918
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_1

    .line 922
    :cond_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 927
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 928
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 930
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-object v5

    .line 917
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    .end local v0    # "i":I
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 928
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 930
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 924
    :catch_0
    move-exception v5

    .line 927
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 928
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 925
    :catch_1
    move-exception v5

    .line 927
    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 928
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 927
    :catchall_0
    move-exception v5

    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 928
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 927
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 925
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 924
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 727
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v6, :cond_4

    .line 728
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 729
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 730
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 731
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 732
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_2

    .line 733
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 735
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 736
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 737
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 738
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 739
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 740
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 743
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 730
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 748
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 750
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 762
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 10
    .param p1, "pid"    # I

    .prologue
    .line 611
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v5

    .line 612
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/stat"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 614
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v6, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    const/4 v4, 0x2

    aget-wide v6, v1, v4

    const/4 v4, 0x3

    aget-wide v8, v1, v4

    add-long v2, v6, v8

    .line 618
    .local v2, "time":J
    monitor-exit v5

    .line 620
    .end local v2    # "time":J
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit v5

    goto :goto_0

    .line 621
    .end local v0    # "statFile":Ljava/lang/String;
    .end local v1    # "statsData":[J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    if-nez v1, :cond_0

    .line 631
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuSpeedTimes([J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    .line 632
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v1, v0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuSpeedTimes([J)[J

    .line 638
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    aget-wide v2, v1, v0

    .line 640
    .local v2, "temp":J
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    aget-wide v4, v1, v0

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 641
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    aput-wide v2, v1, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    .end local v2    # "temp":J
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    return-object v1
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 719
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v0, v1, v2

    .line 720
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 721
    const/4 v1, 0x0

    .line 723
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 335
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .prologue
    .line 325
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .prologue
    .line 770
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 771
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 772
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 774
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 776
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 778
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 779
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 29
    .param p1, "now"    # J

    .prologue
    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 785
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 786
    .local v26, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v4, 0x400

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 788
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 790
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 791
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 793
    const-string v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v24, v4, v6

    .line 802
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v22, v4, v6

    .line 803
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-lez v2, :cond_2

    const-wide/16 v4, 0x64

    mul-long v4, v4, v24

    div-long v20, v4, v22

    .line 804
    .local v20, "percAwake":J
    :goto_1
    const-wide/16 v4, 0x64

    cmp-long v2, v20, v4

    if-eqz v2, :cond_0

    .line 805
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 807
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    :cond_0
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v27, v2, v4

    .line 817
    .local v27, "totalTime":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 818
    .local v16, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 820
    .local v19, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_3

    const-string v4, " +"

    :goto_3
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    int-to-long v10, v2

    add-long/2addr v8, v10

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 824
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v2, :cond_7

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 825
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 826
    .local v15, "M":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v15, :cond_7

    .line 827
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 828
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_5

    const-string v4, "   +"

    :goto_5
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    int-to-long v10, v2

    add-long/2addr v8, v10

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-object/from16 v0, v28

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_iowait:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 826
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 795
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v27    # "totalTime":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 796
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 798
    const-string v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 803
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_2
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 820
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v20    # "percAwake":J
    .restart local v27    # "totalTime":I
    :cond_3
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_4

    const-string v4, " -"

    goto/16 :goto_3

    :cond_4
    const-string v4, "  "

    goto/16 :goto_3

    .line 828
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_6

    const-string v4, "   -"

    goto :goto_5

    :cond_6
    const-string v4, "    "

    goto :goto_5

    .line 818
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 836
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 839
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 840
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 28

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 341
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    move-object/from16 v21, v0

    .line 345
    .local v21, "sysCpu":[J
    const-string v4, "/proc/stat"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    const/4 v4, 0x0

    aget-wide v4, v21, v4

    const/4 v6, 0x1

    aget-wide v6, v21, v6

    add-long v26, v4, v6

    .line 350
    .local v26, "usertime":J
    const/4 v4, 0x2

    aget-wide v24, v21, v4

    .line 352
    .local v24, "systemtime":J
    const/4 v4, 0x3

    aget-wide v10, v21, v4

    .line 354
    .local v10, "idletime":J
    const/4 v4, 0x4

    aget-wide v12, v21, v4

    .line 355
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    aget-wide v14, v21, v4

    .line 356
    .local v14, "irqtime":J
    const/4 v4, 0x6

    aget-wide v22, v21, v4

    .line 358
    .local v22, "softirqtime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 359
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 360
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v4, v12, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 361
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 362
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v4, v22, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 363
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 374
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 375
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 376
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 377
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 378
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 379
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .line 382
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v22    # "softirqtime":J
    .end local v24    # "systemtime":J
    .end local v26    # "usertime":J
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v20

    .line 384
    .local v20, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v5, "/proc"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    move-object/from16 v19, v0

    .line 390
    .local v19, "loadAverages":[F
    const-string v4, "/proc/loadavg"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    const/4 v4, 0x0

    aget v16, v19, v4

    .line 393
    .local v16, "load1":F
    const/4 v4, 0x1

    aget v18, v19, v4

    .line 394
    .local v18, "load5":F
    const/4 v4, 0x2

    aget v17, v19, v4

    .line 395
    .local v17, "load15":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v16, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v18, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v17, v4

    if-eqz v4, :cond_2

    .line 396
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 397
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 398
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 399
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 406
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 407
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 408
    return-void

    .line 386
    .end local v19    # "loadAverages":[F
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method
