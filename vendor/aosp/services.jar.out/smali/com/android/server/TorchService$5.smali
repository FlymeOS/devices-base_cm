.class Lcom/android/server/TorchService$5;
.super Landroid/hardware/camera2/CameraDevice$StateListener;
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
    .line 503
    iput-object p1, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1000(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->teardownTorch()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1200(Lcom/android/server/TorchService;)V

    .line 521
    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 525
    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera error: camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1000(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1000(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->handleError()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1300(Lcom/android/server/TorchService;)V

    .line 529
    :cond_1
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mOpeningCamera:Z
    invoke-static {v0}, Lcom/android/server/TorchService;->access$900(Lcom/android/server/TorchService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # setter for: Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, p1}, Lcom/android/server/TorchService;->access$1002(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 508
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/TorchService;->mOpeningCamera:Z
    invoke-static {v0, v1}, Lcom/android/server/TorchService;->access$902(Lcom/android/server/TorchService;Z)Z

    .line 509
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->postUpdateFlashlight()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1100(Lcom/android/server/TorchService;)V

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 512
    iget-object v0, p0, Lcom/android/server/TorchService$5;->this$0:Lcom/android/server/TorchService;

    # invokes: Lcom/android/server/TorchService;->teardownTorch()V
    invoke-static {v0}, Lcom/android/server/TorchService;->access$1200(Lcom/android/server/TorchService;)V

    goto :goto_0
.end method
