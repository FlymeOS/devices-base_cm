.class Landroid/media/MediaSync$2;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;

.field final synthetic val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

.field final synthetic val$sync:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaSync;
    .param p2, "val$sync"    # Landroid/media/MediaSync;
    .param p3, "val$audioBuffer"    # Landroid/media/MediaSync$AudioBuffer;

    .prologue
    .line 583
    iput-object p1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    iput-object p2, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    iput-object p3, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 586
    iget-object v1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-get5(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 587
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-get3(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;

    move-result-object v0

    .line 588
    .local v0, "callback":Landroid/media/MediaSync$Callback;
    iget-object v1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-get4(Landroid/media/MediaSync;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-get4(Landroid/media/MediaSync;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 590
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 589
    if-eq v1, v3, :cond_1

    :cond_0
    monitor-exit v2

    .line 592
    return-void

    :cond_1
    monitor-exit v2

    .line 595
    if-eqz v0, :cond_2

    .line 596
    iget-object v1, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    iget-object v2, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    iget-object v2, v2, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 597
    iget-object v3, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    iget v3, v3, Landroid/media/MediaSync$AudioBuffer;->mBufferIndex:I

    .line 596
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaSync$Callback;->onAudioBufferConsumed(Landroid/media/MediaSync;Ljava/nio/ByteBuffer;I)V

    .line 584
    :cond_2
    return-void

    .line 586
    .end local v0    # "callback":Landroid/media/MediaSync$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
