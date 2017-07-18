.class Landroid/hardware/camera2/legacy/CameraDeviceState$8;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;
    .param p2, "val$timestamp"    # J

    .prologue
    .line 306
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$8;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    iput-wide p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$8;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$8;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$8;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get2(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$8;->val$timestamp:J

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onCaptureStarted(Landroid/hardware/camera2/legacy/RequestHolder;J)V

    .line 308
    return-void
.end method
