.class Lcom/android/server/connectivity/TetherMonitor$2;
.super Ljava/lang/Object;
.source "TetherMonitor.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/TetherMonitor;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    const/4 v2, 0x1

    .line 545
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherMonitor;->access$700(Lcom/android/server/connectivity/TetherMonitor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 546
    const-string v0, "TetherMonitor"

    const-string v1, "bluetooth pan connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # setter for: Lcom/android/server/connectivity/TetherMonitor;->getBluetoothPanProxyDone:Z
    invoke-static {v0, v2}, Lcom/android/server/connectivity/TetherMonitor;->access$902(Lcom/android/server/connectivity/TetherMonitor;Z)Z

    .line 548
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTethering:Z
    invoke-static {v0}, Lcom/android/server/connectivity/TetherMonitor;->access$1000(Lcom/android/server/connectivity/TetherMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherMonitor;->access$100(Lcom/android/server/connectivity/TetherMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/TetherMonitor;->getTetherEnableState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->access$1100(Lcom/android/server/connectivity/TetherMonitor;I)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTethering:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->access$1002(Lcom/android/server/connectivity/TetherMonitor;Z)Z

    .line 554
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 557
    const-string v0, "TetherMonitor"

    const-string v1, "bluetooth pan not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    # getter for: Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherMonitor;->access$700(Lcom/android/server/connectivity/TetherMonitor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$2;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/connectivity/TetherMonitor;->getBluetoothPanProxyDone:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->access$902(Lcom/android/server/connectivity/TetherMonitor;Z)Z

    .line 560
    return-void
.end method
