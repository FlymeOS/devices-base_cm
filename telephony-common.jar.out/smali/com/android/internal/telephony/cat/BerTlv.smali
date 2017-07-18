.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mLengthValid:Z

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;Z)V
    .locals 1
    .param p1, "tag"    # I
    .param p3, "lengthValid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 41
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 38
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .locals 19
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v0, p0

    array-length v6, v0

    .line 81
    .local v6, "endIndex":I
    const/4 v11, 0x0

    .line 82
    .local v11, "length":I
    const/4 v7, 0x1

    .line 79
    .local v7, "isLengthValid":Z
    const/4 v15, 0x0

    .line 86
    const/4 v2, 0x1

    .local v2, "curIndex":I
    :try_start_0
    aget-byte v15, p0, v15
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v12, v15, 0xff

    .line 87
    .local v12, "tag":I
    const/16 v15, 0xd0

    if-ne v12, v15, :cond_4

    .line 89
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "curIndex":I
    .local v3, "curIndex":I
    :try_start_1
    aget-byte v15, p0, v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_3

    and-int/lit16 v13, v15, 0xff

    .line 90
    .local v13, "temp":I
    const/16 v15, 0x80

    if-ge v13, v15, :cond_1

    .line 91
    move v11, v13

    move v2, v3

    .line 124
    .end local v3    # "curIndex":I
    .end local v13    # "temp":I
    .restart local v2    # "curIndex":I
    :cond_0
    :goto_0
    sub-int v15, v6, v2

    if-ge v15, v11, :cond_5

    .line 125
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 126
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Command had extra data endIndex="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " curIndex="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 127
    const-string/jumbo v18, " length="

    .line 126
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 125
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v15

    .line 92
    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    .restart local v13    # "temp":I
    :cond_1
    const/16 v15, 0x81

    if-ne v13, v15, :cond_3

    .line 93
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    :try_start_2
    aget-byte v15, p0, v3

    and-int/lit16 v13, v15, 0xff

    .line 94
    const/16 v15, 0x80

    if-ge v13, v15, :cond_2

    .line 95
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    .line 96
    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 97
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "length < 0x80 length="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 98
    const-string/jumbo v18, " curIndex="

    .line 97
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 98
    const-string/jumbo v18, " endIndex="

    .line 97
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 95
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .end local v12    # "tag":I
    .end local v13    # "temp":I
    :catch_0
    move-exception v5

    .line 116
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    .line 117
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IndexOutOfBoundsException  curIndex="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 118
    const-string/jumbo v18, " endIndex="

    .line 117
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 116
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v15

    .line 101
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "tag":I
    .restart local v13    # "temp":I
    :cond_2
    move v11, v13

    goto/16 :goto_0

    .line 103
    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    :cond_3
    :try_start_3
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    .line 104
    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 105
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Expected first byte to be length or a length tag and < 0x81 byte= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 106
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    .line 105
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 106
    const-string/jumbo v18, " curIndex="

    .line 105
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 107
    const-string/jumbo v18, " endIndex="

    .line 105
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 103
    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    .line 115
    .end local v13    # "temp":I
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v3

    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    goto :goto_1

    .line 110
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :try_start_4
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v15

    and-int/lit16 v0, v12, -0x81

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 119
    .end local v12    # "tag":I
    :catch_2
    move-exception v4

    .line 120
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_2
    new-instance v15, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->explanation()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v15

    .line 130
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .restart local v12    # "tag":I
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v15, 0xd0

    if-ne v12, v15, :cond_9

    .line 134
    const/4 v14, 0x0

    .line 135
    .local v14, "totalLength":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "item$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 136
    .local v8, "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v10

    .line 137
    .local v10, "itemLength":I
    const/16 v15, 0x80

    if-lt v10, v15, :cond_6

    const/16 v15, 0xff

    if-gt v10, v15, :cond_6

    .line 138
    add-int/lit8 v15, v10, 0x3

    add-int/2addr v14, v15

    .line 137
    goto :goto_3

    .line 139
    :cond_6
    if-ltz v10, :cond_7

    const/16 v15, 0x80

    if-ge v10, v15, :cond_7

    .line 140
    add-int/lit8 v15, v10, 0x2

    add-int/2addr v14, v15

    .line 139
    goto :goto_3

    .line 142
    :cond_7
    const/4 v7, 0x0

    .line 154
    .end local v8    # "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v10    # "itemLength":I
    :cond_8
    if-eq v11, v14, :cond_9

    .line 155
    const/4 v7, 0x0

    .line 159
    .end local v9    # "item$iterator":Ljava/util/Iterator;
    .end local v14    # "totalLength":I
    :cond_9
    new-instance v15, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v15, v12, v1, v7}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;Z)V

    return-object v15

    .line 119
    .end local v1    # "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    :catch_3
    move-exception v4

    .restart local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    move v2, v3

    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    goto :goto_2
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return v0
.end method

.method public isLengthValid()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return v0
.end method
