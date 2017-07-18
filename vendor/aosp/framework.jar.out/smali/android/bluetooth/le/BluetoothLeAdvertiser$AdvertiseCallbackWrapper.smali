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
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p2, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p5, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p6, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 243
    iput-boolean v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 249
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 250
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    .line 251
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    .line 252
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 253
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 254
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 248
    return-void
.end method


# virtual methods
.method public onClientRegistered(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 308
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClientRegistered() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " clientIf="

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

    .line 314
    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 313
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 315
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "failed to start advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 322
    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 307
    return-void

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit p0

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
    if-eqz p2, :cond_1

    .line 331
    if-nez p1, :cond_0

    .line 333
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 334
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-static {v1, v2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-wrap1(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 350
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 328
    return-void

    .line 337
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-static {v1, v2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-wrap0(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 342
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 343
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 344
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 345
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "remote exception when unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startRegisteration()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    monitor-exit p0

    return-void

    .line 262
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 263
    .local v2, "uuid":Ljava/util/UUID;
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v3, v4, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 264
    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v4, v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v2    # "uuid":Ljava/util/UUID;
    :goto_0
    :try_start_2
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-lez v3, :cond_1

    iget-boolean v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 257
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothLeAdvertiser"

    const-string/jumbo v4, "Failed to start registeration"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 270
    :cond_1
    :try_start_4
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-gtz v3, :cond_2

    .line 272
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 273
    const/4 v5, 0x4

    .line 272
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-wrap0(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 277
    :cond_2
    :try_start_5
    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 278
    const/4 v3, -0x1

    iput v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v3, "BluetoothLeAdvertiser"

    const-string/jumbo v4, "remote exception when unregistering"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
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

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    .line 286
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "Failed to stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
