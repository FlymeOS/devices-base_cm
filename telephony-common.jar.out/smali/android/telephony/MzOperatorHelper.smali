.class public Landroid/telephony/MzOperatorHelper;
.super Ljava/lang/Object;
.source "MzOperatorHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OperatorHelper"

.field private static final TCCM_Operator:Ljava/lang/String; = "TCCM"

.field private static mOpHelper:Landroid/telephony/MzOperatorHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Landroid/telephony/MzOperatorHelper;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/telephony/MzOperatorHelper;->mOpHelper:Landroid/telephony/MzOperatorHelper;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/telephony/MzOperatorHelper;

    invoke-direct {v0}, Landroid/telephony/MzOperatorHelper;-><init>()V

    sput-object v0, Landroid/telephony/MzOperatorHelper;->mOpHelper:Landroid/telephony/MzOperatorHelper;

    .line 35
    :cond_0
    sget-object v0, Landroid/telephony/MzOperatorHelper;->mOpHelper:Landroid/telephony/MzOperatorHelper;

    return-object v0
.end method

.method private getOperator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "elemtName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v6

    .line 102
    :cond_1
    const/4 v6, 0x0

    .line 105
    .local v6, "ret":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/flyme/internal/R$xml;->operators:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 108
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v7, "operators"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 109
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 111
    :cond_2
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 112
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 169
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 116
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "numeric"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 118
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 119
    .local v4, "numericDepth":I
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 120
    :goto_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_2

    .line 121
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 127
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "TCCM"

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v5, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 134
    :cond_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 135
    .local v2, "langDepth":I
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 136
    :goto_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_2

    .line 137
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 139
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 143
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 144
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 148
    :cond_5
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 149
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 164
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "langDepth":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "numericDepth":I
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v7, "OperatorHelper"

    const-string v8, "Got exception while getting operator."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 155
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "numeric":Ljava/lang/String;
    .restart local v4    # "numericDepth":I
    :cond_6
    :try_start_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 166
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "numericDepth":I
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v7, "OperatorHelper"

    const-string v8, "Got exception while getting operator."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "numeric":Ljava/lang/String;
    :cond_7
    :try_start_5
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 169
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    throw v7
.end method


# virtual methods
.method public getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "long"

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/MzOperatorHelper;->getOperator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorAlphaShort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "short"

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/MzOperatorHelper;->getOperator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorExtraShort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v1, "xshort"

    invoke-direct {p0, p1, p2, v1}, Landroid/telephony/MzOperatorHelper;->getOperator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "operator":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaShort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method
