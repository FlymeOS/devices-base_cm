.class public final Landroid/provider/Telephony$Blacklist;
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
    name = "Blacklist"
.end annotation


# static fields
.field public static final CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

.field public static final CONTENT_MESSAGE_URI:Landroid/net/Uri;

.field public static final CONTENT_PHONE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "number ASC"

.field public static final IS_REGEX:Ljava/lang/String; = "is_regex"

.field public static final MESSAGE_MODE:Ljava/lang/String; = "message"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHONE_MODE:Ljava/lang/String; = "phone"

.field public static final REGEX_KEY:Ljava/lang/String; = "regex"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3200
    const-string v0, "content://blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    .line 3209
    const-string v0, "content://blacklist/bynumber"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    .line 3215
    const-string v0, "content://blacklist/phone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_PHONE_URI:Landroid/net/Uri;

    .line 3221
    const-string v0, "content://blacklist/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
