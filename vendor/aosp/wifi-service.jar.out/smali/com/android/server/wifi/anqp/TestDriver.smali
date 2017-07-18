.class public Lcom/android/server/wifi/anqp/TestDriver;
.super Ljava/lang/Object;
.source "TestDriver.java"


# static fields
.field private static final QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 23
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 24
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 25
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 26
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 27
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 28
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 29
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 30
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 31
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 32
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 33
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 34
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 35
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 36
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 37
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 38
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 40
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 41
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 42
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 43
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 44
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 45
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 46
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 22
    sput-object v0, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/server/wifi/anqp/TestDriver;->read(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 139
    .local v1, "lengthBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .line 140
    .local v0, "length":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-static {p0, v0}, Lcom/android/server/wifi/anqp/TestDriver;->read(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/android/server/wifi/anqp/TestDriver;->runTest()V

    .line 165
    return-void
.end method

.method private static prepRequest(ILjava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "pos0"    # I
    .param p1, "request"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p0

    add-int/lit8 v1, v1, -0x2

    int-to-short v1, v1

    invoke-virtual {p1, p0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 148
    .local v0, "octets":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 149
    return-object v0
.end method

.method private static read(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-array v1, p1, [B

    .line 154
    .local v1, "payload":[B
    const/4 v2, 0x0

    .line 155
    .local v2, "position":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 156
    sub-int v3, p1, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 157
    .local v0, "amount":I
    if-gtz v0, :cond_0

    .line 158
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    .line 162
    .end local v0    # "amount":I
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3
.end method

.method public static runTest()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v5, Ljava/util/HashSet;

    sget-object v18, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 53
    .local v5, "elements":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v18, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 55
    const/16 v18, 0x2000

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 56
    .local v15, "request":Ljava/nio/ByteBuffer;
    sget-object v18, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 58
    .local v9, "lenPos":I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 59
    invoke-static {v5, v15}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildQueryRequest(Ljava/util/Set;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-static {v9, v15}, Lcom/android/server/wifi/anqp/TestDriver;->prepRequest(ILjava/nio/ByteBuffer;)[B

    move-result-object v16

    .line 63
    .local v16, "requestBytes":[B
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v19, "Connecting..."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    new-instance v17, Ljava/net/Socket;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v18

    const/16 v19, 0x17d8

    invoke-direct/range {v17 .. v19}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 65
    .local v17, "sock":Ljava/net/Socket;
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v11, "out":Ljava/io/BufferedOutputStream;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " ### Querying for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 68
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 70
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v8, "in":Ljava/io/BufferedInputStream;
    invoke-static {v8}, Lcom/android/server/wifi/anqp/TestDriver;->getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 73
    .local v12, "payload":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    .line 74
    .local v10, "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    invoke-static {v12}, Lcom/android/server/wifi/anqp/ANQPFactory;->parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "anqpResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v10    # "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    .local v4, "element$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/anqp/ANQPElement;

    .line 76
    .local v3, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v18

    sget-object v19, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object v10, v3

    .line 78
    check-cast v10, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;

    .local v10, "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    goto :goto_0

    .line 82
    .end local v3    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    .end local v10    # "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    :cond_1
    if-eqz v10, :cond_3

    .line 83
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->getProviders()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "provider$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/anqp/OSUProvider;

    .line 84
    .local v13, "provider":Lcom/android/server/wifi/anqp/OSUProvider;
    invoke-virtual {v13}, Lcom/android/server/wifi/anqp/OSUProvider;->getIcons()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "iconInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/anqp/IconInfo;

    .line 85
    .local v6, "iconInfo":Lcom/android/server/wifi/anqp/IconInfo;
    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/IconInfo;->getFileName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/anqp/TestDriver;->sendIconRequest(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v6    # "iconInfo":Lcom/android/server/wifi/anqp/IconInfo;
    .end local v7    # "iconInfo$iterator":Ljava/util/Iterator;
    .end local v13    # "provider":Lcom/android/server/wifi/anqp/OSUProvider;
    .end local v14    # "provider$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v18, "doesNotExist.noimg"

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/anqp/TestDriver;->sendIconRequest(Ljava/lang/String;)V

    .line 91
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "nxdomain.abc"

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const-string/jumbo v19, "jan.com"

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/anqp/TestDriver;->sendHomeRealmQuery([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private static varargs sendHomeRealmQuery([Ljava/lang/String;)V
    .locals 11
    .param p0, "realms"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/16 v8, 0x400

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 118
    .local v6, "request":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 119
    .local v2, "iconPos":I
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 120
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHomeRealmRequest(Ljava/util/List;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 121
    invoke-static {v2, v6}, Lcom/android/server/wifi/anqp/TestDriver;->prepRequest(ILjava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 123
    .local v1, "iconBytes":[B
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "Connecting..."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    new-instance v7, Ljava/net/Socket;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v8

    const/16 v9, 0x17d8

    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 125
    .local v7, "sock":Ljava/net/Socket;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .local v4, "out":Ljava/io/BufferedOutputStream;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " ### Home realm query for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 129
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 131
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v3, "in":Ljava/io/BufferedInputStream;
    invoke-static {v3}, Lcom/android/server/wifi/anqp/TestDriver;->getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 133
    .local v5, "payload":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/android/server/wifi/anqp/ANQPFactory;->parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "anqpResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Home realm query: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private static sendIconRequest(Ljava/lang/String;)V
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 96
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 95
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 97
    .local v3, "iconRequest":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 98
    .local v2, "iconPos":I
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 99
    invoke-static {p0, v3}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildIconRequest(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-static {v2, v3}, Lcom/android/server/wifi/anqp/TestDriver;->prepRequest(ILjava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 102
    .local v1, "iconBytes":[B
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "Connecting..."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    new-instance v7, Ljava/net/Socket;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v8

    const/16 v9, 0x17d8

    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 104
    .local v7, "sock":Ljava/net/Socket;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v5, "out":Ljava/io/BufferedOutputStream;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " ### Requesting icon \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 108
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 110
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 111
    .local v4, "in":Ljava/io/BufferedInputStream;
    invoke-static {v4}, Lcom/android/server/wifi/anqp/TestDriver;->getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 112
    .local v6, "payload":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Lcom/android/server/wifi/anqp/ANQPFactory;->parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "anqpResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Icon: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    return-void
.end method
