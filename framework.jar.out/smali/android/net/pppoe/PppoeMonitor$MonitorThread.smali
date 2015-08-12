.class Landroid/net/pppoe/PppoeMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeMonitor;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/PppoeMonitor;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    .line 50
    const-string v0, "PppoeMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 54
    const-string v2, "PppoeMonitor"

    const-string v3, "enter PppoeMonitorThread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    .line 63
    .local v1, "timecount":I
    :goto_0
    invoke-static {}, Landroid/net/pppoe/PppoeNative;->waitForPpoeEvent()I

    move-result v0

    .line 64
    .local v0, "event":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 65
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeConnected()V

    .line 67
    const-string v2, "PppoeMonitor"

    const-string v3, "notifyPppoeConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_1
    # invokes: Landroid/net/pppoe/PppoeMonitor;->nap(I)V
    invoke-static {v4}, Landroid/net/pppoe/PppoeMonitor;->access$200(I)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 69
    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnecting()V

    .line 70
    const-string v2, "PppoeMonitor"

    const-string v3, "notifyPppoeDisconnecting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStarted:Z
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$100(Landroid/net/pppoe/PppoeMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    const-string v2, "PppoeMonitor"

    const-string v3, "notifyPppoeDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-le v1, v4, :cond_0

    .line 76
    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnected()V

    .line 86
    :goto_2
    return-void

    .line 80
    :cond_3
    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnected()V

    goto :goto_2
.end method
