.class Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "entering Delivering state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "leaving Delivering state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeliveringState.processMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 440
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 405
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    move v0, v1

    .line 407
    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    move v0, v1

    .line 413
    goto :goto_0

    .line 417
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    :cond_0
    move v0, v1

    .line 420
    goto :goto_0

    .line 424
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    move v0, v1

    .line 425
    goto :goto_0

    .line 428
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "mWakeLock released while delivering/broadcasting!"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 433
    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
