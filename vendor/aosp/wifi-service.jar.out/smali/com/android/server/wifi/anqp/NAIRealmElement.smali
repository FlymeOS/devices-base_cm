.class public Lcom/android/server/wifi/anqp/NAIRealmElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "NAIRealmElement.java"


# instance fields
.field private final mRealmData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/NAIRealmData;",
            ">;"
        }
    .end annotation
.end field


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
    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    .line 30
    return-void

    .line 33
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 34
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Runt NAI Realm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 38
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    .line 39
    :goto_0
    if-lez v0, :cond_2

    .line 40
    iget-object v1, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    new-instance v2, Lcom/android/server/wifi/anqp/NAIRealmData;

    invoke-direct {v2, p2}, Lcom/android/server/wifi/anqp/NAIRealmData;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 25
    :cond_2
    return-void
.end method


# virtual methods
.method public getRealmData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/NAIRealmData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I
    .locals 6
    .param p1, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;

    .prologue
    .line 50
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const/4 v5, 0x0

    return v5

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "credLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 55
    .local v0, "best":I
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "realmData$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/anqp/NAIRealmData;

    .line 56
    .local v3, "realmData":Lcom/android/server/wifi/anqp/NAIRealmData;
    invoke-virtual {v3, v1, p1}, Lcom/android/server/wifi/anqp/NAIRealmData;->match(Ljava/util/List;Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    move-result v2

    .line 57
    .local v2, "match":I
    if-le v2, v0, :cond_1

    .line 58
    move v0, v2

    .line 59
    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    .line 60
    return v0

    .line 64
    .end local v2    # "match":I
    .end local v3    # "realmData":Lcom/android/server/wifi/anqp/NAIRealmData;
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "NAI Realm:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v3, p0, Lcom/android/server/wifi/anqp/NAIRealmElement;->mRealmData:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/NAIRealmData;

    .line 72
    .local v0, "data":Lcom/android/server/wifi/anqp/NAIRealmData;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    .end local v0    # "data":Lcom/android/server/wifi/anqp/NAIRealmData;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
