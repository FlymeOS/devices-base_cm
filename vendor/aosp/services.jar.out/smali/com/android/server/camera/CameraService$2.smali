.class Lcom/android/server/camera/CameraService$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraService;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/camera/CameraService;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I

    .prologue
    .line 135
    invoke-static {p2}, Lcom/android/server/camera/CameraService;->-wrap0(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "state":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    invoke-static {v1, p1, p2}, Lcom/android/server/camera/CameraService;->-wrap3(Lcom/android/server/camera/CameraService;Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public pingForUserUpdate()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraService;->-wrap1(Lcom/android/server/camera/CameraService;I)V

    .line 129
    return-void
.end method
