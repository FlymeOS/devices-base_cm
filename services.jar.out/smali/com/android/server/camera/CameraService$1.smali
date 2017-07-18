.class Lcom/android/server/camera/CameraService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 102
    iput-object p1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-static {v1}, Lcom/android/server/camera/CameraService;->-get2(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-static {v1}, Lcom/android/server/camera/CameraService;->-get0(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    monitor-exit v2

    return-void

    .line 108
    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :goto_0
    return-void

    .line 117
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    iget-object v3, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-static {v3}, Lcom/android/server/camera/CameraService;->-get1(Lcom/android/server/camera/CameraService;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/camera/CameraService;->-wrap2(Lcom/android/server/camera/CameraService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
