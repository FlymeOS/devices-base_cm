.class public Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXml(Ljava/io/InputStream;)Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 31
    .local v2, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v3, "UTF-8"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 34
    .local v1, "eventType":I
    new-instance v0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;

    invoke-direct {v0}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;-><init>()V

    .line 35
    .local v0, "configInfo":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    .line 36
    packed-switch v1, :pswitch_data_0

    .line 53
    :cond_0
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 39
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IconTransform"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    const-string/jumbo v3, "filter_version"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->setVersion(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_1
    const-string/jumbo v4, "IconPosition"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    invoke-static {v2, v0}, Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;->readIconPosition(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V

    goto :goto_1

    .line 39
    :cond_2
    const-string/jumbo v4, "IconFilters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {v2, v0}, Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;->readIconFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V

    goto :goto_1

    .line 55
    :cond_3
    return-object v0

    .line 36
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static readFilter(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 4
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 93
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 94
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "Filter"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 96
    const-string/jumbo v1, "Param"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 97
    const-string/jumbo v1, "name"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "value"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private static readIconFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V
    .locals 4
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configInfo"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 79
    .local v0, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 80
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string/jumbo v2, "IconFilters"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 82
    const-string/jumbo v2, "Filter"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 83
    new-instance v1, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    invoke-static {p0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;->readFilter(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->addFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    .line 87
    .end local v1    # "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private static readIconPosition(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V
    .locals 5
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configInfo"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 63
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 64
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "IconPosition"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 66
    const-string/jumbo v1, "Point"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 67
    new-instance v1, Landroid/graphics/Point;

    const-string/jumbo v2, "toX"

    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 68
    const-string/jumbo v3, "toY"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 67
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->addPoint(Landroid/graphics/Point;)V

    .line 70
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private static writeFilterParam(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 6
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 159
    const-string/jumbo v3, "Filter"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string/jumbo v3, "name"

    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->getParams()Ljava/util/Map;

    move-result-object v2

    .line 162
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "Param"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string/jumbo v3, "Param"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 168
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v3, "Filter"

    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    return-void
.end method

.method private static writeIconFilter(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "configInfo"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->getFilters()Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 148
    :cond_1
    const-string/jumbo v3, "IconFilters"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .line 150
    .local v0, "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    invoke-static {p0, v0}, Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;->writeFilterParam(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    goto :goto_0

    .line 152
    .end local v0    # "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    :cond_2
    const-string/jumbo v3, "IconFilters"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    return-void
.end method

.method private static writeIconPosition(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V
    .locals 7
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "configInfo"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->getPoints()Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 131
    :cond_1
    const-string/jumbo v3, "IconPosition"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 133
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "point$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 134
    .local v0, "point":Landroid/graphics/Point;
    const-string/jumbo v3, "Point"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string/jumbo v3, "toX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string/jumbo v3, "toY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    const-string/jumbo v3, "Point"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 139
    .end local v0    # "point":Landroid/graphics/Point;
    :cond_3
    const-string/jumbo v3, "IconPosition"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    return-void
.end method

.method public static writeToXml(Ljava/io/OutputStream;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V
    .locals 5
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "configInfo"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 110
    .local v1, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v2, "UTF-8"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    const-string/jumbo v2, "IconTransform"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string/jumbo v2, "filter_version"

    const-string/jumbo v3, "1"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-static {v1, p1}, Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;->writeIconPosition(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V

    .line 115
    invoke-static {v1, p1}, Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;->writeIconFilter(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V

    .line 116
    const-string/jumbo v2, "IconTransform"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 118
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 119
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
