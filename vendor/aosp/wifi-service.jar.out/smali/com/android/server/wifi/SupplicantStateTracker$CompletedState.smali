.class Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-set2(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-set0(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 374
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->-get4(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->-get6(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 376
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-set3(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 369
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 381
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 401
    return v5

    .line 384
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 385
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 386
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-get2(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap2(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 391
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 394
    .restart local v0    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap3(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    goto :goto_0

    .line 397
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-static {v2, v3, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap2(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 398
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-get5(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap4(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method
