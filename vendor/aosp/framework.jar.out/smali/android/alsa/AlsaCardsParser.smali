.class public Landroid/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static tokenizer_:Landroid/alsa/LineTokenizer;


# instance fields
.field private cardRecords_:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Landroid/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    .line 115
    return-void
.end method

.method static synthetic access$000()Landroid/alsa/LineTokenizer;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;

    return-object v0
.end method


# virtual methods
.method public Log()V
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    .line 110
    .local v1, "numCardRecs":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    const-string v2, "AlsaCardsParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/alsa/AlsaCardsParser;->getCardRecordAt(I)Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->textFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public getCardRecordAt(I)Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 101
    iget-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    return-object v0
.end method

.method public getNumCardRecords()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public scan()V
    .locals 8

    .prologue
    .line 79
    iget-object v7, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 80
    const-string v3, "/proc/asound/cards"

    .line 81
    .local v3, "cardsFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v7, "/proc/asound/cards"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "cardsFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 84
    .local v6, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 86
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 87
    new-instance v1, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v1, p0}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Landroid/alsa/AlsaCardsParser;)V

    .line 88
    .local v1, "cardRecord":Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    .line 89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    .line 90
    iget-object v7, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "cardRecord":Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 98
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 92
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 95
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v4

    .line 96
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
