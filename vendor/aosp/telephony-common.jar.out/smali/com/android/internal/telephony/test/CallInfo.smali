.class Lcom/android/internal/telephony/test/CallInfo;
.super Ljava/lang/Object;
.source "SimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/CallInfo$State;
    }
.end annotation


# instance fields
.field mIsMT:Z

.field mIsMpty:Z

.field mNumber:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/test/CallInfo$State;

.field mTOA:I


# direct methods
.method constructor <init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V
    .locals 2
    .param p1, "isMT"    # Z
    .param p2, "state"    # Lcom/android/internal/telephony/test/CallInfo$State;
    .param p3, "isMpty"    # Z
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMT:Z

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 54
    iput-boolean p3, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 55
    iput-object p4, p0, Lcom/android/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    .line 57
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 58
    const/16 v0, 0x91

    iput v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    .line 51
    :goto_0
    return-void

    .line 60
    :cond_0
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    goto :goto_0
.end method

.method static createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/android/internal/telephony/test/CallInfo;-><init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    return-object v0
.end method

.method static createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-direct {v0, v2, v1, v2, p0}, Lcom/android/internal/telephony/test/CallInfo;-><init>(ZLcom/android/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method isActiveOrHeld()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnecting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRinging()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toCLCCLine(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "+CLCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string/jumbo v1, ","

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 77
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string/jumbo v1, ","

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/CallInfo$State;->value()I

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ",0,"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    .line 77
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, ",\""

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "\","

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0

    .line 78
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method toDriverCall(I)Lcom/android/internal/telephony/DriverCall;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 87
    new-instance v1, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 89
    .local v1, "ret":Lcom/android/internal/telephony/DriverCall;
    iput p1, v1, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 90
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMT:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/test/CallInfo$State;->value()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 100
    iget v2, p0, Lcom/android/internal/telephony/test/CallInfo;->mTOA:I

    iput v2, v1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 102
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 104
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Lcom/android/internal/telephony/ATParseEx;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "should never happen"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
