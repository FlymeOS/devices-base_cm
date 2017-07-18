.class Landroid/hardware/camera2/legacy/CameraDeviceState$3;
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


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    .line 226
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$3;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onBusy()V

    .line 228
    return-void
.end method
