.class public final Landroid/provider/CalendarContract$Calendars;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Calendars"
.end annotation


# static fields
.field public static final CALENDAR_LOCATION:Ljava/lang/String; = "calendar_location"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "calendar_displayName"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 693
    const-string/jumbo v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 720
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    .line 721
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 722
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 723
    const-string/jumbo v1, "_sync_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 724
    const-string/jumbo v1, "dirty"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 725
    const-string/jumbo v1, "mutators"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 726
    const-string/jumbo v1, "ownerAccount"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 727
    const-string/jumbo v1, "maxReminders"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 728
    const-string/jumbo v1, "allowedReminders"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 729
    const-string/jumbo v1, "canModifyTimeZone"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 730
    const-string/jumbo v1, "canOrganizerRespond"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 731
    const-string/jumbo v1, "canPartiallyUpdate"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 732
    const-string/jumbo v1, "calendar_location"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 733
    const-string/jumbo v1, "calendar_timezone"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 734
    const-string/jumbo v1, "calendar_access_level"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 735
    const-string/jumbo v1, "deleted"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 736
    const-string/jumbo v1, "cal_sync1"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 737
    const-string/jumbo v1, "cal_sync2"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 738
    const-string/jumbo v1, "cal_sync3"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 739
    const-string/jumbo v1, "cal_sync4"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 740
    const-string/jumbo v1, "cal_sync5"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 741
    const-string/jumbo v1, "cal_sync6"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 742
    const-string/jumbo v1, "cal_sync7"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 743
    const-string/jumbo v1, "cal_sync8"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 744
    const-string/jumbo v1, "cal_sync9"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 745
    const-string/jumbo v1, "cal_sync10"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 720
    sput-object v0, Landroid/provider/CalendarContract$Calendars;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 682
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
