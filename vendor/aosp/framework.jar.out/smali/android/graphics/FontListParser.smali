.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListParser$Config;,
        Landroid/graphics/FontListParser$Font;,
        Landroid/graphics/FontListParser$Alias;,
        Landroid/graphics/FontListParser$Family;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLegacyFormat(Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "InputStream does not support mark"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "isLegacy":Z
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 118
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 120
    const-string/jumbo v3, "familyset"

    const/4 v4, 0x2

    invoke-interface {v1, v4, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "version"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "version":Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 125
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 127
    return v0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "configFilename"    # Ljava/io/File;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "in":Ljava/io/FileInputStream;
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v0, "in":Ljava/io/FileInputStream;
    invoke-static {v0, p1}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 93
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    instance-of v3, p0, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_1

    .line 94
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object v1, v2

    .line 99
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 100
    invoke-static {v1}, Landroid/graphics/FontListParser;->isLegacyFormat(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-static {v1, p1}, Landroid/graphics/FontListParser;->parseLegacyFormat(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 106
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 101
    :cond_0
    return-object v3

    .line 96
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :cond_1
    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v1, v0

    .local v1, "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v1, p1}, Landroid/graphics/FontListParser;->parseNormalFormat(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 106
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 103
    :cond_3
    return-object v3

    .line 105
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v3

    .line 106
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 105
    :cond_4
    throw v3
.end method

.method public static parseLegacyFormat(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    invoke-static {p0}, Landroid/graphics/LegacyFontListParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "legacyFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    new-instance v0, Landroid/graphics/FontListConverter;

    invoke-direct {v0, v1, p1}, Landroid/graphics/FontListConverter;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 135
    .local v0, "converter":Landroid/graphics/FontListConverter;
    invoke-virtual {v0}, Landroid/graphics/FontListConverter;->convert()Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 135
    return-object v2

    .line 136
    .end local v0    # "converter":Landroid/graphics/FontListConverter;
    .end local v1    # "legacyFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/LegacyFontListParser$Family;>;"
    :catchall_0
    move-exception v2

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 136
    throw v2
.end method

.method public static parseNormalFormat(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 144
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 145
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 146
    invoke-static {v0, p1}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v1

    return-object v1
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 191
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    .line 192
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 193
    const-string/jumbo v2, "to"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    .line 194
    const-string/jumbo v2, "weight"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 196
    const/16 v2, 0x190

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    .line 200
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 201
    return-object v0

    .line 198
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    goto :goto_0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 151
    new-instance v0, Landroid/graphics/FontListParser$Config;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    .line 152
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    const-string/jumbo v1, "familyset"

    const/4 v2, 0x0

    invoke-interface {p0, v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 154
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 155
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "family"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-static {p0, p1}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Family;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alias"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 163
    :cond_3
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/FontListParser$Family;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 168
    const-string/jumbo v10, "name"

    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v10, "lang"

    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "lang":Ljava/lang/String;
    const-string/jumbo v10, "variant"

    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "variant":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    .line 173
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 174
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v10, "font"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 176
    const-string/jumbo v10, "weight"

    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "weightStr":Ljava/lang/String;
    if-nez v9, :cond_1

    const/16 v8, 0x190

    .line 178
    .local v8, "weight":I
    :goto_1
    const-string/jumbo v10, "italic"

    const-string/jumbo v11, "style"

    invoke-interface {p0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 179
    .local v3, "isItalic":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "filename":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-char v11, Ljava/io/File;->separatorChar:C

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "fullFilename":Ljava/lang/String;
    new-instance v10, Landroid/graphics/FontListParser$Font;

    invoke-direct {v10, v2, v8, v3}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    .end local v0    # "filename":Ljava/lang/String;
    .end local v2    # "fullFilename":Ljava/lang/String;
    .end local v3    # "isItalic":Z
    .end local v8    # "weight":I
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "weight":I
    goto :goto_1

    .line 183
    .end local v8    # "weight":I
    .end local v9    # "weightStr":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 186
    .end local v6    # "tag":Ljava/lang/String;
    :cond_3
    new-instance v10, Landroid/graphics/FontListParser$Family;

    invoke-direct {v10, v5, v1, v4, v7}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 207
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 213
    goto :goto_0

    .line 204
    :cond_0
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
