.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onError(ILandroid/hardware/camera2/legacy/RequestHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

.field final synthetic val$errorCode:I

.field final synthetic val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic val$holder:Landroid/hardware/camera2/legacy/RequestHolder;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;
    .param p2, "val$holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p3, "val$errorCode"    # I
    .param p4, "val$extras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .prologue
    .line 131
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$holder:Landroid/hardware/camera2/legacy/RequestHolder;

    iput p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$errorCode:I

    iput-object p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$errorCode:I

    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-interface {v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 142
    const-string/jumbo v2, "Received remote exception during onCameraError callback: "

    .line 141
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
