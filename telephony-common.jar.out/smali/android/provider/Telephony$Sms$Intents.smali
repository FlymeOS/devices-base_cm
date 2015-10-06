.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final PROTECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.ACTION_PROTECTED_SMS_RECEIVED"

.field public static final RESULT_SMS_BLACKLISTED_LIST:I = 0x7

.field public static final RESULT_SMS_BLACKLISTED_REGEX:I = 0x8

.field public static final RESULT_SMS_BLACKLISTED_UNKNOWN:I = 0x6

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_FILTER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_FILTER"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SEND_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SEND"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1239
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, [Ljava/lang/Object;

    .line 1240
    .local v2, "messages":[Ljava/lang/Object;
    const-string v7, "format"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "format":Ljava/lang/String;
    const-string v7, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1244
    .local v6, "subId":I
    const-string v7, "Telephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getMessagesFromIntent sub_id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    array-length v5, v2

    .line 1247
    .local v5, "pduCount":I
    new-array v3, v5, [Landroid/telephony/SmsMessage;

    .line 1249
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1250
    aget-object v7, v2, v1

    check-cast v7, [B

    move-object v4, v7

    check-cast v4, [B

    .line 1251
    .local v4, "pdu":[B
    invoke-static {v4, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 1252
    aget-object v7, v3, v1

    invoke-virtual {v7, v6}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 1249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1254
    .end local v4    # "pdu":[B
    :cond_0
    return-object v3
.end method

.method public static getNormalizedAddressesFromPdus([[BLjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1266
    array-length v6, p0

    .line 1267
    .local v6, "pduCount":I
    new-array v2, v6, [Landroid/telephony/SmsMessage;

    .line 1268
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 1271
    aget-object v5, p0, v1

    check-cast v5, [B

    .line 1272
    .local v5, "pdu":[B
    invoke-static {v5, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v2, v1

    .line 1282
    aget-object v7, v2, v1

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1283
    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v2, v1

    .line 1285
    :cond_0
    aget-object v7, v2, v1

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 1286
    .local v4, "originatingAddress":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1287
    invoke-static {v4}, Landroid/provider/Telephony$Sms$Intents;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1288
    .local v3, "normalized":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    .end local v3    # "normalized":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1291
    .end local v4    # "originatingAddress":Ljava/lang/String;
    .end local v5    # "pdu":[B
    :cond_2
    return-object v0
.end method

.method private static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    .prologue
    .line 1299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1300
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 1301
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1302
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 1303
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    if-eqz p1, :cond_0

    .line 1305
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1308
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_2
    return-object v5
.end method

.method private static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1295
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Telephony$Sms$Intents;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
