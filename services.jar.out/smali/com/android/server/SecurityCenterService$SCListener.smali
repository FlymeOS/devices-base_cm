.class final Lcom/android/server/SecurityCenterService$SCListener;
.super Ljava/lang/Object;
.source "SecurityCenterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecurityCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SCListener"
.end annotation


# instance fields
.field final mListener:Lmeizu/os/ISecurityCenterCallback;

.field final synthetic this$0:Lcom/android/server/SecurityCenterService;


# direct methods
.method constructor <init>(Lcom/android/server/SecurityCenterService;Lmeizu/os/ISecurityCenterCallback;)V
    .locals 0
    .param p2, "listener"    # Lmeizu/os/ISecurityCenterCallback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/server/SecurityCenterService$SCListener;->this$0:Lcom/android/server/SecurityCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/server/SecurityCenterService$SCListener;->mListener:Lmeizu/os/ISecurityCenterCallback;

    .line 48
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "SecurityCenterService"

    const-string v1, "An SCListener has died!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/server/SecurityCenterService$SCListener;->this$0:Lcom/android/server/SecurityCenterService;

    # getter for: Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/SecurityCenterService;->access$000(Lcom/android/server/SecurityCenterService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SecurityCenterService$SCListener;->this$0:Lcom/android/server/SecurityCenterService;

    # getter for: Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/SecurityCenterService;->access$000(Lcom/android/server/SecurityCenterService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/android/server/SecurityCenterService$SCListener;->mListener:Lmeizu/os/ISecurityCenterCallback;

    invoke-interface {v0}, Lmeizu/os/ISecurityCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
