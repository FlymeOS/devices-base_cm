.class public Lcom/android/server/wifi/WifiParser;
.super Ljava/lang/Object;
.source "WifiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiParser$IE;
    }
.end annotation


# static fields
.field private static final IEEE_RSN_IE:I = 0x30

.field private static final VENDOR_SPECIFIC_IE:I = 0xdd

.field private static final WPA_IE_VENDOR_TYPE:I = 0x50f201


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 18
    .param p0, "full_IE"    # [Lcom/android/server/wifi/WifiParser$IE;
    .param p1, "ieee_cap"    # Ljava/util/BitSet;

    .prologue
    .line 68
    const/4 v9, 0x0

    .line 69
    .local v9, "privacy":Z
    const/4 v4, 0x0

    .line 70
    .local v4, "error":Z
    if-nez p1, :cond_0

    .line 71
    const/4 v14, 0x0

    return-object v14

    .line 73
    :cond_0
    if-nez p0, :cond_1

    .line 74
    const/4 v14, 0x0

    return-object v14

    .line 76
    :cond_1
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    .line 78
    .local v9, "privacy":Z
    const-string/jumbo v3, ""

    .line 79
    .local v3, "capabilities":Ljava/lang/String;
    const/4 v10, 0x0

    .line 82
    .local v10, "rsne_found":Z
    const/4 v14, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move v15, v14

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v7, p0, v15

    .line 83
    .local v7, "ie":Lcom/android/server/wifi/WifiParser$IE;
    const-string/jumbo v11, ""

    .line 84
    .local v11, "security":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/wifi/WifiParser$IE;->id:I

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ne v14, v0, :cond_13

    .line 85
    const/4 v10, 0x1

    .line 88
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 90
    .local v2, "buf":Ljava/nio/ByteBuffer;
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    array-length v12, v14

    .line 91
    .local v12, "total_len":I
    const/4 v8, 0x2

    .line 94
    .local v8, "offset":I
    add-int/lit8 v14, v12, -0x2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 96
    const-string/jumbo v11, ""

    .line 97
    const/4 v4, 0x1

    .line 286
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .end local v8    # "offset":I
    .end local v11    # "security":Ljava/lang/String;
    .end local v12    # "total_len":I
    :cond_2
    :goto_1
    if-nez v10, :cond_3

    if-eqz v9, :cond_3

    .line 288
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "[WEP]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    :cond_3
    if-eqz v4, :cond_22

    .line 292
    const/4 v14, 0x0

    return-object v14

    .line 100
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .restart local v8    # "offset":I
    .restart local v11    # "security":Ljava/lang/String;
    .restart local v12    # "total_len":I
    :cond_4
    const/4 v13, 0x0

    .line 101
    .local v13, "val":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    const/16 v17, 0x100

    move/from16 v0, v17

    if-eq v0, v14, :cond_5

    .line 103
    const-string/jumbo v11, ""

    .line 104
    const/4 v4, 0x1

    .line 105
    goto :goto_1

    .line 107
    :cond_5
    const/4 v8, 0x4

    .line 111
    add-int/lit8 v14, v12, -0x4

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 112
    const-string/jumbo v11, ""

    .line 113
    const/4 v4, 0x1

    .line 114
    goto :goto_1

    .line 116
    :cond_6
    add-int/lit8 v8, v8, 0x4

    .line 118
    const-string/jumbo v11, "[WPA2"

    .line 121
    add-int/lit8 v14, v12, -0x8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_7

    .line 122
    const-string/jumbo v11, ""

    .line 123
    const/4 v4, 0x1

    .line 124
    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    .line 127
    add-int/lit8 v14, v12, -0x8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 128
    const-string/jumbo v11, ""

    .line 129
    const/4 v4, 0x1

    .line 130
    goto :goto_1

    .line 132
    :cond_8
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v8, v14, 0x8

    .line 135
    sub-int v14, v12, v8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_9

    .line 136
    const-string/jumbo v11, ""

    .line 137
    const/4 v4, 0x1

    .line 138
    goto :goto_1

    .line 140
    :cond_9
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    .line 141
    sub-int v14, v12, v8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_a

    .line 142
    const-string/jumbo v11, ""

    .line 143
    const/4 v4, 0x1

    .line 144
    goto/16 :goto_1

    .line 146
    :cond_a
    add-int/lit8 v8, v8, 0x2

    .line 147
    if-nez v13, :cond_b

    .line 148
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, "-EAP"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 150
    :cond_b
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v13, :cond_12

    .line 151
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 152
    .local v1, "akm":I
    const/4 v5, 0x0

    .line 153
    .local v5, "found":Z
    sparse-switch v1, :sswitch_data_0

    .line 179
    :goto_3
    add-int/lit8 v8, v8, 0x4

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 155
    :sswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_c

    const-string/jumbo v14, "+"

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 156
    const/4 v5, 0x1

    .line 157
    goto :goto_3

    .line 155
    :cond_c
    const-string/jumbo v14, "-EAP"

    goto :goto_4

    .line 159
    :sswitch_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_d

    const-string/jumbo v14, "+"

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 160
    const/4 v5, 0x1

    .line 161
    goto :goto_3

    .line 159
    :cond_d
    const-string/jumbo v14, "-PSK"

    goto :goto_5

    .line 163
    :sswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_e

    const-string/jumbo v14, "+"

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 164
    const/4 v5, 0x1

    .line 165
    goto :goto_3

    .line 163
    :cond_e
    const-string/jumbo v14, "-FT/EAP"

    goto :goto_6

    .line 167
    :sswitch_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_f

    const-string/jumbo v14, "+"

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 168
    const/4 v5, 0x1

    .line 169
    goto :goto_3

    .line 167
    :cond_f
    const-string/jumbo v14, "-FT/PSK"

    goto :goto_7

    .line 171
    :sswitch_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_10

    const-string/jumbo v14, "+"

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 172
    const/4 v5, 0x1

    .line 173
    goto/16 :goto_3

    .line 171
    :cond_10
    const-string/jumbo v14, "-PSK-SHA256"

    goto :goto_8

    .line 175
    :sswitch_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_11

    const-string/jumbo v14, "+"

    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 176
    const/4 v5, 0x1

    .line 177
    goto/16 :goto_3

    .line 175
    :cond_11
    const-string/jumbo v14, "-EAP-SHA256"

    goto :goto_9

    .line 182
    .end local v1    # "akm":I
    .end local v5    # "found":Z
    :cond_12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 183
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    .end local v8    # "offset":I
    .end local v12    # "total_len":I
    .end local v13    # "val":I
    :cond_13
    iget v14, v7, Lcom/android/server/wifi/WifiParser$IE;->id:I

    const/16 v17, 0xdd

    move/from16 v0, v17

    if-ne v14, v0, :cond_15

    .line 188
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    array-length v12, v14

    .line 189
    .restart local v12    # "total_len":I
    const/4 v8, 0x2

    .line 192
    .restart local v8    # "offset":I
    add-int/lit8 v14, v12, -0x2

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v14, v0, :cond_14

    .line 194
    const-string/jumbo v11, ""

    .line 195
    const/4 v4, 0x1

    .line 196
    goto/16 :goto_1

    .line 199
    :cond_14
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 201
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    const v17, 0x1f25000

    move/from16 v0, v17

    if-eq v14, v0, :cond_16

    .line 203
    const-string/jumbo v11, ""

    .line 82
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "offset":I
    .end local v12    # "total_len":I
    :cond_15
    :goto_a
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_0

    .line 207
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v8    # "offset":I
    .restart local v12    # "total_len":I
    :cond_16
    const-string/jumbo v11, "[WPA"

    .line 210
    add-int/lit8 v14, v12, -0x2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_17

    .line 212
    const-string/jumbo v11, ""

    .line 213
    const/4 v4, 0x1

    .line 214
    goto/16 :goto_1

    .line 216
    :cond_17
    const/4 v13, 0x0

    .line 217
    .restart local v13    # "val":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    const/16 v17, 0x100

    move/from16 v0, v17

    if-eq v0, v14, :cond_18

    .line 219
    const-string/jumbo v11, ""

    .line 220
    const/4 v4, 0x1

    .line 221
    goto/16 :goto_1

    .line 223
    :cond_18
    const/4 v8, 0x4

    .line 227
    add-int/lit8 v14, v12, -0x4

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v14, v0, :cond_19

    .line 228
    const-string/jumbo v11, ""

    .line 229
    const/4 v4, 0x1

    .line 230
    goto/16 :goto_1

    .line 232
    :cond_19
    add-int/lit8 v8, v8, 0x4

    .line 236
    add-int/lit8 v14, v12, -0x8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1a

    .line 237
    const-string/jumbo v11, ""

    .line 238
    const/4 v4, 0x1

    .line 239
    goto/16 :goto_1

    .line 241
    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    .line 242
    add-int/lit8 v14, v12, -0x8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1b

    .line 243
    const-string/jumbo v11, ""

    .line 244
    const/4 v4, 0x1

    .line 245
    goto/16 :goto_1

    .line 247
    :cond_1b
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v8, v14, 0x8

    .line 250
    sub-int v14, v12, v8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1c

    .line 251
    const-string/jumbo v11, ""

    .line 252
    const/4 v4, 0x1

    .line 253
    goto/16 :goto_1

    .line 255
    :cond_1c
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    .line 256
    sub-int v14, v12, v8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1d

    .line 257
    const-string/jumbo v11, ""

    .line 258
    const/4 v4, 0x1

    .line 259
    goto/16 :goto_1

    .line 261
    :cond_1d
    add-int/lit8 v8, v8, 0x2

    .line 262
    if-nez v13, :cond_1e

    .line 263
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, "-EAP"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 265
    :cond_1e
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v13, :cond_21

    .line 266
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 267
    .restart local v1    # "akm":I
    const/4 v5, 0x0

    .line 268
    .restart local v5    # "found":Z
    sparse-switch v1, :sswitch_data_1

    .line 279
    :goto_c
    add-int/lit8 v8, v8, 0x4

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 270
    :sswitch_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_1f

    const-string/jumbo v14, "+"

    :goto_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 271
    const/4 v5, 0x1

    .line 272
    goto :goto_c

    .line 270
    :cond_1f
    const-string/jumbo v14, "-EAP"

    goto :goto_d

    .line 274
    :sswitch_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_20

    const-string/jumbo v14, "+"

    :goto_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 275
    const/4 v5, 0x1

    .line 276
    goto :goto_c

    .line 274
    :cond_20
    const-string/jumbo v14, "-PSK"

    goto :goto_e

    .line 282
    .end local v1    # "akm":I
    .end local v5    # "found":Z
    :cond_21
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 294
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    .end local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .end local v8    # "offset":I
    .end local v11    # "security":Ljava/lang/String;
    .end local v12    # "total_len":I
    .end local v13    # "val":I
    :cond_22
    return-object v3

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x1ac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x3ac0f00 -> :sswitch_2
        0x4ac0f00 -> :sswitch_3
        0x5ac0f00 -> :sswitch_5
        0x6ac0f00 -> :sswitch_4
    .end sparse-switch

    .line 268
    :sswitch_data_1
    .sparse-switch
        0x1f25000 -> :sswitch_6
        0x2f25000 -> :sswitch_7
    .end sparse-switch
.end method
