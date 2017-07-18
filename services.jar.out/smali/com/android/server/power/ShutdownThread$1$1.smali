.class Lcom/android/server/power/ShutdownThread$1$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$1;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/power/ShutdownThread$1;

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$1$1;->this$1:Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1$1;->this$1:Lcom/android/server/power/ShutdownThread$1;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1$1;->this$1:Lcom/android/server/power/ShutdownThread$1;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->this$0:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread;->-set0(Lcom/android/server/power/ShutdownThread;Z)Z

    .line 992
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1$1;->this$1:Lcom/android/server/power/ShutdownThread$1;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 989
    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
