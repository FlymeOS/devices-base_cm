.class public final Landroid/provider/CalendarContract$Events;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final CONTENT_EXCEPTION_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1641
    const-string/jumbo v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1640
    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 1649
    const-string/jumbo v0, "content://com.android.calendar/exception"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1648
    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 1668
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 1669
    const-string/jumbo v1, "account_name"

    aput-object v1, v0, v3

    .line 1670
    const-string/jumbo v1, "account_type"

    aput-object v1, v0, v4

    .line 1671
    const-string/jumbo v1, "cal_sync1"

    aput-object v1, v0, v5

    .line 1672
    const-string/jumbo v1, "cal_sync2"

    aput-object v1, v0, v6

    .line 1673
    const-string/jumbo v1, "cal_sync3"

    aput-object v1, v0, v7

    .line 1674
    const-string/jumbo v1, "cal_sync4"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1675
    const-string/jumbo v1, "cal_sync5"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1676
    const-string/jumbo v1, "cal_sync6"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1677
    const-string/jumbo v1, "cal_sync7"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1678
    const-string/jumbo v1, "cal_sync8"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1679
    const-string/jumbo v1, "cal_sync9"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1680
    const-string/jumbo v1, "cal_sync10"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1681
    const-string/jumbo v1, "allowedReminders"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1682
    const-string/jumbo v1, "allowedAttendeeTypes"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1683
    const-string/jumbo v1, "allowedAvailability"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1684
    const-string/jumbo v1, "calendar_access_level"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1685
    const-string/jumbo v1, "calendar_color"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1686
    const-string/jumbo v1, "calendar_timezone"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1687
    const-string/jumbo v1, "canModifyTimeZone"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1688
    const-string/jumbo v1, "canOrganizerRespond"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1689
    const-string/jumbo v1, "calendar_displayName"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1690
    const-string/jumbo v1, "canPartiallyUpdate"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1691
    const-string/jumbo v1, "sync_events"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1692
    const-string/jumbo v1, "visible"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1668
    sput-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 1702
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 1703
    const-string/jumbo v1, "_sync_id"

    aput-object v1, v0, v3

    .line 1704
    const-string/jumbo v1, "dirty"

    aput-object v1, v0, v4

    .line 1705
    const-string/jumbo v1, "mutators"

    aput-object v1, v0, v5

    .line 1706
    const-string/jumbo v1, "sync_data1"

    aput-object v1, v0, v6

    .line 1707
    const-string/jumbo v1, "sync_data2"

    aput-object v1, v0, v7

    .line 1708
    const-string/jumbo v1, "sync_data3"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1709
    const-string/jumbo v1, "sync_data4"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1710
    const-string/jumbo v1, "sync_data5"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1711
    const-string/jumbo v1, "sync_data6"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1712
    const-string/jumbo v1, "sync_data7"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1713
    const-string/jumbo v1, "sync_data8"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1714
    const-string/jumbo v1, "sync_data9"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1715
    const-string/jumbo v1, "sync_data10"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1702
    sput-object v0, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 1631
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
