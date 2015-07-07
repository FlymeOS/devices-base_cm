.class public Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/alsa/AlsaCardsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaCardRecord"
.end annotation


# instance fields
.field public mCardDescription:Ljava/lang/String;

.field public mCardName:Ljava/lang/String;

.field public mCardNum:I

.field public mField1:Ljava/lang/String;

.field final synthetic this$0:Landroid/alsa/AlsaCardsParser;


# direct methods
.method public constructor <init>(Landroid/alsa/AlsaCardsParser;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->this$0:Landroid/alsa/AlsaCardsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "lineIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "tokenIndex":I
    const/4 v0, 0x0

    .line 46
    .local v0, "delimIndex":I
    if-nez p2, :cond_1

    .line 48
    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    .line 49
    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    .line 52
    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    .line 53
    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    .line 54
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    .line 57
    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    .line 68
    :cond_0
    :goto_0
    return v4

    .line 61
    :cond_1
    if-ne p2, v4, :cond_0

    .line 62
    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    .line 63
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public textFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
