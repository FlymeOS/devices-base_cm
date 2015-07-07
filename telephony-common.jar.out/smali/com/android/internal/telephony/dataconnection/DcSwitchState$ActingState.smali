.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 279
    const/4 v1, 0x0

    .line 282
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 235
    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActingState: REQ_CONNECT/EVENT_CONNECT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->setupConnection(Ljava/lang/String;)I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "result":I
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x44000

    if-ne v3, v4, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x44001

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 244
    :cond_0
    const/4 v1, 0x1

    .line 245
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 248
    .end local v0    # "result":I
    .end local v1    # "retVal":Z
    .end local v2    # "type":Ljava/lang/String;
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 250
    .restart local v2    # "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActingState: DcSwitchAsyncChannel.REQ_DISCONNECT type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->teardownConnection(Ljava/lang/String;)I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Ljava/lang/String;)I

    move-result v0

    .line 253
    .restart local v0    # "result":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x44003

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 254
    const/4 v1, 0x1

    .line 255
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 259
    .end local v0    # "result":I
    .end local v1    # "retVal":Z
    .end local v2    # "type":Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v4, "ActingState: EVENT_CONNECTED"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 262
    const/4 v1, 0x1

    .line 263
    .restart local v1    # "retVal":Z
    goto/16 :goto_0

    .line 267
    .end local v1    # "retVal":Z
    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v4, "ActingState: EVENT_CLEANUP_ALL"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->requestDataIdle()V
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDeactingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 271
    const/4 v1, 0x1

    .line 272
    .restart local v1    # "retVal":Z
    goto/16 :goto_0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_0
        0x43002 -> :sswitch_3
        0x43003 -> :sswitch_2
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
    .end sparse-switch
.end method
