.class public Lcom/android/internal/telephony/uicc/UiccTlvData;
.super Ljava/lang/Object;
.source "UiccTlvData.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UiccTlvData"

.field private static final TAG_FILE_DESCRIPTOR:I = 0x82

.field private static final TAG_FILE_IDENTIFIER:I = 0x83

.field private static final TAG_FILE_SIZE:I = 0x80

.field private static final TAG_LIFECYCLE_STATUS:I = 0x8a

.field private static final TAG_PROPRIETARY_INFO:I = 0xa5

.field private static final TAG_SECURITY_ATTR_1:I = 0x8b

.field private static final TAG_SECURITY_ATTR_2:I = 0x8c

.field private static final TAG_SECURITY_ATTR_3:I = 0xab

.field private static final TAG_SHORT_FILE_IDENTIFIER:I = 0x88

.field private static final TAG_TOTAL_FILE_SIZE:I = 0x81

.field private static final TLV_FORMAT_ID:I = 0x62

.field private static final TYPE_2:I = 0x2

.field private static final TYPE_5:I = 0x5


# instance fields
.field mFileSize:I

.field private mFileType:I

.field mIsDataEnough:Z

.field mNumRecords:I

.field mRecordSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    .line 34
    return-void
.end method

.method public static isUiccTlvData([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 45
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x62

    if-ne v1, v0, :cond_0

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    return v2
.end method

.method public static parse([B)Lcom/android/internal/telephony/uicc/UiccTlvData;
    .locals 11
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 53
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccTlvData;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/UiccTlvData;-><init>()V

    .line 55
    .local v4, "parsedData":Lcom/android/internal/telephony/uicc/UiccTlvData;
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 56
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v5

    .line 55
    :cond_1
    aget-byte v5, p0, v6

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x62

    if-ne v6, v5, :cond_0

    .line 61
    const/4 v0, 0x2

    .local v0, "currentLocation":I
    move v1, v0

    .line 64
    .end local v0    # "currentLocation":I
    .local v1, "currentLocation":I
    :goto_0
    :try_start_0
    array-length v5, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v5, :cond_2

    .line 65
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    :try_start_1
    aget-byte v5, p0, v1

    and-int/lit16 v2, v5, 0xff

    .line 67
    .local v2, "currentTag":I
    sparse-switch v2, :sswitch_data_0

    .line 88
    const-string/jumbo v5, "UiccTlvData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown tag 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/uicc/UiccTlvData;->parseSomeTag([BI)I

    move-result v0

    :goto_1
    move v1, v0

    .end local v0    # "currentLocation":I
    .restart local v1    # "currentLocation":I
    goto :goto_0

    .line 69
    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    :sswitch_0
    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/uicc/UiccTlvData;->parseFileDescriptor([BI)I

    move-result v0

    goto :goto_1

    .line 73
    :sswitch_1
    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/uicc/UiccTlvData;->parseFileSize([BI)I

    move-result v0

    goto :goto_1

    .line 84
    :sswitch_2
    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/uicc/UiccTlvData;->parseSomeTag([BI)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    .end local v0    # "currentLocation":I
    .end local v2    # "currentTag":I
    .restart local v1    # "currentLocation":I
    :cond_2
    move v0, v1

    .line 100
    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    :goto_2
    return-object v4

    .line 94
    .end local v0    # "currentLocation":I
    .restart local v1    # "currentLocation":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v0, v1

    .end local v1    # "currentLocation":I
    .restart local v0    # "currentLocation":I
    goto :goto_2

    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_2

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_2
        0x88 -> :sswitch_2
        0x8a -> :sswitch_2
        0x8b -> :sswitch_2
        0x8c -> :sswitch_2
        0xa5 -> :sswitch_2
        0xab -> :sswitch_2
    .end sparse-switch
.end method

.method private parseFileDescriptor([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "currentLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 127
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "currentLocation":I
    .local v0, "currentLocation":I
    aget-byte v3, p1, p2

    and-int/lit16 v2, v3, 0xff

    .line 128
    .local v2, "length":I
    if-ne v2, v5, :cond_0

    .line 130
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 131
    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 130
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    .line 132
    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    .line 134
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    .line 136
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    .line 138
    add-int/lit8 v3, v0, 0x5

    return v3

    .line 139
    :cond_0
    if-ne v2, v4, :cond_1

    .line 141
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 145
    .local v1, "descriptorByte":I
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    .line 147
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    .line 149
    add-int/lit8 v3, v0, 0x2

    return v3

    .line 152
    .end local v1    # "descriptorByte":I
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
.end method

.method private parseFileSize([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "currentLocation"    # I

    .prologue
    .line 104
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "currentLocation":I
    .local v0, "currentLocation":I
    aget-byte v4, p1, p2

    and-int/lit16 v3, v4, 0xff

    .line 106
    .local v3, "length":I
    const/4 v1, 0x0

    .line 107
    .local v1, "fileSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 108
    add-int v4, v0, v2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    .line 113
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    .line 117
    :cond_1
    add-int v4, v0, v3

    return v4
.end method

.method private parseSomeTag([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "currentLocation"    # I

    .prologue
    .line 122
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "currentLocation":I
    .local v0, "currentLocation":I
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .line 123
    .local v1, "length":I
    add-int v2, v0, v1

    return v2
.end method


# virtual methods
.method public isIncomplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 41
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mNumRecords:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileSize:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mRecordSize:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccTlvData;->mFileType:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
