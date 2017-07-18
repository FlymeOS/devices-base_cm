.class public Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SOAPParser.java"


# static fields
.field private static TagOnly:[Ljava/lang/String;

.field private static final sRevMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoapAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoapMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 24
    new-array v2, v7, [Ljava/lang/String;

    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 25
    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 27
    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    .line 33
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v4, "spp:sppVersion"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v4, "redirectURI"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v4, "requestReason"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v4, "spp:sessionID"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v4, "spp:supportedSPPVersions"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v4, "spp:supportedMOList"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    const-string/jumbo v4, "spp:sppPostDevDataResponse"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    .line 46
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    .line 47
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 48
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v2, v5, v6

    .line 49
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 45
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private static extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 9
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    .local p2, "mos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/omadm/MOTree;>;"
    const/4 v6, 0x0

    .line 111
    sget-object v7, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 113
    .local v1, "attributes":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 114
    array-length v7, v1

    if-nez v7, :cond_2

    .line 115
    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 116
    .local v4, "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 134
    .local v2, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v2, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 118
    .end local v2    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_2
    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 119
    .local v0, "attribute":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 120
    .restart local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 124
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    .restart local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;

    invoke-direct {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;-><init>()V

    .line 140
    .local v5, "soapParser":Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;
    new-instance v6, Ljava/io/File;

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->parse(Ljava/io/File;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v4

    .line 142
    .local v4, "root":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 143
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "Marshalled: "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->getMOs()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    .line 145
    .local v1, "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    .line 147
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v0

    .line 149
    .local v0, "back":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    .end local v0    # "back":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v1    # "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "---"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addText([CII)V

    .line 97
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "End tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' doesn\'t match current node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 82
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string/jumbo v2, "Failed to close element"

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;
    .locals 3

    .prologue
    .line 103
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 104
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "mos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-static {v2, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V

    .line 106
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;-><init>(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v2
.end method

.method public parse(Ljava/io/File;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 58
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {v1, v0, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 64
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    return-object v2

    .line 61
    :catchall_0
    move-exception v2

    .line 62
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 61
    throw v2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 72
    .local v0, "parent":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-direct {v1, v2, p3, p4}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 73
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", atts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 69
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_0
.end method
