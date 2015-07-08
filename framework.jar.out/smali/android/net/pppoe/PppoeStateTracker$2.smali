.class Landroid/net/pppoe/PppoeStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "PppoeStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/pppoe/PppoeStateTracker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeStateTracker;


# direct methods
.method constructor <init>(Landroid/net/pppoe/PppoeStateTracker;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 162
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 163
    iget-object v4, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    const-string v3, "linkProperties"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    # setter for: Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v3}, Landroid/net/pppoe/PppoeStateTracker;->access$102(Landroid/net/pppoe/PppoeStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 164
    const-string v3, "PppoeStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get link properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    # getter for: Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Landroid/net/pppoe/PppoeStateTracker;->access$100(Landroid/net/pppoe/PppoeStateTracker;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    :cond_2
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    # getter for: Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z
    invoke-static {v3}, Landroid/net/pppoe/PppoeStateTracker;->access$200(Landroid/net/pppoe/PppoeStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 170
    :cond_3
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnected()V

    .line 172
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->stopPppoe()Z

    .line 173
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    # invokes: Landroid/net/pppoe/PppoeStateTracker;->handleNetworkDisconnect()V
    invoke-static {v3}, Landroid/net/pppoe/PppoeStateTracker;->access$300(Landroid/net/pppoe/PppoeStateTracker;)V

    goto :goto_0

    .line 175
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, "state":I
    if-eq v2, v5, :cond_0

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    # getter for: Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    # getter for: Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 182
    :cond_5
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnected()V

    .line 184
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->stopPppoe()Z

    .line 185
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker$2;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    # invokes: Landroid/net/pppoe/PppoeStateTracker;->handleNetworkDisconnect()V
    invoke-static {v3}, Landroid/net/pppoe/PppoeStateTracker;->access$300(Landroid/net/pppoe/PppoeStateTracker;)V

    goto :goto_0
.end method
