.class Landroid/bluetooth/BluetoothHeadsetClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHeadsetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    .prologue
    .line 376
    const-string v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothStateChange: up="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-nez p1, :cond_0

    .line 379
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 381
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v4, 0x0

    # setter for: Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->access$102(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 382
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$200(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Landroid/bluetooth/BluetoothHeadsetClient;->access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 400
    :goto_1
    return-void

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "re":Ljava/lang/Exception;
    const-string v2, "BluetoothHeadsetClient"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 386
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 388
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 390
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$100(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v2

    if-nez v2, :cond_1

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    :try_start_3
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 395
    :catch_1
    move-exception v1

    .line 396
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "BluetoothHeadsetClient"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2
.end method
