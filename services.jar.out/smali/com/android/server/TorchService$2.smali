.class Lcom/android/server/TorchService$2;
.super Ljava/lang/Object;
.source "TorchService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TorchService;->onCameraOpened(Landroid/os/IBinder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TorchService;

.field final synthetic val$cameraId:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/TorchService;ILandroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    iput p2, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    iput-object p3, p0, Lcom/android/server/TorchService$2;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$300(Lcom/android/server/TorchService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 221
    :try_start_0
    # getter for: Lcom/android/server/TorchService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/TorchService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/TorchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TorchService;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " client died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    iget-object v2, p0, Lcom/android/server/TorchService$2;->val$token:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    # invokes: Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V
    invoke-static {v0, v2, v3}, Lcom/android/server/TorchService;->access$600(Lcom/android/server/TorchService;Landroid/os/IBinder;I)V

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
