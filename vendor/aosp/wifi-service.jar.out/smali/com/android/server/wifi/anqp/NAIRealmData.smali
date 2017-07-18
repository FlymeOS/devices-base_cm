.class public Lcom/android/server/wifi/anqp/NAIRealmData;
.super Ljava/lang/Object;
.source "NAIRealmData.java"


# instance fields
.field private final mEAPMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v8, 0x5

    if-ge v6, v8, :cond_0

    .line 25
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Runt payload: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    const v8, 0xffff

    and-int v0, v6, v8

    .line 29
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 30
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid data length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v9, :cond_3

    const/4 v5, 0x1

    .line 34
    .local v5, "utf8":Z
    :goto_0
    if-eqz v5, :cond_4

    .line 35
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    :goto_1
    invoke-static {p1, v9, v6}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "realm":Ljava/lang/String;
    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "realms":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    .line 39
    array-length v8, v4

    move v6, v7

    :goto_2
    if-ge v6, v8, :cond_5

    aget-object v3, v4, v6

    .line 40
    .local v3, "realmElement":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 41
    iget-object v7, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 32
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "realmElement":Ljava/lang/String;
    .end local v4    # "realms":[Ljava/lang/String;
    .end local v5    # "utf8":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "utf8":Z
    goto :goto_0

    .line 36
    :cond_4
    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 45
    .restart local v2    # "realm":Ljava/lang/String;
    .restart local v4    # "realms":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v1, v6, 0xff

    .line 46
    .local v1, "methodCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    .line 47
    :goto_3
    if-lez v1, :cond_6

    .line 48
    iget-object v6, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    new-instance v7, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-direct {v7, p1}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 23
    :cond_6
    return-void
.end method


# virtual methods
.method public getEAPMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRealms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/util/List;Lcom/android/server/wifi/hotspot2/pps/Credential;)I
    .locals 9
    .param p2, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")I"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "credLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, -0x1

    .line 63
    .local v7, "realmMatch":I
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 64
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "realm$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    .local v5, "realm":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->arg2SubdomainOfArg1(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    const/4 v7, 0x4

    .line 71
    .end local v3    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "realm":Ljava/lang/String;
    :cond_1
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 72
    :cond_2
    return v7

    .line 76
    .end local v6    # "realm$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 77
    const/4 v8, 0x0

    return v8

    .line 80
    :cond_4
    const/4 v0, -0x1

    .line 81
    .local v0, "best":I
    iget-object v8, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "eapMethod$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 82
    .local v1, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    move-result v8

    or-int v4, v8, v7

    .line 83
    .local v4, "match":I
    if-le v4, v0, :cond_5

    .line 84
    move v0, v4

    .line 85
    const/4 v8, 0x7

    if-ne v0, v8, :cond_5

    .line 86
    return v0

    .line 90
    .end local v1    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v4    # "match":I
    :cond_6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "  NAI Realm(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "realm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, "realm":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 101
    .end local v2    # "realm":Ljava/lang/String;
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v5, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "eapMethod$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 104
    .local v0, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    .end local v0    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
