.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4838
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x4

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4841
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v8, p1, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 4843
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 5072
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error! unhandled message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5075
    :cond_0
    :goto_0
    :sswitch_0
    return v6

    .line 4845
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 4846
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    if-ne v0, v5, :cond_2

    .line 4847
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    .line 4848
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v7, 0x11001

    invoke-virtual {v5, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 4850
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiP2pService connection failure, error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4853
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4858
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 4859
    .restart local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    if-ne v0, v5, :cond_0

    .line 4860
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4868
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    .line 4878
    :sswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, -0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 4881
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4884
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    check-cast v5, Ljava/util/List;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4887
    :sswitch_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    check-cast v5, Ljava/util/List;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4890
    :sswitch_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_4

    move v7, v6

    :cond_4
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 4893
    :sswitch_9
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_5

    .line 4894
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v5, v10, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4896
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v5, v10, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4900
    :sswitch_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    .line 4901
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4902
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_country_code"

    invoke-static {v5, v8, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4909
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 4910
    .local v4, "sequenceNum":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x20050

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    invoke-static {v5, v8, v4, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;IIILjava/lang/Object;)V

    .line 4913
    .end local v4    # "sequenceNum":I
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    goto/16 :goto_0

    .line 4916
    .end local v1    # "countryCode":Ljava/lang/String;
    :sswitch_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v7, v8, v9, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 4919
    :sswitch_c
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 4922
    :sswitch_d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScan()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 4925
    :sswitch_e
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_7

    move v5, v6

    :goto_2
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V
    invoke-static {v8, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2700(Lcom/android/server/wifi/WifiStateMachine;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v5, v7

    goto :goto_2

    .line 4930
    :sswitch_f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2900()I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2802(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4989
    :sswitch_10
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2900()I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2802(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4992
    :sswitch_11
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 4995
    :sswitch_12
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_8

    .line 4996
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4997
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v5, v11, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4999
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v5, v11, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 5003
    :sswitch_13
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 5004
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 5007
    :sswitch_14
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25002

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5011
    :sswitch_15
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25005

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5015
    :sswitch_16
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3200()I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5016
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25008

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5020
    :sswitch_17
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2500c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5024
    :sswitch_18
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2500f

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5028
    :sswitch_19
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25012

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5032
    :sswitch_1a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25016

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5036
    :sswitch_1b
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5037
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v2

    .line 5038
    .local v2, "featureSet":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5040
    .end local v2    # "featureSet":I
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v8, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5044
    :sswitch_1c
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    check-cast v5, Landroid/net/wifi/WifiEapSimInfo;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5048
    :sswitch_1d
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5051
    :sswitch_1e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkInfo;

    .line 5052
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 5055
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :sswitch_1f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_a

    move v7, v6

    :cond_a
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5056
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2300d

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v5, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 5062
    :sswitch_20
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x2008c

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/LinkProperties;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(ILandroid/net/LinkProperties;)V
    invoke-static {v7, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 5066
    :sswitch_21
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2900()I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2802(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 5069
    :sswitch_22
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, p1, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4843
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_10
        0x2000c -> :sswitch_10
        0x2000d -> :sswitch_10
        0x2000e -> :sswitch_10
        0x20011 -> :sswitch_10
        0x20012 -> :sswitch_10
        0x20013 -> :sswitch_10
        0x20015 -> :sswitch_10
        0x20016 -> :sswitch_10
        0x20017 -> :sswitch_10
        0x20018 -> :sswitch_10
        0x20019 -> :sswitch_10
        0x2001a -> :sswitch_10
        0x2001b -> :sswitch_10
        0x2001c -> :sswitch_10
        0x2001d -> :sswitch_10
        0x2001e -> :sswitch_10
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_10
        0x20038 -> :sswitch_10
        0x20039 -> :sswitch_10
        0x2003a -> :sswitch_4
        0x2003b -> :sswitch_6
        0x2003c -> :sswitch_5
        0x2003d -> :sswitch_1b
        0x2003e -> :sswitch_7
        0x2003f -> :sswitch_1d
        0x20047 -> :sswitch_f
        0x20048 -> :sswitch_10
        0x20049 -> :sswitch_10
        0x2004a -> :sswitch_10
        0x2004b -> :sswitch_10
        0x2004c -> :sswitch_22
        0x2004d -> :sswitch_9
        0x20050 -> :sswitch_10
        0x20052 -> :sswitch_8
        0x20053 -> :sswitch_10
        0x20056 -> :sswitch_12
        0x20058 -> :sswitch_10
        0x20059 -> :sswitch_10
        0x2005a -> :sswitch_10
        0x2005d -> :sswitch_10
        0x2005e -> :sswitch_10
        0x2005f -> :sswitch_e
        0x20060 -> :sswitch_10
        0x20062 -> :sswitch_10
        0x20085 -> :sswitch_10
        0x20086 -> :sswitch_a
        0x20087 -> :sswitch_b
        0x20088 -> :sswitch_d
        0x20089 -> :sswitch_c
        0x2008a -> :sswitch_21
        0x2008b -> :sswitch_21
        0x2008c -> :sswitch_20
        0x2008d -> :sswitch_10
        0x2008e -> :sswitch_10
        0x2008f -> :sswitch_10
        0x20090 -> :sswitch_10
        0x20091 -> :sswitch_10
        0x20092 -> :sswitch_10
        0x20093 -> :sswitch_10
        0x20095 -> :sswitch_4
        0x20096 -> :sswitch_1c
        0x21015 -> :sswitch_10
        0x21016 -> :sswitch_10
        0x2300b -> :sswitch_1e
        0x2300c -> :sswitch_1f
        0x23011 -> :sswitch_0
        0x24001 -> :sswitch_10
        0x24002 -> :sswitch_10
        0x24003 -> :sswitch_10
        0x24004 -> :sswitch_10
        0x24005 -> :sswitch_10
        0x24006 -> :sswitch_10
        0x24007 -> :sswitch_10
        0x2400a -> :sswitch_10
        0x2400c -> :sswitch_13
        0x2400f -> :sswitch_10
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_10
        0x25001 -> :sswitch_14
        0x25004 -> :sswitch_15
        0x25007 -> :sswitch_16
        0x2500a -> :sswitch_17
        0x2500e -> :sswitch_18
        0x25011 -> :sswitch_19
        0x25014 -> :sswitch_1a
        0x30004 -> :sswitch_10
        0x30005 -> :sswitch_10
        0x30006 -> :sswitch_11
    .end sparse-switch
.end method
