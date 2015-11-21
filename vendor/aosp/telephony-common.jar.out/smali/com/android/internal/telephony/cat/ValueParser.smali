.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 278
    if-eqz p0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 280
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 281
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 282
    .local v1, "length":I
    if-eqz v1, :cond_1

    .line 284
    :try_start_0
    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 307
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_0
    :goto_0
    return-object v6

    .line 286
    .restart local v1    # "length":I
    .restart local v3    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 290
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alpha Id length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_2
    const/4 v2, 0x0

    .line 300
    .local v2, "noAlphaUsrCnf":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 302
    .local v4, "resource":Landroid/content/res/Resources;
    const v7, 0x1120089

    :try_start_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 307
    :goto_1
    if-nez v2, :cond_0

    const-string v6, "Default Message"

    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 43
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 44
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 46
    .local v3, "valueIndex":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 47
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 48
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 49
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 68
    .local v0, "devIds":Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 69
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 71
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    .line 72
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "timeInterval":I
    sget-object v3, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 91
    .local v3, "timeUnit":Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 92
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 95
    .local v4, "valueIndex":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 96
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 100
    new-instance v5, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v5

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 165
    .local v1, "id":Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 166
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 168
    .local v3, "valueIndex":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 169
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object v1

    .line 168
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 114
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 115
    .local v7, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 117
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 118
    add-int/lit8 v6, v3, -0x1

    .line 121
    .local v6, "textLen":I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 122
    .local v1, "id":I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "text":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cat/Item;

    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "id":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "textLen":I
    .restart local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    return-object v2

    .line 125
    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    .restart local v6    # "textLen":I
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 144
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 147
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 152
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 190
    .local v1, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 191
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 192
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 193
    .local v4, "numOfItems":I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 197
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 199
    const/4 v2, 0x0

    .local v2, "index":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 200
    iget-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_1

    .line 197
    .end local v3    # "index":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    move v6, v7

    .line 203
    .end local v7    # "valueIndex":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "valueIndex":I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 205
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "valueIndex":I
    .restart local v3    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_1
    return-object v1

    .line 202
    .end local v3    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 380
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 381
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 382
    .local v2, "length":I
    add-int/lit8 v6, v2, 0x1

    new-array v3, v6, [B

    .line 384
    .local v3, "outputValue":[B
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 386
    add-int/lit8 v6, v5, -0x1

    add-int/2addr v6, v1

    :try_start_0
    aget-byte v6, v4, v6

    aput-byte v6, v3, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "indexoutofboundsexception":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 392
    .end local v0    # "indexoutofboundsexception":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    if-eqz v2, :cond_1

    .line 393
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 395
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 408
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 409
    .local v7, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    .line 413
    .local v4, "pduLength":I
    add-int/lit8 v8, v7, 0x2

    aget-byte v8, v5, v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    .line 414
    add-int/lit8 v8, v7, 0x2

    aget-byte v8, v5, v8

    div-int/lit8 v1, v8, 0x2

    .line 418
    .local v1, "k":I
    :goto_0
    add-int/lit8 v8, v1, 0x6

    if-ne v4, v8, :cond_1

    .line 419
    add-int/lit8 v8, v4, 0x1

    new-array v3, v8, [B

    .line 423
    .local v3, "outputValue":[B
    :goto_1
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 425
    add-int v8, v7, v2

    :try_start_0
    aget-byte v8, v5, v8

    aput-byte v8, v3, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    .end local v1    # "k":I
    .end local v2    # "l":I
    .end local v3    # "outputValue":[B
    :cond_0
    add-int/lit8 v8, v7, 0x2

    aget-byte v8, v5, v8

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v1, v8, 0x2

    .restart local v1    # "k":I
    goto :goto_0

    .line 421
    :cond_1
    new-array v3, v4, [B

    .restart local v3    # "outputValue":[B
    goto :goto_1

    .line 427
    .restart local v2    # "l":I
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 431
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    if-eqz v4, :cond_3

    .line 432
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, "result":Ljava/lang/String;
    return-object v6

    .line 434
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
.end method

.method static retrieveTarget(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/android/internal/telephony/cat/ActivateDescriptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ActivateDescriptor;-><init>()V

    .line 360
    .local v0, "activateDesc":Lcom/android/internal/telephony/cat/ActivateDescriptor;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 361
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 363
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/ActivateDescriptor;->target:I

    .line 364
    iget v4, v0, Lcom/android/internal/telephony/cat/ActivateDescriptor;->target:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v18, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 221
    .local v19, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 222
    .local v21, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 224
    .local v17, "length":I
    if-eqz v17, :cond_5

    .line 226
    div-int/lit8 v16, v17, 0x4

    .line 229
    .local v16, "itemCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 230
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 231
    .local v2, "start":I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 232
    .local v3, "textLength":I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 233
    .local v14, "format":I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 235
    .local v12, "colorValue":I
    and-int/lit8 v11, v14, 0x3

    .line 236
    .local v11, "alignValue":I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v4

    .line 238
    .local v4, "align":Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 239
    .local v20, "sizeValue":I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v5

    .line 240
    .local v5, "size":Lcom/android/internal/telephony/cat/FontSize;
    if-nez v5, :cond_0

    .line 242
    sget-object v5, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 245
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 246
    .local v6, "bold":Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 247
    .local v7, "italic":Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 248
    .local v8, "underlined":Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 250
    .local v9, "strikeThrough":Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v10

    .line 252
    .local v10, "color":Lcom/android/internal/telephony/cat/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cat/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 255
    .local v1, "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 245
    .end local v1    # "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v10    # "color":Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 246
    .restart local v6    # "bold":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 247
    .restart local v7    # "italic":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 248
    .restart local v8    # "underlined":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 260
    .end local v2    # "start":I
    .end local v3    # "textLength":I
    .end local v4    # "align":Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v5    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v11    # "alignValue":I
    .end local v12    # "colorValue":I
    .end local v14    # "format":I
    .end local v20    # "sizeValue":I
    :catch_0
    move-exception v13

    .line 261
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v22

    .line 264
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "i":I
    .end local v16    # "itemCount":I
    :cond_5
    const/16 v18, 0x0

    .end local v18    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 321
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 322
    .local v6, "valueIndex":I
    const/4 v0, 0x0

    .line 323
    .local v0, "codingScheme":B
    const/4 v3, 0x0

    .line 324
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    .line 327
    .local v5, "textLen":I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 349
    .end local v3    # "text":Ljava/lang/String;
    .local v4, "text":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 331
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 335
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 337
    if-nez v0, :cond_1

    .line 338
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 349
    .end local v3    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 341
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 343
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 344
    new-instance v3, Ljava/lang/String;

    .end local v3    # "text":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_1

    .line 346
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 352
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 354
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
.end method

.method static retrieveUSSDString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 448
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 449
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 452
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 453
    const/4 v4, 0x0

    .line 462
    :goto_0
    return-object v4

    .line 457
    :cond_0
    aget-byte v4, v2, v3

    const/16 v5, 0xf

    if-eq v4, v5, :cond_1

    .line 458
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 462
    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v5, v5, 0x8

    :try_start_0
    div-int/lit8 v5, v5, 0x7

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method
