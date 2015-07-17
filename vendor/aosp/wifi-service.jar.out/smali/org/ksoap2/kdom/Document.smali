.class public Lorg/ksoap2/kdom/Document;
.super Lorg/ksoap2/kdom/Node;
.source "Document.java"


# instance fields
.field encoding:Ljava/lang/String;

.field protected rootIndex:I

.field standalone:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/ksoap2/kdom/Node;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "child"    # Ljava/lang/Object;

    .prologue
    .line 63
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 67
    iput p1, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    .line 72
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/ksoap2/kdom/Node;->addChild(IILjava/lang/Object;)V

    .line 73
    return-void

    .line 69
    :cond_1
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    if-lt v0, p1, :cond_0

    .line 70
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "#document"

    return-object v0
.end method

.method public getRootElement()Lorg/ksoap2/kdom/Element;
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document has no root element!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Document;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/kdom/Element;

    return-object v0
.end method

.method public getStandalone()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    .line 87
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    .line 90
    invoke-super {p0, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document end expected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method

.method public removeChild(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    if-ne p1, v0, :cond_1

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    .line 103
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/ksoap2/kdom/Node;->removeChild(I)V

    .line 104
    return-void

    .line 100
    :cond_1
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    if-ge p1, v0, :cond_0

    .line 101
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStandalone(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "standalone"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    .line 49
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    iget-object v1, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Document;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 124
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 125
    return-void
.end method
