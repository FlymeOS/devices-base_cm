.class Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertiseCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private final mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

.field private final mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private mClientIf:I

.field private mIsAdvertising:Z

.field private final mScanResponse:Landroid/bluetooth/le/AdvertiseData;

.field private final mSettings:Landroid/bluetooth/le/AdvertiseSettings;

.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V
    .locals 1
    .param p2, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p5, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p6, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 246
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 241
    iput-boolean v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 247
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 248
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    .line 249
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    .line 250
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 251
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 252
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 253
    return-void
.end method


# virtual methods
.method public onClientRegistered(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 308
    const-string v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClientRegistered() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-enter p0

    .line 310
    if-nez p1, :cond_0

    .line 311
    :try_start_0
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    monitor-exit p0

    .line 324
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "failed to start advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 323
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 329
    monitor-enter p0

    .line 330
    if-eqz p2, :cond_2

    .line 331
    if-nez p1, :cond_1

    .line 333
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 334
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    invoke-static {v1, v2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 335
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit p0

    .line 356
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v1, v2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 345
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 346
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 348
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "remote exception when unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startRegisteration()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-ne v2, v3, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_0
    return-void

    .line 260
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 261
    .local v1, "uuid":Ljava/util/UUID;
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 262
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .end local v1    # "uuid":Ljava/util/UUID;
    :goto_1
    :try_start_2
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_1
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 263
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to start registeration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-gtz v2, :cond_3

    .line 272
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    const/4 v4, 0x4

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 277
    :cond_3
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 278
    const/4 v2, -0x1

    iput v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "BluetoothLeAdvertiser"

    const-string/jumbo v3, "remote exception when unregistering"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    move-object v0, v2

    goto :goto_3
.end method

.method public stopAdvertising()V
    .locals 4

    .prologue
    .line 287
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopMultiAdvertising(I)V

    .line 290
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_0
    monitor-exit p0

    .line 301
    return-void

    .line 291
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Failed to stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 291
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method
