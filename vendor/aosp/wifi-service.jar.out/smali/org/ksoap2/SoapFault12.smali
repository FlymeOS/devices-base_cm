.class public Lorg/ksoap2/SoapFault12;
.super Lorg/ksoap2/SoapFault;
.source "SoapFault12.java"


# static fields
.field private static final serialVersionUID:J = 0xf7121L


# instance fields
.field public Code:Lorg/ksoap2/kdom/Node;

.field public Detail:Lorg/ksoap2/kdom/Node;

.field public Node:Lorg/ksoap2/kdom/Node;

.field public Reason:Lorg/ksoap2/kdom/Node;

.field public Role:Lorg/ksoap2/kdom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/ksoap2/SoapFault;-><init>()V

    .line 51
    const/16 v0, 0x78

    iput v0, p0, Lorg/ksoap2/SoapFault12;->version:I

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/ksoap2/SoapFault;-><init>()V

    .line 56
    iput p1, p0, Lorg/ksoap2/SoapFault12;->version:I

    .line 54
    return-void
.end method

.method private parseSelf(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 71
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v2, "Fault"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 76
    const-string/jumbo v1, "Code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Lorg/ksoap2/kdom/Node;

    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    .line 78
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 95
    :goto_1
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    invoke-interface {p1, v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    const-string/jumbo v1, "Reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v1, Lorg/ksoap2/kdom/Node;

    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    .line 81
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 82
    :cond_1
    const-string/jumbo v1, "Node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    new-instance v1, Lorg/ksoap2/kdom/Node;

    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    .line 84
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 85
    :cond_2
    const-string/jumbo v1, "Role"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    new-instance v1, Lorg/ksoap2/kdom/Node;

    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    .line 87
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 88
    :cond_3
    const-string/jumbo v1, "Detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    new-instance v1, Lorg/ksoap2/kdom/Node;

    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    .line 90
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 92
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v2, "Fault"

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 70
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v2, "Text"

    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1}, Lorg/ksoap2/SoapFault12;->parseSelf(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v2, "Value"

    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultcode:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    const-string/jumbo v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v2, "Text"

    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultstring:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->detail:Lorg/ksoap2/kdom/Node;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultactor:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 143
    iget-object v2, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    const-string/jumbo v3, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v4, "Text"

    invoke-virtual {v2, v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    const-string/jumbo v3, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v4, "Value"

    invoke-virtual {v2, v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/ksoap2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "xw"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Fault"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Code"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 110
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Code"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Reason"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 113
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Reason"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 118
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    if-eqz v0, :cond_1

    .line 121
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Role"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 123
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Role"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    if-eqz v0, :cond_2

    .line 127
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Detail"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 129
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Detail"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    :cond_2
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string/jumbo v1, "Fault"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    return-void
.end method
