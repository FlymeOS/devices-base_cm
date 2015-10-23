.class public Lcom/android/internal/os/BinderInternal;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderInternal$TimerGc;,
        Lcom/android/internal/os/BinderInternal$GcWatcher;
    }
.end annotation


# static fields
.field private static final GC_DELAY_MAX_DURATION:I = 0xbb8

.field private static final POSTPONED_GC_MAX:I = 0x5

.field static delayGcMonitorObject:Ljava/lang/Object;

.field static executor:Ljava/util/concurrent/ExecutorService;

.field static futureTaskInstance:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field static lastGcDelayRequestTime:J

.field static postponedGcCount:I

.field static sGcWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/os/BinderInternal$GcWatcher;",
            ">;"
        }
    .end annotation
.end field

.field static sGcWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sLastGcTime:J

.field static sTmpWatchers:[Ljava/lang/Runnable;

.field static timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/internal/os/BinderInternal$GcWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatcher:Ljava/lang/ref/WeakReference;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    .line 43
    new-array v0, v2, [Ljava/lang/Runnable;

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BinderInternal;->lastGcDelayRequestTime:J

    .line 140
    sput-object v3, Lcom/android/internal/os/BinderInternal;->timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;

    .line 141
    sput-object v3, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    .line 142
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BinderInternal;->executor:Ljava/util/concurrent/ExecutorService;

    .line 143
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->delayGcMonitorObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static addGcWatcher(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "watcher"    # Ljava/lang/Runnable;

    .prologue
    .line 71
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final native disableBackgroundScheduling(Z)V
.end method

.method static forceBinderGc()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    .line 196
    sget-object v3, Lcom/android/internal/os/BinderInternal;->delayGcMonitorObject:Ljava/lang/Object;

    monitor-enter v3

    .line 197
    :try_start_0
    sget-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    if-eqz v2, :cond_1

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/internal/os/BinderInternal;->lastGcDelayRequestTime:J

    sub-long v0, v4, v6

    .line 199
    .local v0, "lastGcDelayRequestDuration":J
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 200
    sget v2, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    if-eqz v2, :cond_0

    .line 201
    monitor-exit v3

    .line 212
    :goto_0
    return-void

    .line 202
    :cond_0
    sget-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 203
    new-instance v2, Lcom/android/internal/os/BinderInternal$TimerGc;

    sub-long v4, v8, v0

    invoke-direct {v2, v4, v5}, Lcom/android/internal/os/BinderInternal$TimerGc;-><init>(J)V

    sput-object v2, Lcom/android/internal/os/BinderInternal;->timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;

    .line 204
    new-instance v2, Ljava/util/concurrent/FutureTask;

    sget-object v4, Lcom/android/internal/os/BinderInternal;->timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;

    invoke-direct {v2, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    .line 205
    const/4 v2, 0x1

    sput v2, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    .line 206
    sget-object v2, Lcom/android/internal/os/BinderInternal;->executor:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 207
    monitor-exit v3

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    const-string v2, "Binder"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static forceGc(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 113
    const/16 v0, 0xab5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 114
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 115
    return-void
.end method

.method public static final native getContextObject()Landroid/os/IBinder;
.end method

.method public static getLastGcTime()J
    .locals 2

    .prologue
    .line 93
    sget-wide v0, Lcom/android/internal/os/BinderInternal;->sLastGcTime:J

    return-wide v0
.end method

.method static final native handleGc()V
.end method

.method public static final native joinThreadPool()V
.end method

.method public static modifyDelayedGcParams()V
    .locals 6

    .prologue
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 163
    .local v0, "nowTime":J
    sget-object v3, Lcom/android/internal/os/BinderInternal;->delayGcMonitorObject:Ljava/lang/Object;

    monitor-enter v3

    .line 164
    :try_start_0
    sget-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    if-eqz v2, :cond_1

    sget v2, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    if-eqz v2, :cond_1

    .line 165
    sget v2, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    const/4 v4, 0x5

    if-gt v2, v4, :cond_0

    .line 166
    sget-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 167
    sget-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sput-wide v0, Lcom/android/internal/os/BinderInternal;->lastGcDelayRequestTime:J

    .line 169
    sget v2, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    .line 170
    new-instance v2, Lcom/android/internal/os/BinderInternal$TimerGc;

    const-wide/16 v4, 0xbb8

    invoke-direct {v2, v4, v5}, Lcom/android/internal/os/BinderInternal$TimerGc;-><init>(J)V

    sput-object v2, Lcom/android/internal/os/BinderInternal;->timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;

    .line 171
    new-instance v2, Ljava/util/concurrent/FutureTask;

    sget-object v4, Lcom/android/internal/os/BinderInternal;->timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;

    invoke-direct {v2, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    .line 172
    sget-object v2, Lcom/android/internal/os/BinderInternal;->executor:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    :cond_0
    :goto_0
    monitor-exit v3

    .line 181
    return-void

    .line 176
    :cond_1
    sput-wide v0, Lcom/android/internal/os/BinderInternal;->lastGcDelayRequestTime:J

    .line 177
    new-instance v2, Lcom/android/internal/os/BinderInternal$TimerGc;

    const-wide/16 v4, 0xbb8

    invoke-direct {v2, v4, v5}, Lcom/android/internal/os/BinderInternal$TimerGc;-><init>(J)V

    sput-object v2, Lcom/android/internal/os/BinderInternal;->timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;

    .line 178
    new-instance v2, Ljava/util/concurrent/FutureTask;

    sget-object v4, Lcom/android/internal/os/BinderInternal;->timerGcInstance:Lcom/android/internal/os/BinderInternal$TimerGc;

    invoke-direct {v2, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v2, Lcom/android/internal/os/BinderInternal;->futureTaskInstance:Ljava/util/concurrent/FutureTask;

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
