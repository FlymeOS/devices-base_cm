.class public Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
.super Ljava/lang/Object;
.source "XMLNode.java"


# instance fields
.field private final mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation
.end field

.field private mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

.field private final mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private final mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    .line 28
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "n":I
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    .line 23
    return-void
.end method

.method private toString([CLjava/lang/StringBuilder;)V
    .locals 6
    .param p1, "indent"    # [C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0xa

    .line 106
    const/16 v3, 0x20

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    array-length v3, p1

    add-int/lit8 v3, v3, 0x2

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    .line 118
    .local v2, "subIndent":[C
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 119
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-direct {v0, v2, p2}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->toString([CLjava/lang/StringBuilder;)V

    goto :goto_1

    .line 112
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "subIndent":[C
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    const-string/jumbo v3, ", text: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    .restart local v1    # "child$iterator":Ljava/util/Iterator;
    .restart local v2    # "subIndent":[C
    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public addText([CII)V
    .locals 5
    .param p1, "chs"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 42
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "trimmed":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 47
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 50
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_2
    return-void
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 62
    .local v0, "ch":C
    const/16 v6, 0x20

    if-lt v0, v6, :cond_0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    .line 67
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    .line 69
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->isMOContainer(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    const-string/jumbo v7, "spp:moURN"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    .line 71
    .local v5, "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .line 72
    .local v3, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    .line 57
    .end local v3    # "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    .end local v5    # "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    :cond_2
    return-void
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    .line 94
    .local v0, "nodeAttribute":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    return-object v0
.end method

.method public getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    new-array v1, v1, [C

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->toString([CLjava/lang/StringBuilder;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
