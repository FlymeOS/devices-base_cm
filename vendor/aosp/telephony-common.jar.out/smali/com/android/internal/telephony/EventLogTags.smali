.class public Lcom/android/internal/telephony/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BAD_IP_ADDRESS:I = 0xc3c5

.field public static final CALL_DROP:I = 0xc3ba

.field public static final CDMA_DATA_DROP:I = 0xc3bf

.field public static final CDMA_DATA_SETUP_FAILED:I = 0xc3be

.field public static final CDMA_DATA_STATE_CHANGE:I = 0xc3c3

.field public static final CDMA_SERVICE_STATE_CHANGE:I = 0xc3c4

.field public static final DATA_NETWORK_REGISTRATION_FAIL:I = 0xc3bb

.field public static final DATA_NETWORK_STATUS_ON_RADIO_OFF:I = 0xc3bc

.field public static final DATA_STALL_RECOVERY_CLEANUP:I = 0xc3c7

.field public static final DATA_STALL_RECOVERY_GET_DATA_CALL_LIST:I = 0xc3c6

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART:I = 0xc3c9

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART_WITH_PROP:I = 0xc3ca

.field public static final DATA_STALL_RECOVERY_REREGISTER:I = 0xc3c8

.field public static final EXP_DET_SMS_DENIED_BY_USER:I = 0xc3cd

.field public static final EXP_DET_SMS_SENT_BY_USER:I = 0xc3d0

.field public static final GSM_DATA_STATE_CHANGE:I = 0xc3c1

.field public static final GSM_RAT_SWITCHED:I = 0xc3c0

.field public static final GSM_RAT_SWITCHED_NEW:I = 0xc3cb

.field public static final GSM_SERVICE_STATE_CHANGE:I = 0xc3c2

.field public static final PDP_BAD_DNS_ADDRESS:I = 0xc3b4

.field public static final PDP_CONTEXT_RESET:I = 0xc3b7

.field public static final PDP_NETWORK_DROP:I = 0xc3bd

.field public static final PDP_RADIO_RESET:I = 0xc3b6

.field public static final PDP_RADIO_RESET_COUNTDOWN_TRIGGERED:I = 0xc3b5

.field public static final PDP_REREGISTER_NETWORK:I = 0xc3b8

.field public static final PDP_SETUP_FAIL:I = 0xc3b9


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBadIpAddress(Ljava/lang/String;)V
    .locals 1
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 160
    const v0, 0xc3c5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 159
    return-void
.end method

.method public static writeCallDrop(III)V
    .locals 3
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xc3ba

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 115
    return-void
.end method

.method public static writeCdmaDataDrop(II)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkType"    # I

    .prologue
    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xc3bf

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 135
    return-void
.end method

.method public static writeCdmaDataSetupFailed(III)V
    .locals 3
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xc3be

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 131
    return-void
.end method

.method public static writeCdmaDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "oldstate"    # Ljava/lang/String;
    .param p1, "newstate"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0xc3c3

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    return-void
.end method

.method public static writeCdmaServiceStateChange(IIII)V
    .locals 3
    .param p0, "oldstate"    # I
    .param p1, "olddatastate"    # I
    .param p2, "newstate"    # I
    .param p3, "newdatastate"    # I

    .prologue
    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xc3c4

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 155
    return-void
.end method

.method public static writeDataNetworkRegistrationFail(II)V
    .locals 3
    .param p0, "opNumeric"    # I
    .param p1, "cid"    # I

    .prologue
    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xc3bb

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 119
    return-void
.end method

.method public static writeDataNetworkStatusOnRadioOff(Ljava/lang/String;I)V
    .locals 3
    .param p0, "dcState"    # Ljava/lang/String;
    .param p1, "enable"    # I

    .prologue
    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xc3bc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 123
    return-void
.end method

.method public static writeDataStallRecoveryCleanup(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 168
    const v0, 0xc3c7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 167
    return-void
.end method

.method public static writeDataStallRecoveryGetDataCallList(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 164
    const v0, 0xc3c6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 163
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestart(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 176
    const v0, 0xc3c9

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 175
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestartWithProp(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 180
    const v0, 0xc3ca

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 179
    return-void
.end method

.method public static writeDataStallRecoveryReregister(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 172
    const v0, 0xc3c8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 171
    return-void
.end method

.method public static writeExpDetSmsDeniedByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 188
    const v0, 0xc3cd

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 187
    return-void
.end method

.method public static writeExpDetSmsSentByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 192
    const v0, 0xc3d0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 191
    return-void
.end method

.method public static writeGsmDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "oldstate"    # Ljava/lang/String;
    .param p1, "newstate"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0xc3c1

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 143
    return-void
.end method

.method public static writeGsmRatSwitched(III)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkFrom"    # I
    .param p2, "networkTo"    # I

    .prologue
    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xc3c0

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 139
    return-void
.end method

.method public static writeGsmRatSwitchedNew(III)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkFrom"    # I
    .param p2, "networkTo"    # I

    .prologue
    .line 184
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xc3cb

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 183
    return-void
.end method

.method public static writeGsmServiceStateChange(IIII)V
    .locals 3
    .param p0, "oldstate"    # I
    .param p1, "oldgprsstate"    # I
    .param p2, "newstate"    # I
    .param p3, "newgprsstate"    # I

    .prologue
    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xc3c2

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 147
    return-void
.end method

.method public static writePdpBadDnsAddress(Ljava/lang/String;)V
    .locals 1
    .param p0, "dnsAddress"    # Ljava/lang/String;

    .prologue
    .line 92
    const v0, 0xc3b4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 91
    return-void
.end method

.method public static writePdpContextReset(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 104
    const v0, 0xc3b7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 103
    return-void
.end method

.method public static writePdpNetworkDrop(II)V
    .locals 3
    .param p0, "cid"    # I
    .param p1, "networkType"    # I

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xc3bd

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 127
    return-void
.end method

.method public static writePdpRadioReset(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 100
    const v0, 0xc3b6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 99
    return-void
.end method

.method public static writePdpRadioResetCountdownTriggered(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 96
    const v0, 0xc3b5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 95
    return-void
.end method

.method public static writePdpReregisterNetwork(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 108
    const v0, 0xc3b8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 107
    return-void
.end method

.method public static writePdpSetupFail(III)V
    .locals 3
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xc3b9

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 111
    return-void
.end method
