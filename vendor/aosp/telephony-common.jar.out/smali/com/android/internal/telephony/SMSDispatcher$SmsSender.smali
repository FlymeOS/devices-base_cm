.class public abstract Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SmsSender"
.end annotation


# instance fields
.field protected volatile mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

.field protected final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 343
    return-void
.end method


# virtual methods
.method public sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V
    .locals 3
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "senderCallback"    # Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    .prologue
    .line 349
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "bindService() for carrier messaging service failed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    .line 353
    const/4 v1, 0x1

    .line 354
    const/4 v2, 0x0

    .line 352
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    .line 348
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "bindService() for carrier messaging service succeeded"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
