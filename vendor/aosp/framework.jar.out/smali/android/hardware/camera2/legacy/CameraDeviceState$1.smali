.class Landroid/hardware/camera2/legacy/CameraDeviceState$1;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field final synthetic val$captureError:I

.field final synthetic val$request:Landroid/hardware/camera2/legacy/RequestHolder;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;ILandroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;
    .param p2, "val$captureError"    # I
    .param p3, "val$request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 179
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    iput p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$captureError:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$request:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$captureError:I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$request:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-interface {v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onError(ILandroid/hardware/camera2/legacy/RequestHolder;)V

    .line 181
    return-void
.end method
