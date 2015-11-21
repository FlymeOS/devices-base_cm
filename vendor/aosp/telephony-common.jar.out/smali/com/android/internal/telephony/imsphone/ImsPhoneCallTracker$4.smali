.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;
.super Lcom/android/ims/ImsCall$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsUssdListener onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 1471
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "mImsUssdListener onCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2302(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;

    .line 1464
    :cond_0
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v4, 0x0

    .line 1475
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImsUssdListener onCallTerminated reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1477
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$302(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    .line 1479
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1480
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1482
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1483
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1484
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;
    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2302(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;

    .line 1487
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->close()V

    .line 1488
    return-void
.end method

.method public onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImsUssdListener onCallUssdMessageReceived mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1495
    const/4 v0, -0x1

    .line 1497
    .local v0, "ussdMode":I
    packed-switch p2, :pswitch_data_0

    .line 1507
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onIncomingUSSD(ILjava/lang/String;)V

    .line 1508
    return-void

    .line 1499
    :pswitch_0
    const/4 v0, 0x1

    .line 1500
    goto :goto_0

    .line 1503
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
