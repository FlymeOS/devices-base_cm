.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 12
    .param p0, "data"    # [B

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 121
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 122
    .local v2, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 123
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    if-lez v8, :cond_1

    .line 132
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 133
    .local v1, "id":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 136
    .local v3, "length":I
    sparse-switch v1, :sswitch_data_0

    .line 186
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 187
    .local v4, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v1, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 188
    new-array v8, v3, [B

    iput-object v8, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 189
    iget-object v8, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v8, v10, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 190
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v4    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 139
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 140
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 141
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 142
    iput-boolean v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 143
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v8, v9, :cond_0

    .line 145
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_0

    .line 149
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 150
    .restart local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 151
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 152
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 153
    iput-boolean v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 154
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v8, v9, :cond_0

    .line 156
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_0

    .line 160
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 161
    .local v5, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 162
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 163
    iput-boolean v11, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 164
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 167
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_3
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 168
    .restart local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 169
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 170
    iput-boolean v10, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 171
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 174
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_0

    .line 177
    :sswitch_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_0

    .line 180
    :sswitch_6
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    .line 181
    .local v7, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    .line 182
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    .line 183
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 193
    .end local v1    # "id":I
    .end local v3    # "length":I
    .end local v7    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_1
    return-object v6

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_1
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
    .end sparse-switch
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 11
    .param p0, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 202
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v6, :cond_0

    .line 208
    const/4 v6, 0x0

    .line 265
    :goto_0
    return-object v6

    .line 211
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x8c

    invoke-direct {v3, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 213
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 214
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    if-eqz v0, :cond_1

    .line 215
    iget-boolean v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v6, :cond_5

    .line 216
    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 218
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 225
    :goto_1
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 229
    .local v4, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v4, :cond_2

    .line 230
    iget-boolean v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v6, :cond_6

    .line 231
    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 232
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 233
    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 244
    :cond_2
    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v6, :cond_3

    .line 245
    const/16 v6, 0x24

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v6, :cond_4

    .line 250
    const/16 v6, 0x25

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 255
    .local v5, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 256
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 257
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 220
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v5    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 221
    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 223
    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 236
    .restart local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_6
    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 237
    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 241
    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 260
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 261
    .local v2, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 262
    iget-object v6, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 263
    iget-object v6, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v7, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v7, v7

    invoke-virtual {v3, v6, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 265
    .end local v2    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "UserDataHeader "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v4, "{ ConcatRef "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v4, :cond_2

    .line 274
    const-string v4, "unset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :goto_0
    const-string v4, ", PortAddrs "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v4, :cond_3

    .line 284
    const-string v4, "unset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v4, :cond_0

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", languageShiftTable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v4, :cond_1

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", languageTable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 298
    .local v3, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const-string v4, ", SpecialSmsMsg "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ msgIndType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 276
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isEightBits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 286
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ destPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", origPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", areEightBits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 303
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 304
    .local v2, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string v4, ", MiscElt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 310
    .end local v2    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_5
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
