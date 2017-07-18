.class final Lcom/android/server/notification/NotificationFirewallImpl$H;
.super Landroid/os/Handler;
.source "NotificationFirewallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationFirewallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationFirewallImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationFirewallImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 100
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 101
    .local v3, "isSystemNotification":Z
    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    .line 103
    .local v2, "isSystemApp":Z
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v5}, Lcom/android/server/notification/NotificationFirewallImpl;->-get1(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v5}, Lcom/android/server/notification/NotificationFirewallImpl;->-get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v6}, Lcom/android/server/notification/NotificationFirewallImpl;->-get1(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v6

    new-instance v7, Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;

    invoke-direct {v7, v4}, Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v6, v7, v3, v2}, Lmeizu/notification/INotificationFilterService;->interceptNotification(Landroid/service/notification/IStatusBarNotificationHolder;ZZ)Lmeizu/notification/FilterResult;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationFirewallImpl;->-set1(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/FilterResult;)Lmeizu/notification/FilterResult;

    .line 106
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationFirewallImpl;->-set0(Lcom/android/server/notification/NotificationFirewallImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    iget-object v5, v5, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v5}, Lcom/android/server/notification/NotificationFirewallImpl;->-get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 100
    .end local v2    # "isSystemApp":Z
    .end local v3    # "isSystemNotification":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isSystemNotification":Z
    goto :goto_1

    .line 101
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isSystemApp":Z
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v5}, Lcom/android/server/notification/NotificationFirewallImpl;->-get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v5}, Lcom/android/server/notification/NotificationFirewallImpl;->-get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 112
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    .line 113
    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v6}, Lcom/android/server/notification/NotificationFirewallImpl;->-get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    throw v5

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
