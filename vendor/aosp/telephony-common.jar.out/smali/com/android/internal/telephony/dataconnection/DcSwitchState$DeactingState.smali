.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeactingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 348
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 401
    const/4 v0, 0x0

    .line 404
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 351
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 353
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeactingState: REQ_CONNECT/EVENT_CONNECT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request is defered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const v4, 0x43000

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Landroid/os/Message;)V

    .line 357
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x44000

    if-ne v2, v3, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44001

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 361
    :cond_0
    const/4 v0, 0x1

    .line 362
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 365
    .end local v0    # "retVal":Z
    .end local v1    # "type":Ljava/lang/String;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 367
    .restart local v1    # "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeactingState: DcSwitchAsyncChannel.REQ_DISCONNECT type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44003

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 371
    const/4 v0, 0x1

    .line 372
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 376
    .end local v0    # "retVal":Z
    .end local v1    # "type":Ljava/lang/String;
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "DeactingState: EVENT_DETACH_DONE"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 379
    const/4 v0, 0x1

    .line 380
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 384
    .end local v0    # "retVal":Z
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "DeactingState: Receive invalid event EVENT_CONNECTED!"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    .line 387
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 391
    .end local v0    # "retVal":Z
    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "DeactingState: EVENT_CLEANUP_ALL, already deacting."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x1

    .line 394
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_0
        0x43002 -> :sswitch_4
        0x43003 -> :sswitch_3
        0x43004 -> :sswitch_2
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
    .end sparse-switch
.end method
