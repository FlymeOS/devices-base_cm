.class public final Landroid/provider/Telephony$MmsSms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$MmsSms$PendingMessages;,
        Landroid/provider/Telephony$MmsSms$WordsTable;
    }
.end annotation


# static fields
.field public static final CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

.field public static final CONTENT_DRAFT_URI:Landroid/net/Uri;

.field public static final CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

.field public static final CONTENT_LOCKED_URI:Landroid/net/Uri;

.field public static final CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ERR_TYPE_GENERIC:I = 0x1

.field public static final ERR_TYPE_GENERIC_PERMANENT:I = 0xa

.field public static final ERR_TYPE_MMS_PROTO_PERMANENT:I = 0xc

.field public static final ERR_TYPE_MMS_PROTO_TRANSIENT:I = 0x3

.field public static final ERR_TYPE_SMS_PROTO_PERMANENT:I = 0xb

.field public static final ERR_TYPE_SMS_PROTO_TRANSIENT:I = 0x2

.field public static final ERR_TYPE_TRANSPORT_FAILURE:I = 0x4

.field public static final MMS_PROTO:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final SEARCH_URI:Landroid/net/Uri;

.field public static final SMS_PROTO:I = 0x0

.field public static final TRANSPORT_TYPE_COUNT_COLUMN:Ljava/lang/String; = "transport_type_count"

.field public static final TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2421
    const-string/jumbo v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    .line 2427
    const-string/jumbo v0, "content://mms-sms/conversations"

    .line 2426
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 2433
    const-string/jumbo v0, "content://mms-sms/messages/byphone"

    .line 2432
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

    .line 2439
    const-string/jumbo v0, "content://mms-sms/undelivered"

    .line 2438
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    .line 2445
    const-string/jumbo v0, "content://mms-sms/draft"

    .line 2444
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    .line 2451
    const-string/jumbo v0, "content://mms-sms/locked"

    .line 2450
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 2458
    const-string/jumbo v0, "content://mms-sms/search"

    .line 2457
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    .line 2396
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
