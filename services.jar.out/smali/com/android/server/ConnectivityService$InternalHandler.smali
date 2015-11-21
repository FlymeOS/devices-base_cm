.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2485
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2486
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 2490
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 2589
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2493
    :pswitch_1
    const/4 v0, 0x0

    .line 2494
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v10

    .line 2495
    :try_start_0
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)I

    move-result v11

    if-ne v9, v11, :cond_1

    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2497
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2498
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 2502
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x18

    if-ne v9, v10, :cond_2

    .line 2504
    const-string v9, "Failed to find a new network - expiring NetTransition Wakelock"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    goto :goto_0

    .line 2500
    :cond_1
    :try_start_1
    monitor-exit v10

    goto :goto_0

    .line 2502
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 2506
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NetTransition Wakelock ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v0, :cond_3

    const-string v0, "unknown"

    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cleared because we found a replacement network"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    goto :goto_0

    .line 2512
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    .line 2516
    :pswitch_3
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v4, :cond_4

    .line 2517
    .local v4, "met":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v10, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v9, v10, v4}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;IZ)V

    goto :goto_0

    .end local v4    # "met":Z
    :cond_4
    move v4, v9

    .line 2516
    goto :goto_1

    .line 2521
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 2522
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v9, v3}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto :goto_0

    .line 2526
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_5
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 2527
    .local v7, "networkType":I
    iget v10, p1, Landroid/os/Message;->arg2:I

    if-ne v10, v4, :cond_5

    move v1, v4

    .line 2528
    .local v1, "enabled":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v9, v7, v1}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .end local v1    # "enabled":Z
    :cond_5
    move v1, v9

    .line 2527
    goto :goto_2

    .line 2532
    .end local v7    # "networkType":I
    :pswitch_6
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 2533
    .local v8, "tag":I
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v8, :cond_6

    .line 2534
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v5, v10, v9

    check-cast v5, Landroid/net/MobileDataStateTracker;

    .line 2536
    .local v5, "mobileDst":Landroid/net/MobileDataStateTracker;
    if-eqz v5, :cond_0

    .line 2537
    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v9}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    goto/16 :goto_0

    .line 2540
    .end local v5    # "mobileDst":Landroid/net/MobileDataStateTracker;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " != tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2546
    .end local v8    # "tag":I
    :pswitch_7
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 2550
    :pswitch_8
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/ProxyInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    invoke-static {v10, v9}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_0

    .line 2554
    :pswitch_9
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    invoke-static {v10, v9}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_0

    .line 2558
    :pswitch_a
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Messenger;

    # invokes: Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    invoke-static {v10, v9}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 2562
    :pswitch_b
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/connectivity/NetworkAgentInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v10, v9}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    .line 2567
    :pswitch_c
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2571
    :pswitch_d
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2575
    :pswitch_e
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/app/PendingIntent;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    invoke-static {v10, v9, v11}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0

    .line 2579
    :pswitch_f
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkRequest;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    invoke-static {v10, v9, v11}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_0

    .line 2583
    :pswitch_10
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2584
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v9, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v4, v9, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_3

    .line 2490
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_c
        :pswitch_f
        :pswitch_a
        :pswitch_1
        :pswitch_10
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
