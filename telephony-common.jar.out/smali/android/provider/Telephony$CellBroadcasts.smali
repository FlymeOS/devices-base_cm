.class public final Landroid/provider/Telephony$CellBroadcasts;
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
    name = "CellBroadcasts"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CMAS_CATEGORY:Ljava/lang/String; = "cmas_category"

.field public static final CMAS_CERTAINTY:Ljava/lang/String; = "cmas_certainty"

.field public static final CMAS_MESSAGE_CLASS:Ljava/lang/String; = "cmas_message_class"

.field public static final CMAS_RESPONSE_TYPE:Ljava/lang/String; = "cmas_response_type"

.field public static final CMAS_SEVERITY:Ljava/lang/String; = "cmas_severity"

.field public static final CMAS_URGENCY:Ljava/lang/String; = "cmas_urgency"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "date"

.field public static final ETWS_WARNING_TYPE:Ljava/lang/String; = "etws_warning_type"

.field public static final GEOGRAPHICAL_SCOPE:Ljava/lang/String; = "geo_scope"

.field public static final LAC:Ljava/lang/String; = "lac"

.field public static final LANGUAGE_CODE:Ljava/lang/String; = "language"

.field public static final MESSAGE_BODY:Ljava/lang/String; = "body"

.field public static final MESSAGE_DELETED:Ljava/lang/String; = "flag_is_deleted"

.field public static final MESSAGE_FORMAT:Ljava/lang/String; = "format"

.field public static final MESSAGE_PRIORITY:Ljava/lang/String; = "priority"

.field public static final MESSAGE_READ:Ljava/lang/String; = "read"

.field public static final PLMN:Ljava/lang/String; = "plmn"

.field public static final QUERY_COLUMNS:[Ljava/lang/String;

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final SERVICE_CATEGORY:Ljava/lang/String; = "service_category"

.field public static final V1_MESSAGE_CODE:Ljava/lang/String; = "message_code"

.field public static final V1_MESSAGE_IDENTIFIER:Ljava/lang/String; = "message_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2934
    const-string/jumbo v0, "content://cellbroadcasts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->CONTENT_URI:Landroid/net/Uri;

    .line 3071
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 3072
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3073
    const-string/jumbo v1, "geo_scope"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3074
    const-string/jumbo v1, "plmn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3075
    const-string/jumbo v1, "lac"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 3076
    const-string/jumbo v1, "cid"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3077
    const-string/jumbo v1, "serial_number"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3078
    const-string/jumbo v1, "service_category"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 3079
    const-string/jumbo v1, "language"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 3080
    const-string/jumbo v1, "body"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 3081
    const-string/jumbo v1, "date"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 3082
    const-string/jumbo v1, "read"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 3083
    const-string/jumbo v1, "format"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 3084
    const-string/jumbo v1, "priority"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 3085
    const-string/jumbo v1, "etws_warning_type"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 3086
    const-string/jumbo v1, "cmas_message_class"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 3087
    const-string/jumbo v1, "cmas_category"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 3088
    const-string/jumbo v1, "cmas_response_type"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 3089
    const-string/jumbo v1, "cmas_severity"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 3090
    const-string/jumbo v1, "cmas_urgency"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 3091
    const-string/jumbo v1, "cmas_certainty"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 3071
    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->QUERY_COLUMNS:[Ljava/lang/String;

    .line 2923
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
