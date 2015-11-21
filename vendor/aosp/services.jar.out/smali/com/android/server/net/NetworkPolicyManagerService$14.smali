.class Lcom/android/server/net/NetworkPolicyManagerService$14;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2070
    iget v12, p1, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 2154
    :pswitch_0
    const/4 v12, 0x0

    :goto_0
    return v12

    .line 2072
    :pswitch_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 2073
    .local v10, "uid":I
    iget v11, p1, Landroid/os/Message;->arg2:I

    .line 2074
    .local v11, "uidRules":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2075
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 2076
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 2077
    .local v3, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v3, :cond_0

    .line 2079
    :try_start_0
    invoke-interface {v3, v10, v11}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2084
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2085
    const/4 v12, 0x1

    goto :goto_0

    .line 2088
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v10    # "uid":I
    .end local v11    # "uidRules":I
    :pswitch_2
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object v6, v12

    check-cast v6, [Ljava/lang/String;

    .line 2089
    .local v6, "meteredIfaces":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2090
    .restart local v2    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_3

    .line 2091
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 2092
    .restart local v3    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v3, :cond_2

    .line 2094
    :try_start_1
    invoke-interface {v3, v6}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2090
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2099
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2100
    const/4 v12, 0x1

    goto :goto_0

    .line 2103
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v6    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2105
    .local v1, "iface":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2106
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v13, v12, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2107
    :try_start_2
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-eqz v12, :cond_4

    .line 2111
    :try_start_3
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v12

    invoke-interface {v12}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2116
    :goto_5
    :try_start_4
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2117
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2119
    :cond_4
    monitor-exit v13

    .line 2120
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2119
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 2123
    .end local v1    # "iface":Ljava/lang/String;
    :pswitch_4
    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_6

    const/4 v7, 0x1

    .line 2124
    .local v7, "restrictBackground":Z
    :goto_6
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2125
    .restart local v2    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v2, :cond_7

    .line 2126
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 2127
    .restart local v3    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v3, :cond_5

    .line 2129
    :try_start_5
    invoke-interface {v3, v7}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2125
    :cond_5
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2123
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v7    # "restrictBackground":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 2134
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    .restart local v7    # "restrictBackground":Z
    :cond_7
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2135
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2138
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v7    # "restrictBackground":Z
    :pswitch_5
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2142
    .local v4, "lowestRule":J
    const-wide/16 v12, 0x3e8

    :try_start_6
    div-long v8, v4, v12

    .line 2143
    .local v8, "persistThreshold":J
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v12

    invoke-interface {v12, v8, v9}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2147
    .end local v8    # "persistThreshold":J
    :goto_9
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2150
    .end local v4    # "lowestRule":J
    :pswitch_6
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static {v12}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2151
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2080
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v10    # "uid":I
    .restart local v11    # "uidRules":I
    :catch_0
    move-exception v12

    goto/16 :goto_2

    .line 2095
    .end local v10    # "uid":I
    .end local v11    # "uidRules":I
    .restart local v6    # "meteredIfaces":[Ljava/lang/String;
    :catch_1
    move-exception v12

    goto/16 :goto_4

    .line 2130
    .end local v6    # "meteredIfaces":[Ljava/lang/String;
    .restart local v7    # "restrictBackground":Z
    :catch_2
    move-exception v12

    goto :goto_8

    .line 2144
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v3    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v7    # "restrictBackground":Z
    .restart local v4    # "lowestRule":J
    :catch_3
    move-exception v12

    goto :goto_9

    .line 2112
    .end local v4    # "lowestRule":J
    .restart local v1    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v12

    goto :goto_5

    .line 2070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
