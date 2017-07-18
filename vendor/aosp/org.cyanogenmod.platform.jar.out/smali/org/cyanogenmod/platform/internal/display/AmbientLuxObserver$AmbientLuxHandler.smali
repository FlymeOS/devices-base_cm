.class Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;
.super Landroid/os/Handler;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLuxHandler"
.end annotation


# static fields
.field private static final MSG_TRANSITION:I = 0x1

.field private static final MSG_UPDATE_LUX:I


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "direction":I
    const/4 v1, 0x0

    .line 92
    .local v1, "lux":F
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    monitor-enter v4

    .line 93
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 88
    return-void

    .line 95
    :pswitch_0
    :try_start_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 96
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get6(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->add(F)V

    .line 101
    :pswitch_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get6(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v5

    invoke-static {v3, v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-set0(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;F)F

    .line 103
    invoke-static {}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string/jumbo v3, "AmbientLuxObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lux= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get7(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 105
    const-string/jumbo v6, " mAmbientLux="

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 105
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v6

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get7(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 109
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get9(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v3

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get3(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v5

    sub-float v2, v3, v5

    .line 110
    .local v2, "threshold":F
    :goto_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    const/4 v0, 0x1

    .line 111
    :goto_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get7(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 112
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3, v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-set1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;I)I

    .line 113
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get2(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get2(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    move-result-object v3

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get7(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v5

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F

    move-result v6

    invoke-interface {v3, v5, v6}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;->onTransition(IF)V

    .line 120
    :cond_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get6(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->size()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 121
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->removeMessages(I)V

    .line 122
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get8(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v6, v7}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 92
    .end local v2    # "threshold":F
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 109
    :cond_3
    :try_start_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->-get9(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .restart local v2    # "threshold":F
    goto :goto_1

    .line 110
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
