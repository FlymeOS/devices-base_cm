.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final INVALID_VALIDITY_PERIOD:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final VALIDITY_PERIOD_MIN:I = 0x5

.field private static final VDBG:Z


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mMti:I

.field private mProtocolIdentifier:I

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private mVoiceMailCount:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 622
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 6
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 914
    .local v3, "r":Landroid/content/res/Resources;
    const v5, 0x11200a0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 915
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 917
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 918
    move-object v1, p0

    .line 920
    :cond_1
    invoke-static {v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 921
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v4, :cond_3

    .line 922
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 923
    .restart local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/lit8 v2, v5, 0x2

    .line 924
    .local v2, "octets":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 925
    const/16 v5, 0x8c

    if-le v2, v5, :cond_4

    .line 931
    const/16 v0, 0x86

    .line 932
    .local v0, "max_user_data_bytes_with_header":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_2

    .line 934
    const/16 v5, 0x4a4

    if-gt v2, v5, :cond_2

    .line 935
    add-int/lit8 v0, v0, -0x2

    .line 938
    :cond_2
    add-int/lit8 v5, v0, -0x1

    add-int/2addr v5, v2

    div-int/2addr v5, v0

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 940
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v5, v0

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 946
    .end local v0    # "max_user_data_bytes_with_header":I
    :goto_0
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 948
    .end local v2    # "octets":I
    :cond_3
    return-object v4

    .line 943
    .restart local v2    # "octets":I
    :cond_4
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 944
    rsub-int v5, v2, 0x8c

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 173
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 175
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 180
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 181
    const-string v5, "SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 198
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 185
    .restart local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 188
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 192
    .local v3, "size":I
    new-array v2, v3, [B

    .line 193
    .local v2, "pdu":[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 198
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 109
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 110
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 114
    goto :goto_0

    .line 115
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 117
    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 438
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 440
    .local v1, "textPart":[B
    if-eqz p1, :cond_0

    .line 442
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 444
    .local v2, "userData":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 445
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 446
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 451
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 452
    .local v0, "ret":[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 453
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 454
    return-object v0

    .line 449
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_0
    move-object v2, v1

    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method public static getRelativeValidityPeriod(I)I
    .locals 5
    .param p0, "validityPeriod"    # I

    .prologue
    const v3, 0x9b0a0

    .line 233
    const/4 v0, -0x1

    .line 235
    .local v0, "relValidityPeriod":I
    const/4 v2, 0x5

    if-lt p0, v2, :cond_0

    if-le p0, v3, :cond_1

    .line 236
    :cond_0
    const-string v2, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Validity Period"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 249
    .end local v0    # "relValidityPeriod":I
    .local v1, "relValidityPeriod":I
    :goto_0
    return v1

    .line 240
    .end local v1    # "relValidityPeriod":I
    .restart local v0    # "relValidityPeriod":I
    :cond_1
    const/16 v2, 0x2d0

    if-gt p0, v2, :cond_3

    .line 241
    div-int/lit8 v2, p0, 0x5

    add-int/lit8 v0, v2, -0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 249
    .end local v0    # "relValidityPeriod":I
    .restart local v1    # "relValidityPeriod":I
    goto :goto_0

    .line 242
    .end local v1    # "relValidityPeriod":I
    .restart local v0    # "relValidityPeriod":I
    :cond_3
    const/16 v2, 0x5a0

    if-gt p0, v2, :cond_4

    .line 243
    add-int/lit16 v2, p0, -0x2d0

    div-int/lit8 v2, v2, 0x1e

    add-int/lit16 v0, v2, 0x8f

    goto :goto_1

    .line 244
    :cond_4
    const v2, 0xa8c0

    if-gt p0, v2, :cond_5

    .line 245
    div-int/lit16 v2, p0, 0x5a0

    add-int/lit16 v0, v2, 0xa6

    goto :goto_1

    .line 246
    :cond_5
    if-gt p0, v3, :cond_2

    .line 247
    div-int/lit16 v2, p0, 0x2760

    add-int/lit16 v0, v2, 0xc0

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originatorPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .prologue
    const/4 v7, 0x0

    .line 526
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 527
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 528
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 529
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 531
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 532
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 534
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 536
    .local v4, "smsHeaderData":[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 537
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v2, 0x0

    .line 565
    :goto_0
    return-object v2

    .line 542
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 543
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 550
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 559
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 562
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 564
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    .line 505
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "validityPeriod"    # I

    .prologue
    const/4 v5, 0x0

    .line 486
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v5

    move v7, v5

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    const/4 v5, 0x0

    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I

    .prologue
    .line 287
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 17
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .prologue
    .line 312
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 313
    :cond_0
    const/4 v8, 0x0

    .line 426
    :goto_0
    return-object v8

    .line 316
    :cond_1
    if-nez p5, :cond_4

    .line 318
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v10

    .line 319
    .local v10, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v10, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 320
    iget v0, v10, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 321
    iget v0, v10, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 323
    const/4 v14, 0x1

    move/from16 v0, p5

    if-ne v0, v14, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 325
    :cond_2
    if-eqz p4, :cond_6

    .line 326
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    .line 327
    .local v9, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v14, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v14, v0, :cond_3

    iget v14, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v14, v0, :cond_4

    .line 329
    :cond_3
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Updating language table in SMS header: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p6

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p7

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move/from16 v0, p6

    iput v0, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 333
    move/from16 v0, p7

    iput v0, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 334
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 345
    .end local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 347
    .local v8, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v13, 0x0

    .line 348
    .local v13, "validityPeriodFormat":I
    const/4 v7, -0x1

    .line 352
    .local v7, "relativeValidityPeriod":I
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v7

    if-ltz v7, :cond_5

    .line 353
    const/4 v13, 0x2

    .line 356
    :cond_5
    shl-int/lit8 v14, v13, 0x3

    or-int/lit8 v15, v14, 0x1

    if-eqz p4, :cond_7

    const/16 v14, 0x40

    :goto_2
    or-int/2addr v14, v15

    int-to-byte v6, v14

    .line 359
    .local v6, "mtiByte":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v6, v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 366
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x1

    move/from16 v0, p5

    if-ne v0, v14, :cond_8

    .line 367
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 393
    .local v12, "userData":[B
    :goto_3
    const/4 v14, 0x1

    move/from16 v0, p5

    if-ne v0, v14, :cond_b

    .line 394
    const/4 v14, 0x0

    aget-byte v14, v12, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xa0

    if-le v14, v15, :cond_9

    .line 396
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Message too long ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " septets)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 337
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "mtiByte":B
    .end local v7    # "relativeValidityPeriod":I
    .end local v8    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v12    # "userData":[B
    .end local v13    # "validityPeriodFormat":I
    .restart local v10    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 338
    .restart local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 339
    move/from16 v0, p7

    iput v0, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 340
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 356
    .end local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v7    # "relativeValidityPeriod":I
    .restart local v8    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v13    # "validityPeriodFormat":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 371
    .restart local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "mtiByte":B
    :cond_8
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .restart local v12    # "userData":[B
    goto :goto_3

    .line 372
    .end local v12    # "userData":[B
    :catch_0
    move-exception v11

    .line 373
    .local v11, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v14, "SmsMessage"

    const-string v15, "Implausible UnsupportedEncodingException "

    invoke-static {v14, v15, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 376
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 379
    .end local v11    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 383
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v12

    .line 384
    .restart local v12    # "userData":[B
    const/16 p5, 0x3

    goto :goto_3

    .line 385
    .end local v12    # "userData":[B
    :catch_2
    move-exception v11

    .line 386
    .restart local v11    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v14, "SmsMessage"

    const-string v15, "Implausible UnsupportedEncodingException "

    invoke-static {v14, v15, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 407
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v11    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v12    # "userData":[B
    :cond_9
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 419
    :goto_4
    const/4 v14, 0x2

    if-ne v13, v14, :cond_a

    .line 421
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    :cond_a
    const/4 v14, 0x0

    array-length v15, v12

    invoke-virtual {v4, v12, v14, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 425
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    iput-object v14, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 409
    :cond_b
    const/4 v14, 0x0

    aget-byte v14, v12, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x8c

    if-le v14, v15, :cond_c

    .line 411
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Message too long ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bytes)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 416
    :cond_c
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v3, 0x0

    .line 583
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 587
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 588
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 595
    :goto_0
    if-eqz p3, :cond_0

    .line 597
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 600
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 603
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 607
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 611
    .local v1, "daBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 615
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 618
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 619
    return-object v0

    .line 590
    .end local v1    # "daBytes":[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1    # "daBytes":[B
    :cond_2
    move v2, v3

    .line 611
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 208
    .local v0, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "smscLen":I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 153
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 141
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 4
    .param p1, "pdu"    # [B

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1052
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1054
    .local v1, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1056
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1064
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1066
    .local v0, "firstByte":I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 1067
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_0

    .line 1083
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1073
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1085
    :goto_0
    return-void

    .line 1076
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1079
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1138
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1140
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1142
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1149
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1153
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1160
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1164
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1166
    .local v0, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1167
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_1
    move v1, v3

    .line 1138
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1164
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v1, 0x1

    .line 1094
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1097
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1099
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1101
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1102
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1104
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1107
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1109
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1110
    .local v0, "extraParams":I
    move v2, v0

    .line 1111
    .local v2, "moreExtraParams":I
    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 1115
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    .line 1119
    :cond_0
    and-int/lit8 v3, v0, 0x78

    if-nez v3, :cond_3

    .line 1121
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 1122
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1125
    :cond_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2

    .line 1126
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1129
    :cond_2
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    .line 1130
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 1131
    .local v1, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1135
    .end local v0    # "extraParams":I
    .end local v1    # "hasUserDataHeader":Z
    .end local v2    # "moreExtraParams":I
    :cond_3
    return-void

    .line 1130
    .restart local v0    # "extraParams":I
    .restart local v2    # "moreExtraParams":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1176
    and-int/lit16 v4, p2, 0x80

    const/16 v7, 0x80

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1179
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1181
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1183
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v4, :cond_0

    .line 1189
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1193
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1201
    const/4 v2, 0x0

    .line 1202
    .local v2, "validityPeriodLength":I
    shr-int/lit8 v4, p2, 0x3

    and-int/lit8 v1, v4, 0x3

    .line 1203
    .local v1, "validityPeriodFormat":I
    if-nez v1, :cond_2

    .line 1205
    const/4 v2, 0x0

    move v3, v2

    .line 1217
    .end local v2    # "validityPeriodLength":I
    .local v3, "validityPeriodLength":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    if-lez v3, :cond_4

    .line 1219
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .end local v1    # "validityPeriodFormat":I
    .end local v3    # "validityPeriodLength":I
    :cond_1
    move v4, v6

    .line 1176
    goto :goto_0

    .line 1207
    .restart local v1    # "validityPeriodFormat":I
    .restart local v2    # "validityPeriodLength":I
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v1, :cond_3

    .line 1209
    const/4 v2, 0x1

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1213
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_3
    const/4 v2, 0x7

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1222
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_4
    and-int/lit8 v4, p2, 0x40

    const/16 v7, 0x40

    if-ne v4, v7, :cond_5

    move v0, v5

    .line 1224
    .local v0, "hasUserDataHeader":Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1225
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_5
    move v0, v6

    .line 1222
    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .prologue
    .line 1235
    const/4 v3, 0x0

    .line 1236
    .local v3, "hasMessageClass":Z
    const/4 v8, 0x0

    .line 1238
    .local v8, "userDataCompressed":Z
    const/4 v2, 0x0

    .line 1241
    .local v2, "encodingType":I
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_6

    .line 1242
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    .line 1243
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    .line 1245
    :goto_1
    if-eqz v8, :cond_4

    .line 1246
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :goto_2
    const/4 v9, 0x1

    if-ne v2, v9, :cond_12

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p1, p2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1345
    .local v1, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1346
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1356
    if-eqz p2, :cond_18

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_18

    .line 1357
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1358
    .local v5, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v9, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v6, v9, 0xff

    .line 1365
    .local v6, "msgInd":I
    if-eqz v6, :cond_0

    const/16 v9, 0x80

    if-ne v6, v9, :cond_17

    .line 1366
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1367
    const/16 v9, 0x80

    if-ne v6, v9, :cond_13

    .line 1369
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1388
    :cond_1
    :goto_5
    iget v9, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1396
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v9, :cond_16

    .line 1397
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1401
    :goto_6
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Dont store = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Vmail count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1242
    .end local v1    # "count":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v6    # "msgInd":I
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1243
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1249
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_2

    .line 1251
    :pswitch_0
    const/4 v2, 0x1

    .line 1252
    goto/16 :goto_2

    .line 1255
    :pswitch_1
    const/4 v2, 0x3

    .line 1256
    goto/16 :goto_2

    .line 1261
    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1262
    .local v7, "r":Landroid/content/res/Resources;
    const v9, 0x1120099

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1264
    const/4 v2, 0x2

    .line 1265
    goto/16 :goto_2

    .line 1269
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_5
    :pswitch_3
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 1275
    :cond_6
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_8

    .line 1276
    const/4 v3, 0x1

    .line 1277
    const/4 v8, 0x0

    .line 1279
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_7

    .line 1281
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1284
    :cond_7
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 1286
    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-eq v9, v10, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_f

    .line 1295
    :cond_9
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_a

    .line 1296
    const/4 v2, 0x3

    .line 1301
    :goto_7
    const/4 v8, 0x0

    .line 1302
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_b

    const/4 v0, 0x1

    .line 1306
    .local v0, "active":Z
    :goto_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_e

    .line 1307
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1308
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1309
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_c

    const/4 v9, 0x1

    :goto_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1312
    const/4 v9, 0x1

    if-ne v0, v9, :cond_d

    .line 1313
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1318
    :goto_a
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Dont store = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " vmail count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1298
    .end local v0    # "active":Z
    :cond_a
    const/4 v2, 0x1

    goto :goto_7

    .line 1302
    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    .line 1309
    .restart local v0    # "active":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_9

    .line 1315
    :cond_d
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_a

    .line 1323
    :cond_e
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1324
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for fax/email/other: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1327
    .end local v0    # "active":Z
    :cond_f
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xc0

    const/16 v10, 0x80

    if-ne v9, v10, :cond_11

    .line 1330
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v10, 0x84

    if-ne v9, v10, :cond_10

    .line 1332
    const/4 v2, 0x4

    goto/16 :goto_2

    .line 1334
    :cond_10
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1338
    :cond_11
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1343
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1370
    .restart local v1    # "count":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .restart local v6    # "msgInd":I
    :cond_13
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v9, :cond_1

    .line 1378
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_14

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_15

    :cond_14
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_1

    .line 1384
    :cond_15
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto/16 :goto_5

    .line 1399
    :cond_16
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto/16 :goto_6

    .line 1411
    :cond_17
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1417
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v6    # "msgInd":I
    :cond_18
    packed-switch v2, :pswitch_data_1

    .line 1451
    :goto_b
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v9, :cond_19

    .line 1452
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1455
    :cond_19
    if-nez v3, :cond_1d

    .line 1456
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1473
    :goto_c
    return-void

    .line 1419
    :pswitch_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_b

    .line 1425
    :pswitch_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1426
    .restart local v7    # "r":Landroid/content/res/Resources;
    const v9, 0x1120099

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1428
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_b

    .line 1430
    :cond_1a
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_b

    .line 1435
    .end local v7    # "r":Landroid/content/res/Resources;
    :pswitch_6
    if-eqz p2, :cond_1b

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v10, v9

    :goto_d
    if-eqz p2, :cond_1c

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_e
    invoke-virtual {p1, v1, v10, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_b

    :cond_1b
    const/4 v9, 0x0

    move v10, v9

    goto :goto_d

    :cond_1c
    const/4 v9, 0x0

    goto :goto_e

    .line 1441
    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_b

    .line 1445
    :pswitch_8
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_b

    .line 1458
    :cond_1d
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_2

    goto :goto_c

    .line 1460
    :pswitch_9
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_c

    .line 1463
    :pswitch_a
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_c

    .line 1466
    :pswitch_b
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_c

    .line 1469
    :pswitch_c
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_c

    .line 1249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1417
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1458
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getNumOfVoicemails()I
    .locals 2

    .prologue
    .line 1505
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1512
    :goto_0
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0

    .line 1510
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 983
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    .line 987
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 994
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    .line 998
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1005
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v0

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1013
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1018
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 968
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
