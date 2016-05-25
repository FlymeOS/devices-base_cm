.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActive:Z

.field private mBusy:Z

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 452
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;-><init>()V

    .line 453
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 454
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 475
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$700(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 478
    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onActive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$800(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 480
    return-void
.end method

.method public onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 527
    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onBusy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 463
    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 465
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 470
    const-string v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Got device error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v4, 0x0

    .line 485
    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CameraCaptureSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onIdle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-enter v2

    .line 488
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$900(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v0

    .line 489
    .local v0, "isAborting":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 503
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$1000(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 505
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-enter v2

    .line 506
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    const/4 v3, 0x0

    # setter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z
    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$902(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z

    .line 507
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 510
    :cond_1
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    if-eqz v1, :cond_2

    .line 511
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$700(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 514
    :cond_2
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 515
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 517
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$800(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 518
    return-void

    .line 489
    .end local v0    # "isAborting":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 507
    .restart local v0    # "isAborting":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 458
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Camera must already be open before creating a session"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 532
    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onUnconfigured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$1100(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$1200(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$1300(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mUnconfigureDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$1400(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 552
    :cond_1
    monitor-exit v1

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
