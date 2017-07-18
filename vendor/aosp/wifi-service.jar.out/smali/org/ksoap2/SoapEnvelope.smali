.class public Lorg/ksoap2/SoapEnvelope;
.super Ljava/lang/Object;
.source "SoapEnvelope.java"


# static fields
.field public static final ENC:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/encoding/"

.field public static final ENC2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-encoding"

.field public static final ENV:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/envelope/"

.field public static final ENV2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"

.field public static final NS20:Ljava/lang/String; = "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

.field public static final VER10:I = 0x64

.field public static final VER11:I = 0x6e

.field public static final VER12:I = 0x78

.field public static final XSD:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final XSD1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema"

.field public static final XSI:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final XSI1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema-instance"


# instance fields
.field public bodyIn:Ljava/lang/Object;

.field public bodyOut:Ljava/lang/Object;

.field public enc:Ljava/lang/String;

.field public encodingStyle:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field public headerIn:[Lorg/ksoap2/kdom/Element;

.field public headerOut:[Lorg/ksoap2/kdom/Element;

.field public ns:Ljava/lang/String;

.field public omadm:Ljava/lang/String;

.field public version:I

.field public xsd:Ljava/lang/String;

.field public xsi:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    .line 118
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 119
    const-string/jumbo v0, "http://www.w3.org/1999/XMLSchema-instance"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "http://www.w3.org/1999/XMLSchema"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    .line 125
    :goto_0
    const/16 v0, 0x78

    if-ge p1, v0, :cond_1

    .line 126
    const-string/jumbo v0, "http://schemas.xmlsoap.org/soap/encoding/"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "http://schemas.xmlsoap.org/soap/envelope/"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    .line 133
    :goto_1
    const-string/jumbo v0, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->ns:Ljava/lang/String;

    .line 116
    return-void

    .line 122
    :cond_0
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema-instance"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_1
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-encoding"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    goto :goto_1
.end method

.method public static stringToBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "booleanAsString"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 71
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
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
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 141
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Envelope"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Header"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 148
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Header"

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Body"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseBody(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 154
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Body"

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 156
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Envelope"

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public parseBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 185
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 185
    if-eqz v2, :cond_1

    .line 187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Fault"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 185
    if-eqz v2, :cond_1

    .line 190
    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v3, 0x78

    if-ge v2, v3, :cond_0

    .line 191
    new-instance v0, Lorg/ksoap2/SoapFault;

    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    invoke-direct {v0, v2}, Lorg/ksoap2/SoapFault;-><init>(I)V

    .line 195
    .local v0, "fault":Lorg/ksoap2/SoapFault;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/ksoap2/SoapFault;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 196
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    .line 182
    .end local v0    # "fault":Lorg/ksoap2/SoapFault;
    :goto_1
    return-void

    .line 193
    :cond_0
    new-instance v0, Lorg/ksoap2/SoapFault12;

    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    invoke-direct {v0, v2}, Lorg/ksoap2/SoapFault12;-><init>(I)V

    .restart local v0    # "fault":Lorg/ksoap2/SoapFault;
    goto :goto_0

    .line 198
    .end local v0    # "fault":Lorg/ksoap2/SoapFault;
    :cond_1
    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    instance-of v2, v2, Lorg/ksoap2/kdom/Node;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v1, Lorg/ksoap2/kdom/Node;

    .line 199
    .local v1, "node":Lorg/ksoap2/kdom/Node;
    :goto_2
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 200
    iput-object v1, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    goto :goto_1

    .line 198
    .end local v1    # "node":Lorg/ksoap2/kdom/Node;
    :cond_2
    new-instance v1, Lorg/ksoap2/kdom/Node;

    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    .restart local v1    # "node":Lorg/ksoap2/kdom/Node;
    goto :goto_2
.end method

.method public parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 163
    new-instance v3, Lorg/ksoap2/kdom/Node;

    invoke-direct {v3}, Lorg/ksoap2/kdom/Node;-><init>()V

    .line 164
    .local v3, "headers":Lorg/ksoap2/kdom/Node;
    invoke-virtual {v3, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 167
    invoke-virtual {v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    .line 168
    .local v0, "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_0

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 166
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_1
    new-array v5, v1, [Lorg/ksoap2/kdom/Element;

    iput-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/ksoap2/kdom/Element;

    .line 173
    const/4 v1, 0x0

    .line 174
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 175
    invoke-virtual {v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    .line 176
    .restart local v0    # "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_2

    .line 177
    iget-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/ksoap2/kdom/Element;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v0, v5, v1

    move v1, v2

    .line 174
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_3
    return-void
.end method

.method public setOutputSoapObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "soapObject"    # Ljava/lang/Object;

    .prologue
    .line 254
    iput-object p1, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    .line 253
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
    .line 213
    const-string/jumbo v0, "soap"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "spp"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->ns:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Header"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 220
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Header"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Body"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeBody(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 223
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Body"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    return-void
.end method

.method public writeBody(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string/jumbo v1, "encodingStyle"

    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    check-cast v0, Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 242
    return-void
.end method

.method public writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    if-eqz v1, :cond_0

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Element;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
