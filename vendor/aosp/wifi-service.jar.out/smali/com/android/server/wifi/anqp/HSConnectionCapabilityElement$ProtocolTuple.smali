.class public Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
.super Ljava/lang/Object;
.source "HSConnectionCapabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolTuple"
.end annotation


# instance fields
.field private final mPort:I

.field private final mProtocol:I

.field private final mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 27
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Runt protocol tuple: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 32
    .local v0, "statusNumber":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 33
    invoke-static {}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    move-result-object v1

    aget-object v1, v1, v0

    .line 32
    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    .line 25
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;)V
    .locals 0
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    return v0
.end method

.method public getStatus()Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProtocolTuple{mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    const-string/jumbo v1, ", mPort="

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    const-string/jumbo v1, ", mStatus="

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const/16 v1, 0x7d

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
