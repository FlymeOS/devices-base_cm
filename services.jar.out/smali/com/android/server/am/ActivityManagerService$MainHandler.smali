.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1507
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1508
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 56
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1512
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1893
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1514
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    .line 1515
    .local v49, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto :goto_0

    .line 1518
    .end local v49    # "resolver":Landroid/content/ContentResolver;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1519
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1520
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1523
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1

    .line 1524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    .line 1526
    .local v42, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v42

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x4e20

    move-object/from16 v0, v42

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1530
    .end local v42    # "nmsg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 1533
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1534
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v36, v4, -0x1

    .local v36, "i":I
    :goto_1
    if-ltz v36, :cond_3

    .line 1535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ProcessRecord;

    .line 1536
    .local v48, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 1538
    :try_start_2
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1534
    :cond_2
    :goto_2
    add-int/lit8 v36, v36, -0x1

    goto :goto_1

    .line 1539
    :catch_0
    move-exception v33

    .line 1540
    .local v33, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update time zone for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v48

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1544
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v36    # "i":I
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v36    # "i":I
    :cond_3
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1547
    .end local v36    # "i":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1548
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v36, v4, -0x1

    .restart local v36    # "i":I
    :goto_3
    if-ltz v36, :cond_5

    .line 1549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ProcessRecord;

    .line 1550
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_4

    .line 1552
    :try_start_6
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1548
    :cond_4
    :goto_4
    add-int/lit8 v36, v36, -0x1

    goto :goto_3

    .line 1553
    :catch_1
    move-exception v33

    .line 1554
    .restart local v33    # "ex":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to clear dns cache for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v48

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1558
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v36    # "i":I
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .restart local v36    # "i":I
    :cond_5
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    .line 1561
    .end local v36    # "i":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/net/ProxyInfo;

    .line 1562
    .local v47, "proxy":Landroid/net/ProxyInfo;
    const-string v35, ""

    .line 1563
    .local v35, "host":Ljava/lang/String;
    const-string v45, ""

    .line 1564
    .local v45, "port":Ljava/lang/String;
    const-string v34, ""

    .line 1565
    .local v34, "exclList":Ljava/lang/String;
    sget-object v43, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1566
    .local v43, "pacFileUrl":Landroid/net/Uri;
    if-eqz v47, :cond_6

    .line 1567
    invoke-virtual/range {v47 .. v47}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v35

    .line 1568
    invoke-virtual/range {v47 .. v47}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1569
    invoke-virtual/range {v47 .. v47}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v34

    .line 1570
    invoke-virtual/range {v47 .. v47}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v43

    .line 1572
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1573
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v36, v4, -0x1

    .restart local v36    # "i":I
    :goto_5
    if-ltz v36, :cond_8

    .line 1574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ProcessRecord;

    .line 1575
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_7

    .line 1577
    :try_start_a
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    move-object/from16 v2, v34

    move-object/from16 v3, v43

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1573
    :cond_7
    :goto_6
    add-int/lit8 v36, v36, -0x1

    goto :goto_5

    .line 1578
    :catch_2
    move-exception v33

    .line 1579
    .restart local v33    # "ex":Landroid/os/RemoteException;
    :try_start_b
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update http proxy for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v48

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1584
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v36    # "i":I
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .restart local v36    # "i":I
    :cond_8
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_0

    .line 1587
    .end local v34    # "exclList":Ljava/lang/String;
    .end local v35    # "host":Ljava/lang/String;
    .end local v36    # "i":I
    .end local v43    # "pacFileUrl":Landroid/net/Uri;
    .end local v45    # "port":Ljava/lang/String;
    .end local v47    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_9

    .line 1588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x14

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    .line 1590
    .restart local v42    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v42

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v42

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1594
    .end local v42    # "nmsg":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/am/ProcessRecord;

    .line 1595
    .local v29, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1596
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1597
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v4

    .line 1600
    .end local v29    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1601
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 1602
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v4

    .line 1605
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 1606
    :try_start_f
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1607
    .local v6, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    const/4 v7, 0x1

    .line 1608
    .local v7, "restart":Z
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Bundle;

    .line 1609
    .local v30, "bundle":Landroid/os/Bundle;
    const-string v4, "pkg"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1610
    .local v5, "pkg":Ljava/lang/String;
    const-string v4, "reason"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1611
    .local v13, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1613
    monitor-exit v14

    goto/16 :goto_0

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appid":I
    .end local v7    # "restart":Z
    .end local v13    # "reason":Ljava/lang/String;
    .end local v30    # "bundle":Landroid/os/Bundle;
    :catchall_6
    move-exception v4

    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v4

    .line 1607
    .restart local v6    # "appid":I
    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 1616
    .end local v6    # "appid":I
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1619
    :pswitch_b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v37

    .line 1620
    .local v37, "inm":Landroid/app/INotificationManager;
    if-eqz v37, :cond_0

    .line 1624
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/server/am/ActivityRecord;

    .line 1625
    .local v50, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v46, v0

    .line 1626
    .local v46, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v46, :cond_0

    .line 1631
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v31

    .line 1632
    .local v31, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040574

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    .line 1634
    .local v52, "text":Ljava/lang/String;
    new-instance v26, Landroid/app/Notification;

    invoke-direct/range {v26 .. v26}, Landroid/app/Notification;-><init>()V

    .line 1635
    .local v26, "notification":Landroid/app/Notification;
    const v4, 0x1080660

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1636
    const-wide/16 v8, 0x0

    move-object/from16 v0, v26

    iput-wide v8, v0, Landroid/app/Notification;->when:J

    .line 1637
    const/4 v4, 0x2

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1638
    move-object/from16 v0, v52

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1639
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1640
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1641
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x106005c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 1644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->getUiContext()Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040575

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v50

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    move-object/from16 v0, v26

    move-object/from16 v1, v52

    invoke-virtual {v0, v4, v1, v8, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    .line 1651
    const/4 v4, 0x1

    :try_start_11
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 1652
    .local v20, "outId":[I
    const-string v15, "android"

    const-string v16, "android"

    const/16 v17, 0x0

    const v18, 0x1040574

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    move-object/from16 v14, v37

    move-object/from16 v19, v26

    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_0

    .line 1655
    .end local v20    # "outId":[I
    :catch_3
    move-exception v32

    .line 1656
    .local v32, "e":Ljava/lang/RuntimeException;
    :try_start_12
    const-string v4, "ActivityManager"

    const-string v8, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_0

    .line 1660
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v31    # "context":Landroid/content/Context;
    .end local v32    # "e":Ljava/lang/RuntimeException;
    .end local v52    # "text":Ljava/lang/String;
    :catch_4
    move-exception v32

    .line 1661
    .local v32, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v8, "Unable to create context for heavy notification"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1665
    .end local v32    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v37    # "inm":Landroid/app/INotificationManager;
    .end local v46    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v50    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 1666
    .local v21, "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_0

    .line 1670
    :try_start_13
    const-string v4, "android"

    const/4 v8, 0x0

    const v9, 0x1040574

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v8, v9, v10}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_0

    .line 1672
    :catch_5
    move-exception v32

    .line 1673
    .local v32, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v8, "Error canceling notification for service"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1679
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v32    # "e":Ljava/lang/RuntimeException;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1680
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1681
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1682
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    .line 1683
    .restart local v42    # "nmsg":Landroid/os/Message;
    const-wide/32 v10, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1684
    monitor-exit v8

    goto/16 :goto_0

    .end local v42    # "nmsg":Landroid/os/Message;
    :catchall_7
    move-exception v4

    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v4

    .line 1687
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1691
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 1692
    .local v44, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v55, v0

    .line 1693
    .local v55, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v44

    move/from16 v1, v55

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1697
    .end local v44    # "pid":I
    .end local v55    # "uid":I
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/util/ArrayList;

    .line 1698
    .local v39, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v53, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 1703
    .local v53, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1707
    .end local v39    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v53    # "thread":Ljava/lang/Thread;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    .line 1711
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    .line 1715
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    .line 1719
    :pswitch_14
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_b

    const/16 v41, 0x1

    .line 1720
    .local v41, "nextState":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v41

    if-eq v4, v0, :cond_0

    .line 1725
    if-eqz v41, :cond_c

    .line 1726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .line 1719
    .end local v41    # "nextState":Z
    :cond_b
    const/16 v41, 0x0

    goto :goto_8

    .line 1728
    .restart local v41    # "nextState":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .line 1734
    .end local v41    # "nextState":Z
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1738
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1739
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v9, v12}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 1740
    monitor-exit v8

    goto/16 :goto_0

    :catchall_8
    move-exception v4

    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v4

    .line 1744
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1745
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    .line 1746
    monitor-exit v8

    goto/16 :goto_0

    :catchall_9
    move-exception v4

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v4

    .line 1750
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1751
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v36, v4, -0x1

    .restart local v36    # "i":I
    :goto_9
    if-ltz v36, :cond_f

    .line 1752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ProcessRecord;

    .line 1753
    .restart local v48    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-eqz v4, :cond_d

    .line 1755
    :try_start_18
    move-object/from16 v0, v48

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_e

    const/4 v4, 0x0

    :goto_a
    invoke-interface {v9, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 1751
    :cond_d
    :goto_b
    add-int/lit8 v36, v36, -0x1

    goto :goto_9

    .line 1755
    :cond_e
    const/4 v4, 0x1

    goto :goto_a

    .line 1756
    :catch_6
    move-exception v33

    .line 1757
    .restart local v33    # "ex":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update preferences for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v48

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1761
    .end local v33    # "ex":Landroid/os/RemoteException;
    .end local v36    # "i":I
    .end local v48    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_a
    move-exception v4

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v4

    .restart local v36    # "i":I
    :cond_f
    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto/16 :goto_0

    .line 1765
    .end local v36    # "i":I
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v8, 0x8007

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    .line 1771
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v8, 0x4008

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v8, 0x8008

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    .line 1781
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1782
    :try_start_1b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v48

    .line 1783
    .local v48, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v48, :cond_10

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_10

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    if-eqz v4, :cond_10

    .line 1785
    :try_start_1c
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v48

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v9}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 1789
    :cond_10
    :goto_c
    :try_start_1d
    monitor-exit v8

    goto/16 :goto_0

    .end local v48    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_b
    move-exception v4

    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    throw v4

    .line 1793
    :pswitch_1c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_11

    .line 1794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 1796
    :cond_11
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    .line 1797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    .line 1803
    :pswitch_1d
    :try_start_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/util/Locale;

    .line 1804
    .local v38, "l":Ljava/util/Locale;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v51

    .line 1805
    .local v51, "service":Landroid/os/IBinder;
    invoke-static/range {v51 .. v51}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v40

    .line 1806
    .local v40, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storing locale "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for decryption UI"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const-string v4, "SystemLocale"

    invoke-virtual/range {v38 .. v38}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v40

    invoke-interface {v0, v4, v8}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_7

    goto/16 :goto_0

    .line 1808
    .end local v38    # "l":Ljava/util/Locale;
    .end local v40    # "mountService":Landroid/os/storage/IMountService;
    .end local v51    # "service":Landroid/os/IBinder;
    :catch_7
    move-exception v32

    .line 1809
    .local v32, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v8, "Error storing locale for decryption UI"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1814
    .end local v32    # "e":Landroid/os/RemoteException;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1815
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    move-result v36

    .line 1816
    .restart local v36    # "i":I
    :goto_d
    if-lez v36, :cond_12

    .line 1817
    add-int/lit8 v36, v36, -0x1

    .line 1820
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    goto :goto_d

    .line 1821
    :catch_8
    move-exception v4

    goto :goto_d

    .line 1825
    :cond_12
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1826
    monitor-exit v8

    goto/16 :goto_0

    .end local v36    # "i":I
    :catchall_c
    move-exception v4

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    throw v4

    .line 1830
    :pswitch_1f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 1831
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_0

    .line 1835
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/server/am/ActivityRecord;

    .line 1836
    .restart local v50    # "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v46, v0

    .line 1837
    .restart local v46    # "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v46, :cond_0

    .line 1842
    :try_start_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v31

    .line 1843
    .restart local v31    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104002f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    .line 1845
    .restart local v52    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104002e

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1847
    .local v54, "title":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v4, "android.settings.APP_OPS_DETAILS_SETTINGS"

    const-string v8, "package"

    move-object/from16 v0, v50

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1850
    .local v16, "infoIntent":Landroid/content/Intent;
    new-instance v26, Landroid/app/Notification;

    invoke-direct/range {v26 .. v26}, Landroid/app/Notification;-><init>()V

    .line 1851
    .restart local v26    # "notification":Landroid/app/Notification;
    const v4, 0x108065a

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1852
    const-wide/16 v8, 0x0

    move-object/from16 v0, v26

    iput-wide v8, v0, Landroid/app/Notification;->when:J

    .line 1853
    const/4 v4, 0x2

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1854
    const/4 v4, -0x1

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 1855
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1856
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1857
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v50

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    move-object/from16 v2, v52

    invoke-virtual {v0, v4, v1, v2, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_22} :catch_a

    .line 1865
    const/4 v4, 0x1

    :try_start_23
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 1866
    .restart local v20    # "outId":[I
    const-string v22, "android"

    const-string v23, "android"

    const/16 v24, 0x0

    const v25, 0x104002e

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v28, v0

    move-object/from16 v27, v20

    invoke-interface/range {v21 .. v28}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 1869
    .end local v20    # "outId":[I
    :catch_9
    move-exception v32

    .line 1870
    .local v32, "e":Ljava/lang/RuntimeException;
    :try_start_24
    const-string v4, "ActivityManager"

    const-string v8, "Error showing notification for privacy guard"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_24} :catch_a

    goto/16 :goto_0

    .line 1874
    .end local v16    # "infoIntent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v31    # "context":Landroid/content/Context;
    .end local v32    # "e":Ljava/lang/RuntimeException;
    .end local v52    # "text":Ljava/lang/String;
    .end local v54    # "title":Ljava/lang/String;
    :catch_a
    move-exception v32

    .line 1875
    .local v32, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v8, "Unable to create context for privacy guard notification"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1879
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v32    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v50    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_20
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 1880
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_0

    .line 1884
    :try_start_25
    const-string v4, "android"

    const/4 v8, 0x0

    const v9, 0x104002e

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v8, v9, v10}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_c

    goto/16 :goto_0

    .line 1886
    :catch_b
    move-exception v32

    .line 1887
    .local v32, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v8, "Error canceling notification for service"

    move-object/from16 v0, v32

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1889
    .end local v32    # "e":Ljava/lang/RuntimeException;
    :catch_c
    move-exception v4

    goto/16 :goto_0

    .line 1872
    .restart local v16    # "infoIntent":Landroid/content/Intent;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v31    # "context":Landroid/content/Context;
    .restart local v46    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v50    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v52    # "text":Ljava/lang/String;
    .restart local v54    # "title":Ljava/lang/String;
    :catch_d
    move-exception v4

    goto/16 :goto_0

    .line 1786
    .end local v16    # "infoIntent":Landroid/content/Intent;
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v31    # "context":Landroid/content/Context;
    .end local v46    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v50    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v52    # "text":Ljava/lang/String;
    .end local v54    # "title":Ljava/lang/String;
    .restart local v48    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_e
    move-exception v4

    goto/16 :goto_c

    .line 1675
    .end local v48    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    :catch_f
    move-exception v4

    goto/16 :goto_0

    .line 1658
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v31    # "context":Landroid/content/Context;
    .restart local v37    # "inm":Landroid/app/INotificationManager;
    .restart local v46    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v50    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v52    # "text":Ljava/lang/String;
    :catch_10
    move-exception v4

    goto/16 :goto_0

    .line 1512
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method
