.class Lcom/android/internal/policy/impl/GlobalActions$9$1;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$9;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$9;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$9$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    :cond_0
    monitor-exit v1

    .line 675
    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
