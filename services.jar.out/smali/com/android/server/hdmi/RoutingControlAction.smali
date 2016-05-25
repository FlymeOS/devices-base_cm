.class final Lcom/android/server/hdmi/RoutingControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RoutingControlAction.java"


# static fields
.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x2

.field private static final STATE_WAIT_FOR_ROUTING_INFORMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoutingControlAction"

.field private static final TIMEOUT_REPORT_POWER_STATUS_MS:I = 0x3e8

.field private static final TIMEOUT_ROUTING_INFORMATION_MS:I = 0x3e8


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mCurrentRoutingPath:I

.field private final mNotifyInputChange:Z

.field private final mQueryDevicePowerStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "path"    # I
    .param p3, "queryDevicePowerStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 77
    iput-object p4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 78
    iput p2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 79
    iput-boolean p3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    .line 84
    if-nez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/RoutingControlAction;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/RoutingControlAction;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->handlDevicePowerStatusAckResult(Z)V

    return-void
.end method

.method private finishWithCallback(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->invokeCallback(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->finish()V

    .line 147
    return-void
.end method

.method private getTvPowerStatus()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPowerStatus()I

    move-result v0

    return v0
.end method

.method private handlDevicePowerStatusAckResult(Z)V
    .locals 3
    .param p1, "acked"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    .line 190
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 193
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    goto :goto_0
.end method

.method private handleReportPowerStatus(I)V
    .locals 3
    .param p1, "devicePowerStatus"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 123
    invoke-static {p1}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    .line 128
    return-void
.end method

.method private invokeCallback(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isPowerOnOrTransient(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 135
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 1
    .param p1, "address"    # I
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 185
    return-void
.end method

.method private sendSetStreamPath()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RoutingControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 6
    .param p1, "timeoutState"    # I

    .prologue
    const/4 v5, 0x0

    .line 151
    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    if-nez v2, :cond_1

    .line 152
    :cond_0
    const-string v2, "CEC"

    const-string v3, "Timer in a wrong state. Ignored."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 155
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 158
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mQueryDevicePowerStatus:Z

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 160
    .local v1, "deviceLogicalAddress":I
    new-instance v2, Lcom/android/server/hdmi/RoutingControlAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/RoutingControlAction$1;-><init>(Lcom/android/server/hdmi/RoutingControlAction;)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/RoutingControlAction;->queryDevicePowerStatus(ILcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_0

    .line 168
    .end local v1    # "deviceLogicalAddress":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    iget-boolean v4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 169
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    goto :goto_0

    .line 173
    .end local v0    # "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->getTvPowerStatus()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/hdmi/RoutingControlAction;->isPowerOnOrTransient(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    iget-boolean v4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 175
    invoke-direct {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    .line 177
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/RoutingControlAction;->finishWithCallback(I)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 96
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 97
    .local v0, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 98
    .local v1, "params":[B
    iget v5, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    if-ne v5, v3, :cond_1

    const/16 v5, 0x81

    if-ne v0, v5, :cond_1

    .line 103
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v2

    .line 104
    .local v2, "routingPath":I
    iget v4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    .end local v2    # "routingPath":I
    :goto_0
    return v3

    .line 107
    .restart local v2    # "routingPath":I
    :cond_0
    iput v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 109
    const-class v4, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v4, p0}, Lcom/android/server/hdmi/RoutingControlAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 110
    iget v4, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    goto :goto_0

    .line 112
    .end local v2    # "routingPath":I
    :cond_1
    iget v5, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/16 v5, 0x90

    if-ne v0, v5, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    aget-byte v4, v5, v4

    invoke-direct {p0, v4}, Lcom/android/server/hdmi/RoutingControlAction;->handleReportPowerStatus(I)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 117
    goto :goto_0
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    iput v2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    .line 90
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RoutingControlAction;->addTimer(II)V

    .line 91
    return v2
.end method
