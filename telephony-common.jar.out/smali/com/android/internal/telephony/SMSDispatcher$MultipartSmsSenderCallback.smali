.class final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultipartSmsSenderCallback"
.end annotation


# instance fields
.field private final mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V
    .locals 0
    .param p2, "smsSender"    # Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 560
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    .line 561
    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 601
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method public onFilterComplete(Z)V
    .locals 3
    .param p1, "keepMessage"    # Z

    .prologue
    .line 591
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onFilterComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    .prologue
    .line 596
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    .prologue
    .line 573
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->disposeConnection(Landroid/content/Context;)V

    .line 575
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v2, :cond_1

    .line 576
    const-string v2, "SMSDispatcher"

    const-string v3, "Unexpected onSendMultipartSmsComplete call with null trackers."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    return-void

    .line 580
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "messageRef":I
    if-eqz p2, :cond_2

    array-length v2, p2

    if-le v2, v0, :cond_2

    .line 583
    aget v1, p2, v0

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object v3, v3, v0

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    invoke-static {v2, v3, p1, v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onSendSmsComplete(II)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    .prologue
    .line 565
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onSendSmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void
.end method
