.class public Lcom/android/internal/telephony/meizu/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;


# instance fields
.field private mAsciiTransliterator:Llibcore/icu/Transliterator;

.field private mPinyinTransliterator:Llibcore/icu/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    :try_start_0
    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    .line 73
    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Latin-Ascii"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HanziToPinyin"

    const-string v2, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 175
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/meizu/HanziToPinyin;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/android/internal/telephony/meizu/HanziToPinyin;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;

    invoke-direct {v0}, Lcom/android/internal/telephony/meizu/HanziToPinyin;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->sInstance:Lcom/android/internal/telephony/meizu/HanziToPinyin;

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tokenize(CLcom/android/internal/telephony/meizu/HanziToPinyin$Token;)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "token"    # Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 97
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 98
    iput v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    .line 99
    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/16 v0, 0x250

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1e00

    if-gt v0, p1, :cond_4

    const/16 v0, 0x1eff

    if-ge p1, v0, :cond_4

    .line 105
    :cond_2
    iput v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    :goto_1
    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_4
    const/4 v0, 0x2

    iput v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 113
    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :cond_5
    const/4 v0, 0x3

    iput v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    .line 116
    iget-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v6

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 133
    .local v2, "inputLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 135
    .local v5, "tokenType":I
    new-instance v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    invoke-direct {v4}, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;-><init>()V

    .line 141
    .local v4, "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 145
    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 141
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->tokenize(CLcom/android/internal/telephony/meizu/HanziToPinyin$Token;)V

    .line 149
    iget v7, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 151
    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 153
    :cond_4
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    .end local v4    # "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    invoke-direct {v4}, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;-><init>()V

    .line 161
    .restart local v4    # "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    :goto_3
    iget v5, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    goto :goto_2

    .line 156
    :cond_5
    iget v7, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    if-eq v5, v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 157
    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 159
    :cond_6
    iget-object v7, v4, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 164
    .end local v0    # "character":C
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 165
    invoke-direct {p0, v3, v6, v5}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
