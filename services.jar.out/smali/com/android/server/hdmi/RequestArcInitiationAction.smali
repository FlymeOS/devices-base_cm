.class final Lcom/android/server/hdmi/RequestArcInitiationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "RequestArcInitiationAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestArcInitiationAction"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 32
    return-void
.end method


# virtual methods
.method start()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    iput v3, p0, Lcom/android/server/hdmi/RequestArcInitiationAction;->mState:I

    .line 40
    iget v1, p0, Lcom/android/server/hdmi/RequestArcInitiationAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcInitiationAction;->addTimer(II)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcInitiationAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcInitiationAction;->mAvrAddress:I

    .line 42
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 44
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/RequestArcInitiationAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/RequestArcInitiationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcInitiationAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RequestArcInitiationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 54
    return v3
.end method
