.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
.super Landroid/os/Handler;
.source "CameraDeviceUserShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 267
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .line 268
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide v14, 0xffffffffL

    .line 274
    :try_start_0
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 299
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown callback message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received remote exception during camera callback "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 276
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 277
    .local v3, "errorCode":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 278
    .local v6, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v7}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$100(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v7

    invoke-interface {v7, v3, v6}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 306
    .end local v3    # "errorCode":I
    .end local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    return-void

    .line 282
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v7}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$100(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_0

    .line 285
    :pswitch_2
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    int-to-long v10, v7

    and-long v8, v10, v14

    .line 286
    .local v8, "timestamp":J
    const/16 v7, 0x20

    shl-long v10, v8, v7

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    int-to-long v12, v7

    and-long/2addr v12, v14

    or-long v8, v10, v12

    .line 287
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 288
    .restart local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v7}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$100(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v7

    invoke-interface {v7, v6, v8, v9}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    goto :goto_0

    .line 292
    .end local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v8    # "timestamp":J
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 293
    .local v5, "resultArray":[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v4, v5, v7

    check-cast v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 294
    .local v4, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v7, 0x1

    aget-object v6, v5, v7

    check-cast v6, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 295
    .restart local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v7}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$100(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
