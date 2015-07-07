.class Landroid/hardware/TorchManager$TorchHandler;
.super Landroid/os/Handler;
.source "TorchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/TorchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TorchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/TorchManager;


# direct methods
.method public constructor <init>(Landroid/hardware/TorchManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 59
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 62
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v3, "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/TorchManager$TorchCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v2, "listener":Landroid/hardware/TorchManager$TorchCallback;
    :try_start_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v4, v5

    :goto_2
    invoke-interface {v2, v4}, Landroid/hardware/TorchManager$TorchCallback;->onTorchStateChanged(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v4, Landroid/hardware/TorchManager;->TAG:Ljava/lang/String;

    const-string v8, "Unable to update torch state"

    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    .end local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    .restart local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :cond_0
    move v4, v6

    .line 65
    goto :goto_2

    .line 71
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    :cond_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 72
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/TorchManager$TorchCallback;

    .line 73
    .restart local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 76
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    :cond_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 80
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :pswitch_1
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 81
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .restart local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/TorchManager$TorchCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    .restart local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    :try_start_5
    invoke-interface {v2}, Landroid/hardware/TorchManager$TorchCallback;->onTorchError()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_6
    sget-object v4, Landroid/hardware/TorchManager;->TAG:Ljava/lang/String;

    const-string v6, "Unable to update torch error"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    .end local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 90
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :cond_3
    :try_start_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 91
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/TorchManager$TorchCallback;

    .line 92
    .restart local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 95
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    :cond_4
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :pswitch_2
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 100
    :try_start_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/TorchManager$TorchCallback;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 103
    .restart local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    :try_start_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_7
    invoke-interface {v2, v4}, Landroid/hardware/TorchManager$TorchCallback;->onTorchAvailabilityChanged(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    .line 104
    :catch_2
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_a
    sget-object v4, Landroid/hardware/TorchManager;->TAG:Ljava/lang/String;

    const-string v8, "Unable to update torch availability change"

    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    .end local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :catchall_2
    move-exception v4

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    .restart local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/TorchManager$TorchCallback;>;"
    :cond_5
    move v4, v6

    .line 103
    goto :goto_7

    .line 109
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    :cond_6
    :try_start_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 110
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/TorchManager$TorchCallback;

    .line 111
    .restart local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    iget-object v4, p0, Landroid/hardware/TorchManager$TorchHandler;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;
    invoke-static {v4}, Landroid/hardware/TorchManager;->access$000(Landroid/hardware/TorchManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 114
    .end local v2    # "listener":Landroid/hardware/TorchManager$TorchCallback;
    :cond_7
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
