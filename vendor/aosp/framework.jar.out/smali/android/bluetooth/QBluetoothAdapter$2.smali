.class Landroid/bluetooth/QBluetoothAdapter$2;
.super Landroid/bluetooth/IQBluetoothManagerCallback$Stub;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/QBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/QBluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/QBluetoothAdapter;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IQBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQBluetoothServiceDown()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # getter for: Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;
    invoke-static {v0}, Landroid/bluetooth/QBluetoothAdapter;->access$400(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetoothManagerCallback;

    move-result-object v1

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    const/4 v2, 0x0

    # setter for: Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;
    invoke-static {v0, v2}, Landroid/bluetooth/QBluetoothAdapter;->access$202(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;

    .line 394
    const-string v0, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQBluetoothServiceDown: Adapter OFF: mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # getter for: Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$100(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # getter for: Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$200(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onQBluetoothServiceUp(Landroid/bluetooth/IQBluetooth;)V
    .locals 4
    .param p1, "qcbluetoothService"    # Landroid/bluetooth/IQBluetooth;

    .prologue
    .line 383
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # getter for: Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;
    invoke-static {v0}, Landroid/bluetooth/QBluetoothAdapter;->access$400(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetoothManagerCallback;

    move-result-object v1

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # setter for: Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;
    invoke-static {v0, p1}, Landroid/bluetooth/QBluetoothAdapter;->access$202(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;

    .line 386
    const-string v0, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQBluetoothServiceUp: Adapter ON: mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # getter for: Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$100(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # getter for: Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$200(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ManagerService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$2;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    # getter for: Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$300(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
