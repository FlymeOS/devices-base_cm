.class Lcom/android/server/wifi/WifiStateMachine$TetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8561
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 8565
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$26904(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 8567
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 8570
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8572
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 8601
    const/4 v1, 0x0

    .line 8603
    :cond_0
    :goto_0
    return v1

    .line 8574
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 8575
    .local v0, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27000(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8576
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 8580
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$26900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 8581
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Failed to get tether update, shutdown soft access point"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8582
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$26200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8584
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20018

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 8598
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$27500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 8572
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
    .end sparse-switch
.end method
