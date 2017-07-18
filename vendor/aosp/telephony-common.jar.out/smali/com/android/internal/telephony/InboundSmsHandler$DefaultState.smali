.class Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 334
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMessage: unhandled message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    const-string/jumbo v3, " currState="

    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap0(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "errorText":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v3, "---- Dumping InboundSmsHandler ----"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Total records="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rec[%d]: %s\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "errorText":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 351
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 329
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v3, "Release wakelock as it timed out"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->releaseWakeLock()V

    goto :goto_1

    .line 342
    .restart local v0    # "errorText":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v3, "---- Dumped InboundSmsHandler ----"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 344
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
