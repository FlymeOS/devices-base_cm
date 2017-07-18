.class public Lcom/android/server/wifi/IMSIParameter;
.super Ljava/lang/Object;
.source "IMSIParameter.java"


# instance fields
.field private final mImsi:Ljava/lang/String;

.field private final mPrefix:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 16
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad IMSI: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    .local v1, "stopChar":C
    const/4 v0, 0x0

    .end local v1    # "stopChar":C
    .local v0, "nonDigit":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 23
    .local v1, "stopChar":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 28
    .end local v1    # "stopChar":C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 29
    iput-object p1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    .line 30
    iput-boolean v3, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    .line 14
    :goto_1
    return-void

    .line 21
    .restart local v1    # "stopChar":C
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "stopChar":C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_5

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_5

    .line 33
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    .line 34
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    goto :goto_1

    .line 37
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad IMSI: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "prefix"    # Z

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 75
    if-ne p0, p1, :cond_0

    .line 76
    const/4 v1, 0x1

    return v1

    .line 78
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/IMSIParameter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 79
    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/android/server/wifi/IMSIParameter;

    .line 83
    .local v0, "that":Lcom/android/server/wifi/IMSIParameter;
    iget-boolean v2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    iget-boolean v3, v0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 89
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int v0, v2, v1

    .line 90
    return v0

    .line 88
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPrefix()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fullIMSI"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matchesMccMnc(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public prefixLength()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    return-object v0
.end method
