.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final DEFAULT_FRAMERATE:I = 0x1e

.field private static final DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final DEFAULT_TICKRATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private mCurrentRunId:J

.field private final mListener:Landroid/media/TtmlNodeListener;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/media/TtmlNodeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/TtmlNodeListener;

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    .line 362
    return-void
.end method

.method private extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 390
    const-string/jumbo v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string/jumbo v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string/jumbo v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    return-void
.end method

.method private isEndOfDoc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 502
    iget-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 506
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const-string/jumbo v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 507
    const-string/jumbo v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 508
    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 508
    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 509
    const-string/jumbo v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 509
    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 510
    const-string/jumbo v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 510
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 511
    const-string/jumbo v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 511
    const-string/jumbo v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 512
    const-string/jumbo v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 512
    const-string/jumbo v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 513
    const-string/jumbo v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    if-eqz v0, :cond_1

    .line 514
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 516
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private loadParser(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 383
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 384
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    iput-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 385
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "in":Ljava/io/StringReader;
    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 381
    return-void
.end method

.method private parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .locals 20
    .param p1, "parent"    # Landroid/media/TtmlNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 449
    .local v15, "eventType":I
    const/4 v3, 0x2

    if-eq v15, v3, :cond_0

    .line 450
    const/4 v3, 0x0

    return-object v3

    .line 452
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v14, "attrStr":Ljava/lang/StringBuilder;
    const-wide/16 v6, 0x0

    .line 454
    .local v6, "start":J
    const-wide v8, 0x7fffffffffffffffL

    .line 455
    .local v8, "end":J
    const-wide/16 v16, 0x0

    .line 456
    .local v16, "dur":J
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_4

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 458
    .local v13, "attr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    .line 460
    .local v19, "value":Ljava/lang/String;
    const-string/jumbo v3, "^.*:"

    const-string/jumbo v4, ""

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 461
    const-string/jumbo v3, "begin"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    const/16 v3, 0x1e

    .line 463
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 462
    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v6

    .line 456
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 464
    :cond_1
    const-string/jumbo v3, "end"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 465
    const/16 v3, 0x1e

    const/4 v4, 0x1

    .line 466
    const/4 v5, 0x1

    .line 465
    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v8

    goto :goto_1

    .line 467
    :cond_2
    const-string/jumbo v3, "dur"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    const/16 v3, 0x1e

    const/4 v4, 0x1

    .line 469
    const/4 v5, 0x1

    .line 468
    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v16

    goto :goto_1

    .line 471
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1, v14}, Landroid/media/TtmlParser;->extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V

    goto :goto_1

    .line 474
    .end local v13    # "attr":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 475
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v6, v4

    .line 476
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-eqz v3, :cond_5

    .line 477
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v8, v4

    .line 480
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_7

    .line 481
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-eqz v3, :cond_6

    .line 482
    const-string/jumbo v3, "TtmlParser"

    const-string/jumbo v4, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_6
    add-long v8, v6, v16

    .line 487
    :cond_7
    if-eqz p1, :cond_8

    .line 490
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-nez v3, :cond_8

    .line 491
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v3, v4, v10

    if-eqz v3, :cond_8

    .line 492
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v3, v8, v4

    if-lez v3, :cond_8

    .line 493
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    .line 496
    :cond_8
    new-instance v2, Landroid/media/TtmlNode;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 496
    const/4 v5, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    .line 498
    .local v2, "node":Landroid/media/TtmlNode;
    return-object v2
.end method

.method private parseTtml()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 399
    .local v17, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/media/TtmlNode;>;"
    const/4 v14, 0x0

    .line 400
    .local v14, "depthInUnsupportedTag":I
    const/4 v13, 0x1

    .line 401
    .local v13, "active":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    move-result v2

    if-nez v2, :cond_8

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 403
    .local v15, "eventType":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlNode;

    .line 404
    .local v10, "parent":Landroid/media/TtmlNode;
    if-eqz v13, :cond_6

    .line 405
    const/4 v2, 0x2

    if-ne v15, v2, :cond_2

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    const-string/jumbo v2, "TtmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    add-int/lit8 v14, v14, 0x1

    .line 409
    const/4 v13, 0x0

    .line 443
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 411
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    move-result-object v16

    .line 412
    .local v16, "node":Landroid/media/TtmlNode;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 413
    if-eqz v10, :cond_0

    .line 414
    iget-object v2, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    .end local v16    # "node":Landroid/media/TtmlNode;
    :cond_2
    const/4 v2, 0x4

    if-ne v15, v2, :cond_3

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/TtmlUtils;->applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    iget-object v0, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v2, Landroid/media/TtmlNode;

    .line 421
    const-string/jumbo v3, "#pcdata"

    const-string/jumbo v4, ""

    const-wide/16 v6, 0x0

    .line 422
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 421
    const-wide v8, 0x7fffffffffffffffL

    .line 420
    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 425
    .end local v5    # "text":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x3

    if-ne v15, v2, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    .line 431
    :cond_4
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 428
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    goto :goto_2

    .line 434
    :cond_6
    const/4 v2, 0x2

    if-ne v15, v2, :cond_7

    .line 435
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 436
    :cond_7
    const/4 v2, 0x3

    if-ne v15, v2, :cond_0

    .line 437
    add-int/lit8 v14, v14, -0x1

    .line 438
    if-nez v14, :cond_0

    .line 439
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 397
    .end local v10    # "parent":Landroid/media/TtmlNode;
    .end local v15    # "eventType":I
    :cond_8
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;J)V
    .locals 2
    .param p1, "ttmlText"    # Ljava/lang/String;
    .param p2, "runId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 376
    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 377
    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    .line 374
    return-void
.end method
