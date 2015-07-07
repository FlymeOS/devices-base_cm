.class abstract Lcom/android/server/hdmi/SystemAudioAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAction.java"


# static fields
.field private static final MAX_SEND_RETRY_COUNT:I = 0x2

.field private static final OFF_TIMEOUT_MS:I = 0x7d0

.field private static final ON_TIMEOUT_MS:I = 0x1388

.field private static final STATE_CHECK_ROUTING_IN_PRGRESS:I = 0x1

.field private static final STATE_WAIT_FOR_SET_SYSTEM_AUDIO_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SystemAudioAction"


# instance fields
.field protected final mAvrLogicalAddress:I

.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mSendRetryCount:I

.field protected mTargetAudioStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    .line 68
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 69
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 70
    iput-boolean p3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 71
    iput-object p4, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/SystemAudioAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/SystemAudioAction;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    return-void
.end method

.method private handleSendSystemAudioModeRequestTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 114
    :cond_0
    const-string v0, "[T]:wait for <Set System Audio Mode>."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    goto :goto_0
.end method

.method private sendSystemAudioModeRequestInternal()V
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    .line 94
    .local v0, "avrPhysicalAddress":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->getSourceAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    iget-boolean v4, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 97
    .local v1, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v2, Lcom/android/server/hdmi/SystemAudioAction$2;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SystemAudioAction$2;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/SystemAudioAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 107
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    .line 108
    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1388

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/SystemAudioAction;->addTimer(II)V

    .line 109
    return-void

    .line 108
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method


# virtual methods
.method protected finishWithCallback(I)V
    .locals 3
    .param p1, "returnCode"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->finish()V

    .line 193
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAudioAction"

    const-string v2, "Failed to invoke callback."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method final handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 172
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    if-eq v0, p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->handleSendSystemAudioModeRequestTimeout()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 156
    :goto_0
    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x70

    if-ne v3, v4, :cond_0

    .line 133
    const-string v3, "Failed to start system audio mode request."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 135
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x72

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    const-string v4, "SystemAudioAction"

    invoke-static {p1, v3, v4}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 143
    .local v0, "receivedStatus":Z
    iget-boolean v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-ne v0, v3, :cond_3

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->startAudioStatusAction()V

    goto :goto_0

    .line 148
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected system audio mode request:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/SystemAudioAction;->finishWithCallback(I)V

    move v1, v2

    .line 153
    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected removeSystemAudioActionInProgress()V
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 167
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 168
    return-void
.end method

.method protected sendSystemAudioModeRequest()V
    .locals 3

    .prologue
    .line 76
    const-class v2, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "routingActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/RoutingControlAction;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mState:I

    .line 80
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 81
    .local v0, "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    new-instance v2, Lcom/android/server/hdmi/SystemAudioAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SystemAudioAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/server/hdmi/RoutingControlAction;->addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V

    .line 90
    .end local v0    # "routingAction":Lcom/android/server/hdmi/RoutingControlAction;
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    goto :goto_0
.end method

.method protected setSystemAudioMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    .line 124
    return-void
.end method

.method protected startAudioStatusAction()V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SystemAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->finish()V

    .line 163
    return-void
.end method
