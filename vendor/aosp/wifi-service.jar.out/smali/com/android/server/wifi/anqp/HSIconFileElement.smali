.class public Lcom/android/server/wifi/anqp/HSIconFileElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSIconFileElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;
    }
.end annotation


# instance fields
.field private final mIconData:[B

.field private final mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    .line 27
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 28
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Truncated icon file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 32
    .local v1, "statusID":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;->values()[Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;->values()[Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    move-result-object v2

    aget-object v2, v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    .line 33
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    invoke-static {p2, v3, v2}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .line 36
    .local v0, "dataLength":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    .line 37
    iget-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24
    return-void

    .line 32
    .end local v0    # "dataLength":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIconData()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    return-object v0
.end method

.method public getStatusCode()Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HSIconFile{mStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, ", mType=\'"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const/16 v1, 0x27

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, ", mIconData="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    array-length v1, v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, " bytes }"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
