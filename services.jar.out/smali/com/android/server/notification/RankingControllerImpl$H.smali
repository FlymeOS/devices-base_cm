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
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 75
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v4}, Lcom/android/server/notification/RankingControllerImpl;->-get0(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v4}, Lcom/android/server/notification/RankingControllerImpl;->-get1(Lcom/android/server/notification/RankingControllerImpl;)Lcom/flyme/server/notfication/DatabaseHelper;

    move-result-object v4

    .line 77
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 76
    invoke-virtual {v4, v6, v7, v8}, Lcom/flyme/server/notfication/DatabaseHelper;->queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "RankingDaily$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/notification/RankingDaily;

    .line 79
    .local v0, "RankingDaily":Lmeizu/notification/RankingDaily;
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v4}, Lcom/android/server/notification/RankingControllerImpl;->-get0(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v7, v0, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/android/server/notification/RankingControllerImpl;->-wrap0(Lcom/android/server/notification/RankingControllerImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    .end local v0    # "RankingDaily":Lmeizu/notification/RankingDaily;
    .end local v1    # "RankingDaily$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5

    throw v4

    .line 115
    :catch_0
    move-exception v3

    .local v3, "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "RankingDaily$iterator":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 87
    .end local v1    # "RankingDaily$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmeizu/notification/RankingDaily;

    .line 88
    .restart local v0    # "RankingDaily":Lmeizu/notification/RankingDaily;
    if-eqz v0, :cond_0

    .line 89
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/server/notification/RankingControllerImpl;->-wrap3(Lcom/android/server/notification/RankingControllerImpl;Lmeizu/notification/RankingDaily;Z)V

    goto :goto_0

    .line 94
    .end local v0    # "RankingDaily":Lmeizu/notification/RankingDaily;
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 96
    iget-object v6, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 97
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 98
    const/4 v7, 0x1

    .line 96
    invoke-static {v6, v4, v7}, Lcom/android/server/notification/RankingControllerImpl;->-wrap1(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v4

    .line 95
    const/4 v6, 0x1

    .line 94
    invoke-static {v5, v6, v4}, Lcom/android/server/notification/RankingControllerImpl;->-wrap4(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 103
    iget-object v6, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 104
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 105
    const/4 v7, 0x2

    .line 103
    invoke-static {v6, v4, v7}, Lcom/android/server/notification/RankingControllerImpl;->-wrap1(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v4

    .line 102
    const/4 v6, 0x2

    .line 101
    invoke-static {v5, v6, v4}, Lcom/android/server/notification/RankingControllerImpl;->-wrap4(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V

    goto :goto_0

    .line 108
    :pswitch_5
    iget-object v5, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 110
    iget-object v6, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 111
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 112
    const/4 v7, 0x3

    .line 110
    invoke-static {v6, v4, v7}, Lcom/android/server/notification/RankingControllerImpl;->-wrap1(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v4

    .line 109
    const/4 v6, 0x3

    .line 108
    invoke-static {v5, v6, v4}, Lcom/android/server/notification/RankingControllerImpl;->-wrap4(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
