.class Lcom/android/server/TorchService$7;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TorchService;


# direct methods
.method constructor <init>(Lcom/android/server/TorchService;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method

.method private setTorchAvailable(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    .line 572
    iget-object v2, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    monitor-enter v2

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mTorchAvailable:Z
    invoke-static {v1}, Lcom/android/server/TorchService;->access$1700(Lcom/android/server/TorchService;)Z

    move-result v0

    .line 574
    .local v0, "oldAvailable":Z
    iget-object v1, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    # setter for: Lcom/android/server/TorchService;->mTorchAvailable:Z
    invoke-static {v1, p1}, Lcom/android/server/TorchService;->access$1702(Lcom/android/server/TorchService;Z)Z

    .line 575
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    if-eq v0, p1, :cond_1

    .line 577
    # getter for: Lcom/android/server/TorchService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/TorchService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAvailabilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->dispatchAvailabilityChanged(Z)V
    invoke-static {v1, p1}, Lcom/android/server/TorchService;->access$1800(Lcom/android/server/TorchService;Z)V

    .line 580
    :cond_1
    return-void

    .line 575
    .end local v0    # "oldAvailable":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 555
    # getter for: Lcom/android/server/TorchService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/TorchService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAvailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mTorchCameraId:I
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1600(Lcom/android/server/TorchService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/TorchService$7;->setTorchAvailable(Z)V

    .line 559
    :cond_1
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 563
    # getter for: Lcom/android/server/TorchService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/TorchService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraUnavailable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mOpeningCamera:Z
    invoke-static {v2}, Lcom/android/server/TorchService;->access$900(Lcom/android/server/TorchService;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v2}, Lcom/android/server/TorchService;->access$1000(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 565
    .local v0, "openedOurselves":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/TorchService$7;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mTorchCameraId:I
    invoke-static {v2}, Lcom/android/server/TorchService;->access$1600(Lcom/android/server/TorchService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    invoke-direct {p0, v1}, Lcom/android/server/TorchService$7;->setTorchAvailable(Z)V

    .line 568
    :cond_2
    return-void

    .end local v0    # "openedOurselves":Z
    :cond_3
    move v0, v1

    .line 564
    goto :goto_0
.end method
