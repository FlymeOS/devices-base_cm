.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "WifiScanningService"

    const-string v1, "DefaultState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 285
    const-string v2, "WifiScanningService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultState got"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 289
    .local v1, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 326
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 291
    :sswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfaces()I

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    .line 294
    .local v0, "capabilities":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$300(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$400(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    const-string v3, "could not get scan capabilities"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$500(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v0    # "capabilities":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    const-string v3, "could not start HAL"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$600(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v3, -0x1

    const-string v4, "not available"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 315
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    const-string v3, "ignored scan results available event"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$700(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    const-string v3, "ignored full scan result event"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$800(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x27000 -> :sswitch_1
        0x27002 -> :sswitch_1
        0x27003 -> :sswitch_1
        0x27006 -> :sswitch_1
        0x27007 -> :sswitch_1
        0x2700b -> :sswitch_1
        0x2700c -> :sswitch_1
        0x2700d -> :sswitch_1
        0x27100 -> :sswitch_2
        0x27101 -> :sswitch_3
        0x27106 -> :sswitch_0
    .end sparse-switch
.end method
