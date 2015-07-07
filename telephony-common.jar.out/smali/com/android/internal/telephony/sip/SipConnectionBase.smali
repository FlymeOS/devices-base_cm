.class abstract Lcom/android/internal/telephony/sip/SipConnectionBase;
.super Lcom/android/internal/telephony/Connection;
.source "SipConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipConnectionBase$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipConnBase"

.field private static final VDBG:Z


# instance fields
.field private mCause:I

.field private mConnectTime:J

.field private mConnectTimeReal:J

.field private mCreateTime:J

.field private mDisconnectTime:J

.field private mDuration:J

.field private mHoldingStartTime:J

.field private mNextPostDialChar:I

.field private mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private mPostDialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    .line 56
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipConnectionBase: ctor dialString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    .line 63
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "SipConnBase"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "cancelPostDial: ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 108
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 109
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "dur":J
    :goto_0
    return-wide v0

    .line 110
    .end local v0    # "dur":J
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    sub-long v0, v2, v4

    .restart local v0    # "dur":J
    goto :goto_0

    .line 113
    .end local v0    # "dur":J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .restart local v0    # "dur":J
    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 6

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 124
    const-wide/16 v0, 0x0

    .line 129
    .local v0, "dur":J
    :goto_0
    return-wide v0

    .line 126
    .end local v0    # "dur":J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    sub-long v0, v2, v4

    .restart local v0    # "dur":J
    goto :goto_0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mNextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 172
    :cond_0
    const-string v0, "getRemaingPostDialString: ret empty string"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 173
    const-string v0, ""

    .line 176
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 1

    .prologue
    .line 151
    const-string v0, "proceedAfterWaitChar: ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "proceedAfterWildChar: ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method setDisconnectCause(I)V
    .locals 2
    .param p1, "cause"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisconnectCause: prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 140
    iput p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    .line 141
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
