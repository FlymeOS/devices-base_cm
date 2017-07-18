.class public Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "IPAddressTypeAvailabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;,
        Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    }
.end annotation


# instance fields
.field private final mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field private final mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    .line 24
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 25
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad IP Address Type Availability length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 29
    .local v0, "ipField":I
    invoke-static {}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    move-result-object v1

    and-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    .line 31
    shr-int/lit8 v1, v0, 0x2

    and-int/lit8 v0, v1, 0x3f

    .line 32
    invoke-static {}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 33
    invoke-static {}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    move-result-object v1

    aget-object v1, v1, v0

    .line 32
    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    .line 21
    return-void

    .line 34
    :cond_1
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    goto :goto_0
.end method


# virtual methods
.method public getV4Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    return-object v0
.end method

.method public getV6Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IPAddressTypeAvailability{mV4Availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    const-string/jumbo v1, ", mV6Availability="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const/16 v1, 0x7d

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
