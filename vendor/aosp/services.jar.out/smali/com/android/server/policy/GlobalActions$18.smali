.class Lcom/android/server/policy/GlobalActions$18;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$18;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 764
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$18;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, v6, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v7

    .line 765
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$18;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, v6, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v6, p0, :cond_0

    monitor-exit v7

    .line 766
    return-void

    .line 768
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 769
    .local v3, "messenger":Landroid/os/Messenger;
    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 770
    .local v4, "msg":Landroid/os/Message;
    move-object v5, p0

    .line 771
    .local v5, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/GlobalActions$18$1;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$18;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6, v5}, Lcom/android/server/policy/GlobalActions$18$1;-><init>(Lcom/android/server/policy/GlobalActions$18;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 783
    .local v1, "h":Landroid/os/Handler;
    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 784
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    const-wide/16 v8, 0x3e8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    :goto_0
    :try_start_3
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v7

    .line 763
    return-void

    .line 796
    :catch_0
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 803
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v3    # "messenger":Landroid/os/Messenger;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 809
    return-void
.end method
