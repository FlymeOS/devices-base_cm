.class public Lorg/ksoap2/kdom/Element;
.super Lorg/ksoap2/kdom/Node;
.source "Element.java"


# instance fields
.field protected attributes:Ljava/util/Vector;

.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected parent:Lorg/ksoap2/kdom/Node;

.field protected prefixes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/ksoap2/kdom/Node;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    .line 57
    iput-object v0, p0, Lorg/ksoap2/kdom/Element;->children:Ljava/util/Vector;

    .line 58
    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/ksoap2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1, p2}, Lorg/ksoap2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 98
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    :goto_1
    return-object v1

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespaceCount()I

    move-result v0

    .line 142
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 143
    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Element;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    :goto_1
    return-object v2

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    instance-of v2, v2, Lorg/ksoap2/kdom/Element;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    check-cast v2, Lorg/ksoap2/kdom/Element;

    invoke-virtual {v2, p1}, Lorg/ksoap2/kdom/Element;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParent()Lorg/ksoap2/kdom/Node;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    return-object v0
.end method

.method public getRoot()Lorg/ksoap2/kdom/Node;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .line 114
    .local v0, "current":Lorg/ksoap2/kdom/Element;
    :goto_0
    iget-object v1, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    instance-of v1, v1, Lorg/ksoap2/kdom/Element;

    if-nez v1, :cond_1

    .line 116
    iget-object v0, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    .line 120
    .end local v0    # "current":Lorg/ksoap2/kdom/Element;
    :cond_0
    return-object v0

    .line 117
    .restart local v0    # "current":Lorg/ksoap2/kdom/Element;
    :cond_1
    iget-object v0, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    .end local v0    # "current":Lorg/ksoap2/kdom/Element;
    check-cast v0, Lorg/ksoap2/kdom/Element;

    .restart local v0    # "current":Lorg/ksoap2/kdom/Element;
    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 193
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/ksoap2/kdom/Element;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 197
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/ksoap2/kdom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->init()V

    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 216
    :cond_2
    :goto_2
    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 222
    return-void

    .line 209
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 210
    invoke-super {p0, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 212
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 213
    const/4 v1, 0x7

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/ksoap2/kdom/Element;->addChild(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    if-nez v2, :cond_0

    .line 229
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    .line 231
    :cond_0
    if-nez p1, :cond_1

    .line 232
    const-string p1, ""

    .line 234
    :cond_1
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 235
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    .line 236
    .local v0, "attribut":[Ljava/lang/String;
    aget-object v2, v0, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, v0, v5

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    if-nez p3, :cond_2

    .line 240
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 253
    .end local v0    # "attribut":[Ljava/lang/String;
    :goto_1
    return-void

    .line 243
    .restart local v0    # "attribut":[Ljava/lang/String;
    :cond_2
    aput-object p3, v0, v6

    goto :goto_1

    .line 234
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 249
    .end local v0    # "attribut":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    aput-object p3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/ksoap2/kdom/Element;->name:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use \"\" for empty namespace"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iput-object p1, p0, Lorg/ksoap2/kdom/Element;->namespace:Ljava/lang/String;

    .line 284
    return-void
.end method

.method protected setParent(Lorg/ksoap2/kdom/Node;)V
    .locals 0
    .param p1, "parent"    # Lorg/ksoap2/kdom/Node;

    .prologue
    .line 293
    iput-object p1, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    .line 294
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getAttributeCount()I

    move-result v1

    .line 314
    .local v1, "len":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 315
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Element;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 323
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    return-void
.end method
