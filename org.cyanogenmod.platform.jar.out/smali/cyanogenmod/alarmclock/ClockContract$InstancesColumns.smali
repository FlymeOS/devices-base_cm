.class public interface abstract Lcyanogenmod/alarmclock/ClockContract$InstancesColumns;
.super Ljava/lang/Object;
.source "ClockContract.java"

# interfaces
.implements Lcyanogenmod/alarmclock/ClockContract$AlarmSettingColumns;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/alarmclock/ClockContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstancesColumns"
.end annotation


# static fields
.field public static final ALARM_ID:Ljava/lang/String; = "alarm_id"

.field public static final ALARM_STATE:Ljava/lang/String; = "alarm_state"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DAY:Ljava/lang/String; = "day"

.field public static final DISMISSED_STATE:I = 0x7

.field public static final FIRED_STATE:I = 0x5

.field public static final HIDE_NOTIFICATION_STATE:I = 0x2

.field public static final HIGH_NOTIFICATION_STATE:I = 0x3

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final LOW_NOTIFICATION_STATE:I = 0x1

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field public static final MISSED_STATE:I = 0x6

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final POWER_OFF_ALARM_STATE:I = -0x1

.field public static final PREDISMISSED_STATE:I = 0x8

.field public static final SILENT_STATE:I = 0x0

.field public static final SNOOZE_STATE:I = 0x4

.field public static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, "content://com.android.deskclock/instances"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/alarmclock/ClockContract$InstancesColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    return-void
.end method
