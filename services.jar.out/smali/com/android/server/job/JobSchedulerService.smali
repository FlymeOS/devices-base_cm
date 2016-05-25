.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_JOB_CONTEXTS_COUNT:I = 0x3

.field static final MIN_CHARGING_COUNT:I = 0x1

.field static final MIN_CONNECTIVITY_COUNT:I = 0x2

.field static final MIN_IDLE_COUNT:I = 0x1

.field static final MIN_READY_JOBS_COUNT:I = 0x2

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field final mJobs:Lcom/android/server/job/JobStore;

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field mReadyToRock:Z

.field final mStartedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 271
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/TimeController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/IdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/BatteryController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 277
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 278
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobSchedulerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method private cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 250
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 255
    monitor-exit v1

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelJobsForUser(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 202
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 206
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 207
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 209
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method private getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 406
    .local v10, "elapsedNowMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    .line 408
    .local v7, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v12

    .line 409
    .local v12, "initialBackoffMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 412
    .local v6, "backoffAttempts":I
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 421
    long-to-float v0, v12

    add-int/lit8 v1, v6, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v8, v0

    .line 425
    .local v8, "delayMillis":J
    :goto_0
    const-wide/32 v0, 0x112a880

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 427
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    add-long v2, v10, v8

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    return-object v0

    .line 414
    .end local v8    # "delayMillis":J
    :pswitch_0
    int-to-long v0, v6

    mul-long v8, v12, v0

    .line 415
    .restart local v8    # "delayMillis":J
    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 444
    .local v8, "elapsedNow":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 445
    .local v12, "runEarly":J
    add-long v2, v8, v12

    .line 446
    .local v2, "newEarliestRunTimeElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v10

    .line 447
    .local v10, "period":J
    add-long v4, v2, v10

    .line 453
    .local v4, "newLatestRuntimeElapsed":J
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    return-object v0
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 387
    .local v2, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 388
    .local v1, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    const/4 v3, 0x1

    .line 392
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :goto_1
    return v3

    .line 385
    .restart local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 331
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 332
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 333
    .local v3, "update":Z
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 334
    .local v2, "rocking":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    if-eqz v2, :cond_1

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 337
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 338
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 341
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "rocking":Z
    .end local v3    # "update":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 344
    .restart local v2    # "rocking":Z
    .restart local v3    # "update":Z
    :cond_1
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 370
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 371
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob()V

    .line 373
    const/4 v3, 0x1

    .line 376
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :goto_1
    return v3

    .line 368
    .restart local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 353
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 355
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 356
    .local v2, "removed":Z
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 357
    .local v3, "rocking":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 361
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "removed":Z
    .end local v3    # "rocking":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 364
    .restart local v2    # "removed":Z
    .restart local v3    # "rocking":Z
    :cond_0
    return v2
.end method


# virtual methods
.method public cancelJob(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 239
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 243
    :cond_0
    return-void

    .line 239
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cancelJobsForUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 219
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v4

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 223
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 224
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    .end local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 226
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 835
    .local v4, "now":J
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v9

    .line 836
    :try_start_0
    const-string v8, "Started users: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 838
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "u"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 841
    const-string v8, "Registered jobs:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 843
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 844
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 845
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 846
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v8, "  "

    invoke-virtual {v1, p1, v8}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 849
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    const-string v8, "  None."

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 852
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 853
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v8, p1}, Lcom/android/server/job/controllers/StateController;->dumpControllerState(Ljava/io/PrintWriter;)V

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 855
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 856
    const-string v8, "Pending:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    const/4 v0, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 858
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 857
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 860
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 861
    const-string v8, "Active jobs:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x0

    :goto_4
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 863
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 864
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 862
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 867
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v6

    .line 868
    .local v6, "timeout":J
    const-string v8, "Running for: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 870
    const-string v8, "s timeout="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 872
    const-string v8, " fromnow="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    sub-long v10, v6, v4

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    .line 874
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    const-string v10, "  "

    invoke-virtual {v8, p1, v10}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 879
    .end local v0    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v6    # "timeout":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 877
    .restart local v0    # "i":I
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 878
    const-string v8, "mReadyToRock="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 879
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 881
    return-void
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v3, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 190
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 191
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 192
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 193
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    monitor-exit v5

    .line 197
    return-object v3

    .line 196
    .end local v0    # "i":I
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onBootPhase(I)V
    .locals 14
    .param p1, "phase"    # I

    .prologue
    .line 288
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_1

    .line 290
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 295
    .local v7, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 321
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "userFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v1

    .line 300
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 301
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 304
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/4 v0, 0x3

    if-ge v11, v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v2, Lcom/android/server/job/JobServiceContext;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v13

    .line 311
    .local v13, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 312
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 313
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    const/4 v10, 0x0

    .local v10, "controller":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v12}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 313
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 311
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 318
    .end local v10    # "controller":I
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 319
    monitor-exit v1

    goto :goto_0

    .end local v11    # "i":I
    .end local v13    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onControllerStateChanged()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method public onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    :goto_0
    return-void

    .line 477
    :cond_0
    if-eqz p2, :cond_2

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 479
    .local v0, "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 484
    .end local v0    # "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 482
    .local v1, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_1
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 502
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "jobscheduler"

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 284
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;I)I
    .locals 3
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    .prologue
    const/4 v2, 0x1

    .line 179
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v0, p1, p2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;I)V

    .line 180
    .local v0, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJob(II)V

    .line 181
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return v2
.end method
