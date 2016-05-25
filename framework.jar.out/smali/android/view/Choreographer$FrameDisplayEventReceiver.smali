.class final Landroid/view/Choreographer$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "Choreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field private mFrame:I

.field private mHavePendingVsync:Z

.field private mTimestampNanos:J

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 700
    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 701
    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 702
    return-void
.end method


# virtual methods
.method public onVsync(JII)V
    .locals 9
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    const/4 v8, 0x1

    .line 714
    if-eqz p3, :cond_0

    .line 715
    const-string v1, "Choreographer"

    const-string v4, "Received vsync from secondary display, but we don\'t support this case yet.  Choreographer needs a way to explicitly request vsync for a specific display to ensure it doesn\'t lose track of its scheduled vsync."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 748
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 729
    .local v2, "now":J
    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 730
    const-string v1, "Choreographer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, p1, v2

    long-to-float v5, v6

    const v6, 0x358637bd    # 1.0E-6f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms in the future!  Check that graphics HAL is generating vsync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "timestamps using the correct timebase."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    move-wide p1, v2

    .line 736
    :cond_1
    iget-boolean v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    if-eqz v1, :cond_2

    .line 737
    const-string v1, "Choreographer"

    const-string v4, "Already have a pending vsync event.  There should only be one at a time."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_1
    iput-wide p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    .line 744
    iput p4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    .line 745
    iget-object v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    # getter for: Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;
    invoke-static {v1}, Landroid/view/Choreographer;->access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 746
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 747
    iget-object v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    # getter for: Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;
    invoke-static {v1}, Landroid/view/Choreographer;->access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v1

    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 740
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iput-boolean v8, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 753
    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    iget-wide v2, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    iget v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->doFrame(JI)V

    .line 754
    return-void
.end method
