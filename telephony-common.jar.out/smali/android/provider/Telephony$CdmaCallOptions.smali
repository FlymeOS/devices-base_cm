.class public final Landroid/provider/Telephony$CdmaCallOptions;
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
    name = "CdmaCallOptions"
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3174
    const-string/jumbo v0, "content://cdma/calloption"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3173
    sput-object v0, Landroid/provider/Telephony$CdmaCallOptions;->CONTENT_URI:Landroid/net/Uri;

    .line 3169
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
