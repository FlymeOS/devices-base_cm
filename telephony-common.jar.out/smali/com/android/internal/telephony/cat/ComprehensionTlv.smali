.class Lcom/android/internal/telephony/cat/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComprehensionTlv"


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "cr"    # Z
    .param p3, "length"    # I
    .param p4, "data"    # [B
    .param p5, "valueIndex"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    .line 54
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    .line 55
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    .line 56
    iput p5, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    .line 57
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    .line 58
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 116
    move v5, p1

    .line 117
    .local v5, "curIndex":I
    array-length v8, p0

    .line 123
    .local v8, "endIndex":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "curIndex":I
    .local v6, "curIndex":I
    :try_start_0
    aget-byte v4, p0, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v9, v4, 0xff

    .line 124
    .local v9, "temp":I
    sparse-switch v9, :sswitch_data_0

    .line 144
    move v1, v9

    .line 145
    .local v1, "tag":I
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_2

    .line 146
    .local v2, "cr":Z
    :goto_0
    and-int/lit16 v1, v1, -0x81

    .line 152
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    :try_start_1
    aget-byte v0, p0, v6

    and-int/lit16 v9, v0, 0xff

    .line 153
    if-ge v9, v11, :cond_3

    .line 154
    move v3, v9

    .line 195
    .local v3, "length":I
    :cond_0
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "tag":I
    .end local v2    # "cr":Z
    .end local v3    # "length":I
    :goto_3
    return-object v0

    .line 128
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    :sswitch_0
    :try_start_2
    const-string v0, "CAT     "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decode: unexpected first tag byte="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", startIndex="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " curIndex="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " endIndex="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    move v5, v6

    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    goto :goto_3

    .line 136
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    :sswitch_1
    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int v1, v4, v10

    .line 138
    .restart local v1    # "tag":I
    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 139
    .restart local v2    # "cr":Z
    :goto_4
    const v0, -0x8001

    and-int/2addr v1, v0

    .line 140
    add-int/lit8 v5, v6, 0x2

    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    move v6, v5

    .line 141
    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    goto :goto_1

    .end local v2    # "cr":Z
    :cond_1
    move v2, v0

    .line 138
    goto :goto_4

    :cond_2
    move v2, v0

    .line 145
    goto :goto_0

    .line 155
    .end local v6    # "curIndex":I
    .restart local v2    # "cr":Z
    .restart local v5    # "curIndex":I
    :cond_3
    const/16 v0, 0x81

    if-ne v9, v0, :cond_4

    .line 156
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "curIndex":I
    .restart local v6    # "curIndex":I
    aget-byte v0, p0, v5

    and-int/lit16 v3, v0, 0xff

    .line 157
    .restart local v3    # "length":I
    if-ge v3, v11, :cond_7

    .line 158
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "length < 0x80 length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " startIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " endIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    .end local v1    # "tag":I
    .end local v2    # "cr":Z
    .end local v3    # "length":I
    .end local v9    # "temp":I
    :catch_0
    move-exception v7

    move v5, v6

    .line 198
    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IndexOutOfBoundsException startIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " endIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0

    .line 164
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "tag":I
    .restart local v2    # "cr":Z
    .restart local v9    # "temp":I
    :cond_4
    const/16 v0, 0x82

    if-ne v9, v0, :cond_5

    .line 165
    :try_start_3
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 167
    .restart local v3    # "length":I
    add-int/lit8 v5, v5, 0x2

    .line 168
    const/16 v0, 0x100

    if-ge v3, v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "two byte length < 0x100 length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " startIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " endIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0

    .line 197
    .end local v3    # "length":I
    :catch_1
    move-exception v7

    goto/16 :goto_5

    .line 175
    :cond_5
    const/16 v0, 0x83

    if-ne v9, v0, :cond_6

    .line 176
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 179
    .restart local v3    # "length":I
    add-int/lit8 v5, v5, 0x3

    .line 180
    const/high16 v0, 0x10000

    if-ge v3, v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "three byte length < 0x10000 length=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " startIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " endIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0

    .line 188
    .end local v3    # "length":I
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad length modifer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " startIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " endIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v5    # "curIndex":I
    .restart local v3    # "length":I
    .restart local v6    # "curIndex":I
    :cond_7
    move v5, v6

    .end local v6    # "curIndex":I
    .restart local v5    # "curIndex":I
    goto/16 :goto_2

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7f -> :sswitch_1
        0x80 -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    array-length v1, p0

    .line 92
    .local v1, "endIndex":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 93
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 94
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget v3, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    iget v4, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    add-int p1, v3, v4

    goto :goto_0

    .line 98
    :cond_0
    const-string v3, "ComprehensionTlv"

    const-string v4, "decodeMany: ctlv is null, stop decoding"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    return v0
.end method

.method public isComprehensionRequired()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    return v0
.end method
