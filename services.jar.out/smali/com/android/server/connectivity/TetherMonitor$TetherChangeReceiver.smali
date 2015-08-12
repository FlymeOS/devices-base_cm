.class Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/TetherMonitor;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/TetherMonitor;Lcom/android/server/connectivity/TetherMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/TetherMonitor$1;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;-><init>(Lcom/android/server/connectivity/TetherMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 447
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/TetherMonitor;->access$100(Lcom/android/server/connectivity/TetherMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/connectivity/TetherMonitor;->getTetherEnableState(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v3, v5

    .line 449
    .local v3, "tetherEnabled":Z
    :goto_0
    const-string v7, "TetherMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive action is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    if-nez v0, :cond_2

    .line 532
    :cond_0
    :goto_1
    return-void

    .end local v3    # "tetherEnabled":Z
    :cond_1
    move v3, v6

    .line 448
    goto :goto_0

    .line 454
    .restart local v3    # "tetherEnabled":Z
    :cond_2
    iget-object v7, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I
    invoke-static {v7}, Lcom/android/server/connectivity/TetherMonitor;->access$200(Lcom/android/server/connectivity/TetherMonitor;)I

    move-result v2

    .line 455
    .local v2, "config":I
    const-string v7, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 456
    iget-object v6, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # setter for: Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z
    invoke-static {v6, v5}, Lcom/android/server/connectivity/TetherMonitor;->access$302(Lcom/android/server/connectivity/TetherMonitor;Z)Z

    goto :goto_1

    .line 457
    :cond_3
    const-string v7, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 458
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # setter for: Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z
    invoke-static {v5, v6}, Lcom/android/server/connectivity/TetherMonitor;->access$302(Lcom/android/server/connectivity/TetherMonitor;Z)Z

    goto :goto_1

    .line 459
    :cond_4
    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 460
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    const-string v7, "connected"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z
    invoke-static {v5, v6}, Lcom/android/server/connectivity/TetherMonitor;->access$402(Lcom/android/server/connectivity/TetherMonitor;Z)Z

    .line 463
    if-eqz v3, :cond_0

    and-int/lit8 v5, v2, 0x4

    if-ne v5, v11, :cond_0

    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z
    invoke-static {v5}, Lcom/android/server/connectivity/TetherMonitor;->access$400(Lcom/android/server/connectivity/TetherMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # invokes: Lcom/android/server/connectivity/TetherMonitor;->startTether(I)V
    invoke-static {v5, v11}, Lcom/android/server/connectivity/TetherMonitor;->access$500(Lcom/android/server/connectivity/TetherMonitor;I)V

    .line 466
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    invoke-virtual {v6, v10}, Lcom/android/server/connectivity/TetherMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/TetherMonitor;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 468
    :cond_5
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 469
    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothEnableForTether:Z
    invoke-static {}, Lcom/android/server/connectivity/TetherMonitor;->access$600()Z

    move-result v7

    if-nez v7, :cond_6

    .line 470
    iget-object v7, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/TetherMonitor;->access$100(Lcom/android/server/connectivity/TetherMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tether_enable_bluetooth"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    .line 472
    iget-object v7, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/TetherMonitor;->access$100(Lcom/android/server/connectivity/TetherMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tether_enable_bluetooth"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    const-string v7, "TetherMonitor"

    const-string v8, "set secur provider to 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_6
    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothEnableForTether:Z
    invoke-static {}, Lcom/android/server/connectivity/TetherMonitor;->access$600()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 478
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 502
    :cond_7
    :goto_2
    const/16 v5, 0xc

    const-string v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    if-eqz v3, :cond_0

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v10, :cond_0

    .line 508
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # invokes: Lcom/android/server/connectivity/TetherMonitor;->startTether(I)V
    invoke-static {v5, v10}, Lcom/android/server/connectivity/TetherMonitor;->access$500(Lcom/android/server/connectivity/TetherMonitor;I)V

    goto/16 :goto_1

    .line 481
    :sswitch_0
    const-string v7, "TetherMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_STATE_CHANGED is bt enabled mBluetoothPan is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v9}, Lcom/android/server/connectivity/TetherMonitor;->access$700(Lcom/android/server/connectivity/TetherMonitor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v7, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v7}, Lcom/android/server/connectivity/TetherMonitor;->access$700(Lcom/android/server/connectivity/TetherMonitor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 484
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_7

    .line 485
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 486
    # setter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothEnableForTether:Z
    invoke-static {v6}, Lcom/android/server/connectivity/TetherMonitor;->access$602(Z)Z

    goto/16 :goto_1

    .line 493
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    # setter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothEnableForTether:Z
    invoke-static {v6}, Lcom/android/server/connectivity/TetherMonitor;->access$602(Z)Z

    goto :goto_2

    .line 510
    :cond_8
    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 511
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/connectivity/TetherMonitor;->handleWifiApStateChanged(I)V
    invoke-static {v5, v6}, Lcom/android/server/connectivity/TetherMonitor;->access$800(Lcom/android/server/connectivity/TetherMonitor;I)V

    goto/16 :goto_1

    .line 513
    :cond_9
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 516
    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 518
    .local v4, "wifiApState":I
    if-ne v5, v4, :cond_0

    if-eqz v3, :cond_0

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v5, :cond_0

    .line 521
    iget-object v6, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # invokes: Lcom/android/server/connectivity/TetherMonitor;->startTether(I)V
    invoke-static {v6, v5}, Lcom/android/server/connectivity/TetherMonitor;->access$500(Lcom/android/server/connectivity/TetherMonitor;I)V

    goto/16 :goto_1

    .line 523
    .end local v4    # "wifiApState":I
    :cond_a
    const-string v5, "com.meizu.action.wifi_ap_device_state_change"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 524
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    invoke-virtual {v6, v10}, Lcom/android/server/connectivity/TetherMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/TetherMonitor;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 525
    :cond_b
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 526
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    invoke-virtual {v6, v10}, Lcom/android/server/connectivity/TetherMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/TetherMonitor;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 527
    :cond_c
    const-string v5, "com.meizu.action.DISABLE_TETHER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 528
    const-string v5, "TetherMonitor"

    const-string v7, "This broadcast notifies that tether is in idle state MORE than 5 minutes"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/connectivity/TetherMonitor;->access$100(Lcom/android/server/connectivity/TetherMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/server/connectivity/TetherMonitor;->putTetherEnableState(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 478
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
