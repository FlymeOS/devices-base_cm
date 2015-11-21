.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 2413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2414
    const/4 v13, 0x0

    .line 2415
    .local v13, "uid":I
    const/4 v12, 0x0

    .line 2416
    .local v12, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_5

    .line 2418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget v13, v2, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    .line 2419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/AlarmManagerService$InFlight;

    move-object v12, v0

    .line 2423
    :cond_0
    if-eqz v12, :cond_6

    .line 2424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 2425
    .local v14, "nowELAPSED":J
    iget-object v8, v12, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2426
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2427
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v2, :cond_1

    .line 2428
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2429
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v4, v14, v4

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 2431
    :cond_1
    iget-object v9, v12, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2432
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2433
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v2, :cond_2

    .line 2434
    const/4 v2, 0x0

    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2435
    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    sub-long v4, v14, v4

    add-long/2addr v2, v4

    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 2440
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14    # "nowELAPSED":J
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->checkReleaseWakeLock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2450
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v2, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v2, :cond_9

    .line 2451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2454
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished all broadcasts with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remaining inflights"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2457
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_7

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Remaining #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2457
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2416
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2438
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No in-flight alarm for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2474
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2460
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2474
    :cond_8
    :goto_3
    monitor-exit v16

    .line 2475
    return-void

    .line 2464
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2466
    .local v11, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v11, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v11, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v5, v11, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    goto :goto_3

    .line 2470
    .end local v11    # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
