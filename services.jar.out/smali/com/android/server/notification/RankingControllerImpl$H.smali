.class Lcom/android/server/notification/RankingControllerImpl$H;
.super Landroid/os/Handler;
.source "RankingControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/RankingControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/RankingControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;Lcom/android/server/notification/RankingControllerImpl$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/RankingControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl$H;-><init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 75
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-get1(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-get3(Lcom/android/server/notification/RankingControllerImpl;)Lcom/flyme/server/notfication/DatabaseHelper;

    move-result-object v7

    .line 77
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 76
    invoke-virtual {v7, v9, v10, v11}, Lcom/flyme/server/notfication/DatabaseHelper;->queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "RankingDaily$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/notification/RankingDaily;

    .line 79
    .local v0, "RankingDaily":Lmeizu/notification/RankingDaily;
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-get1(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 80
    iget-object v10, v0, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    .line 79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    .end local v0    # "RankingDaily":Lmeizu/notification/RankingDaily;
    .end local v1    # "RankingDaily$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8

    throw v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :catch_0
    move-exception v6

    .line 126
    .local v6, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/server/notification/RankingControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "handleMessage"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "RankingDaily$iterator":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :cond_1
    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 85
    .end local v1    # "RankingDaily$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-wrap1(Lcom/android/server/notification/RankingControllerImpl;)V

    .line 86
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-get3(Lcom/android/server/notification/RankingControllerImpl;)Lcom/flyme/server/notfication/DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flyme/server/notfication/DatabaseHelper;->computingResult()V

    .line 87
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-get3(Lcom/android/server/notification/RankingControllerImpl;)Lcom/flyme/server/notfication/DatabaseHelper;

    move-result-object v7

    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 87
    invoke-virtual {v7, v8, v9, v10}, Lcom/flyme/server/notfication/DatabaseHelper;->queryResult(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, "resultsList":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingResult;>;"
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-get2(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 90
    :try_start_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "results$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/notification/RankingResult;

    .line 91
    .local v3, "results":Lmeizu/notification/RankingResult;
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v7}, Lcom/android/server/notification/RankingControllerImpl;->-get2(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v7

    iget-object v9, v3, Lmeizu/notification/RankingResult;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 89
    .end local v3    # "results":Lmeizu/notification/RankingResult;
    .end local v4    # "results$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v8

    throw v7

    .restart local v4    # "results$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v8

    goto/16 :goto_0

    .line 97
    .end local v4    # "results$iterator":Ljava/util/Iterator;
    .end local v5    # "resultsList":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingResult;>;"
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmeizu/notification/RankingDaily;

    .line 98
    .restart local v0    # "RankingDaily":Lmeizu/notification/RankingDaily;
    if-eqz v0, :cond_0

    .line 99
    iget-object v7, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    const/4 v8, 0x1

    invoke-static {v7, v0, v8}, Lcom/android/server/notification/RankingControllerImpl;->-wrap2(Lcom/android/server/notification/RankingControllerImpl;Lmeizu/notification/RankingDaily;Z)V

    goto/16 :goto_0

    .line 104
    .end local v0    # "RankingDaily":Lmeizu/notification/RankingDaily;
    :pswitch_4
    iget-object v8, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 106
    iget-object v9, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 107
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 108
    const/4 v10, 0x1

    .line 106
    invoke-static {v9, v7, v10}, Lcom/android/server/notification/RankingControllerImpl;->-wrap0(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v7

    .line 105
    const/4 v9, 0x1

    .line 104
    invoke-static {v8, v9, v7}, Lcom/android/server/notification/RankingControllerImpl;->-wrap3(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V

    goto/16 :goto_0

    .line 111
    :pswitch_5
    iget-object v8, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 113
    iget-object v9, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 114
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 115
    const/4 v10, 0x2

    .line 113
    invoke-static {v9, v7, v10}, Lcom/android/server/notification/RankingControllerImpl;->-wrap0(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v7

    .line 112
    const/4 v9, 0x2

    .line 111
    invoke-static {v8, v9, v7}, Lcom/android/server/notification/RankingControllerImpl;->-wrap3(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V

    goto/16 :goto_0

    .line 118
    :pswitch_6
    iget-object v8, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 120
    iget-object v9, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 121
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 122
    const/4 v10, 0x3

    .line 120
    invoke-static {v9, v7, v10}, Lcom/android/server/notification/RankingControllerImpl;->-wrap0(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v7

    .line 119
    const/4 v9, 0x3

    .line 118
    invoke-static {v8, v9, v7}, Lcom/android/server/notification/RankingControllerImpl;->-wrap3(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
