.class public interface abstract Lcyanogenmod/alarmclock/ClockContract$AlarmsColumns;
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
    name = "AlarmsColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DAYS_OF_WEEK:Ljava/lang/String; = "daysofweek"

.field public static final DELETE_AFTER_USE:Ljava/lang/String; = "delete_after_use"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final MINUTES:Ljava/lang/String; = "minutes"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "content://com.android.deskclock/alarms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/alarmclock/ClockContract$AlarmsColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    return-void
.end method
