.class public Landroid/alsa/LineTokenizer;
.super Ljava/lang/Object;
.source "LineTokenizer.java"


# static fields
.field public static final kTokenNotFound:I = -0x1


# instance fields
.field private mDelimiters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Landroid/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Landroid/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method nextDelimiter(Ljava/lang/String;I)I
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    .local v0, "len":I
    move v1, p2

    .line 48
    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v3, p0, Landroid/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 55
    :cond_0
    if-ge v1, v0, :cond_2

    .end local v1    # "offset":I
    :goto_1
    return v1

    .line 48
    .restart local v1    # "offset":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 55
    goto :goto_1
.end method

.method nextToken(Ljava/lang/String;I)I
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    .local v0, "len":I
    move v1, p2

    .line 35
    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    iget-object v3, p0, Landroid/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 42
    :cond_0
    if-ge v1, v0, :cond_2

    .end local v1    # "offset":I
    :goto_1
    return v1

    .line 35
    .restart local v1    # "offset":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 42
    goto :goto_1
.end method
