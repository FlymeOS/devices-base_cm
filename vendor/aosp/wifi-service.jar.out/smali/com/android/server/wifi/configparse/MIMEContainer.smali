.class public Lcom/android/server/wifi/configparse/MIMEContainer;
.super Ljava/lang/Object;
.source "MIMEContainer.java"


# static fields
.field private static final Boundary:Ljava/lang/String; = "boundary="

.field private static final CharsetTag:Ljava/lang/String; = "charset="

.field private static final Encoding:Ljava/lang/String; = "Content-Transfer-Encoding"

.field private static final Type:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mBase64:Z

.field private final mCharset:Ljava/nio/charset/Charset;

.field private final mContentType:Ljava/lang/String;

.field private final mLast:Z

.field private final mMimeContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/configparse/MIMEContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMixed:Z

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V
    .locals 24
    .param p1, "in"    # Ljava/io/LineNumberReader;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/configparse/MIMEContainer;->parseHeader(Ljava/io/LineNumberReader;)Ljava/util/Map;

    move-result-object v10

    .line 46
    .local v10, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v19, "Content-Type"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 47
    .local v18, "type":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 48
    :cond_0
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Missing Content-Type @ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 51
    :cond_1
    const/4 v13, 0x0

    .line 52
    .local v13, "multiPart":Z
    const/4 v12, 0x0

    .line 53
    .local v12, "mixed":Z
    const/4 v15, 0x0

    .line 54
    .local v15, "subBoundary":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 56
    .local v6, "charset":Ljava/nio/charset/Charset;
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "multipart/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 59
    const/4 v13, 0x1

    .line 61
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v15    # "subBoundary":Ljava/lang/String;
    .local v4, "attribute$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, "attribute":Ljava/lang/String;
    const-string/jumbo v19, "boundary="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 63
    const-string/jumbo v19, "boundary="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/Utils;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "subBoundary":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v15    # "subBoundary":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "/mixed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 68
    const/4 v12, 0x1

    .line 79
    .end local v4    # "attribute$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    .line 80
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mCharset:Ljava/nio/charset/Charset;

    .line 82
    if-eqz v13, :cond_c

    if-eqz v15, :cond_c

    .line 84
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "line":Ljava/lang/String;
    if-nez v11, :cond_8

    .line 86
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unexpected EOF before first boundary @ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v21

    .line 86
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 71
    .end local v11    # "line":Ljava/lang/String;
    .local v15, "subBoundary":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "text/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 72
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "attribute$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .restart local v3    # "attribute":Ljava/lang/String;
    const-string/jumbo v19, "charset="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 74
    const-string/jumbo v19, "charset="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    goto :goto_1

    .line 89
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v4    # "attribute$iterator":Ljava/util/Iterator;
    .end local v15    # "subBoundary":Ljava/lang/String;
    .restart local v11    # "line":Ljava/lang/String;
    :cond_8
    const-string/jumbo v19, "--"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 90
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v11, v0, v15, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    .line 89
    if-eqz v19, :cond_5

    .line 95
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    .line 97
    :cond_9
    new-instance v7, Lcom/android/server/wifi/configparse/MIMEContainer;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Lcom/android/server/wifi/configparse/MIMEContainer;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V

    .line 98
    .local v7, "container":Lcom/android/server/wifi/configparse/MIMEContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-direct {v7}, Lcom/android/server/wifi/configparse/MIMEContainer;->isLast()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 108
    .end local v7    # "container":Lcom/android/server/wifi/configparse/MIMEContainer;
    .end local v11    # "line":Ljava/lang/String;
    :goto_2
    const-string/jumbo v19, "Content-Transfer-Encoding"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 109
    .local v8, "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 110
    .local v14, "quoted":Z
    const/4 v5, 0x0

    .line 111
    .local v5, "base64":Z
    if-eqz v8, :cond_b

    .line 112
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "text$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 113
    .local v16, "text":Ljava/lang/String;
    const-string/jumbo v19, "quoted-printable"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 114
    const/4 v14, 0x1

    .line 123
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "text$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/configparse/MIMEContainer;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    .line 126
    const-string/jumbo v21, "%s MIME container, boundary \'%s\', type \'%s\', encoding %s"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 127
    if-eqz v13, :cond_e

    const-string/jumbo v19, "multipart"

    :goto_4
    const/16 v23, 0x0

    aput-object v19, v22, v23

    const/16 v19, 0x1

    aput-object p2, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v23, 0x2

    aput-object v19, v22, v23

    const/16 v19, 0x3

    aput-object v8, v22, v19

    .line 126
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 125
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 130
    .local v9, "eof":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14, v9}, Lcom/android/server/wifi/configparse/MIMEContainer;->getBody(Ljava/io/LineNumberReader;Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/server/wifi/configparse/MIMEContainer;->recode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    .line 131
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mLast:Z

    .line 43
    return-void

    .line 105
    .end local v5    # "base64":Z
    .end local v8    # "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "eof":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v14    # "quoted":Z
    :cond_c
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    goto/16 :goto_2

    .line 117
    .restart local v5    # "base64":Z
    .restart local v8    # "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "quoted":Z
    .restart local v16    # "text":Ljava/lang/String;
    .restart local v17    # "text$iterator":Ljava/util/Iterator;
    :cond_d
    const-string/jumbo v19, "base64"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 118
    const/4 v5, 0x1

    .line 119
    goto :goto_3

    .line 127
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "text$iterator":Ljava/util/Iterator;
    :cond_e
    const-string/jumbo v19, "plain"

    goto :goto_4
.end method

.method private static boundaryCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string/jumbo v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 300
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 302
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 306
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static fromStrictHex(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 335
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 336
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 338
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 339
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 342
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getBody(Ljava/io/LineNumberReader;Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "quoted"    # Z
    .param p3, "eof"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v2, "text":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 260
    if-eqz p1, :cond_0

    .line 261
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected EOF file in body @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 267
    :cond_1
    invoke-static {v1, p1}, Lcom/android/server/wifi/configparse/MIMEContainer;->boundaryCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 268
    .local v0, "end":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p3, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 274
    :cond_2
    if-eqz p2, :cond_4

    .line 275
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/configparse/MIMEContainer;->unescape(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/wifi/configparse/MIMEContainer;->unescape(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private isLast()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mLast:Z

    return v0
.end method

.method private static parseHeader(Ljava/io/LineNumberReader;)Ljava/util/Map;
    .locals 13
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v8, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    .local v5, "value":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 201
    .local v0, "header":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 204
    .end local v0    # "header":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/StringBuilder;
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 206
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing body @ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 208
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 240
    if-eqz v0, :cond_8

    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "values":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v6, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v9, v7

    :goto_1
    if-ge v8, v9, :cond_7

    aget-object v4, v7, v8

    .line 244
    .local v4, "segment":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 212
    .end local v4    # "segment":Ljava/lang/String;
    .end local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v12, :cond_3

    .line 213
    if-nez v5, :cond_2

    .line 214
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal blank prefix in header line \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' @ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 216
    :cond_2
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 220
    :cond_3
    const/16 v9, 0x3a

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 221
    .local v3, "nameEnd":I
    if-gez v3, :cond_4

    .line 222
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad header line: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' @ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 225
    :cond_4
    if-eqz v0, :cond_6

    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 227
    .restart local v7    # "values":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .restart local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v10, v7

    move v9, v8

    :goto_2
    if-ge v9, v10, :cond_5

    aget-object v4, v7, v9

    .line 229
    .restart local v4    # "segment":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 231
    .end local v4    # "segment":Ljava/lang/String;
    :cond_5
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "header":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v5, "value":Ljava/lang/StringBuilder;
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 246
    .end local v0    # "header":Ljava/lang/String;
    .end local v3    # "nameEnd":I
    .end local v5    # "value":Ljava/lang/StringBuilder;
    .restart local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_7
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_8
    return-object v1
.end method

.method private static recode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 289
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    :cond_0
    return-object p0

    .line 293
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 294
    .local v0, "octets":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private toString(Ljava/lang/StringBuilder;I)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nesting"    # I

    .prologue
    const/16 v8, 0xa

    .line 159
    mul-int/lit8 v3, p2, 0x4

    new-array v0, v3, [C

    .line 160
    .local v0, "indent":[C
    const/16 v3, 0x20

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 161
    iget-boolean v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    if-eqz v3, :cond_0

    .line 162
    const-string/jumbo v3, "base64, type "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mimeContainer$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/configparse/MIMEContainer;

    .line 177
    .local v1, "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {v1, p1, v3}, Lcom/android/server/wifi/configparse/MIMEContainer;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 164
    .end local v1    # "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    .end local v2    # "mimeContainer$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "multipart/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mixed"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "other"

    goto :goto_2

    .line 168
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    const-string/jumbo v4, "%s, type %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 170
    iget-object v6, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mCharset:Ljava/nio/charset/Charset;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 171
    iget-object v6, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 169
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0x186a0

    if-ge v3, v4, :cond_4

    .line 182
    const-string/jumbo v3, "\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_3
    return-void

    .line 185
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " chars\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static unescape(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "line"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 312
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 313
    .local v0, "ch":C
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    .line 314
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad codepoint "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in quoted printable @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    :cond_0
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_2

    .line 317
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/configparse/MIMEContainer;->fromStrictHex(C)I

    move-result v1

    .line 318
    .local v1, "h1":I
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/configparse/MIMEContainer;->fromStrictHex(C)I

    move-result v2

    .line 319
    .local v2, "h2":I
    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    .line 320
    shl-int/lit8 v5, v1, 0x4

    or-int/2addr v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v3, v3, 0x2

    .line 311
    .end local v1    # "h1":I
    .end local v2    # "h2":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    .restart local v1    # "h1":I
    .restart local v2    # "h2":I
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    .end local v1    # "h1":I
    .end local v2    # "h2":I
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 331
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/configparse/MIMEContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isBase64()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    return v0
.end method

.method public isMixed()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/configparse/MIMEContainer;->toString(Ljava/lang/StringBuilder;I)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
