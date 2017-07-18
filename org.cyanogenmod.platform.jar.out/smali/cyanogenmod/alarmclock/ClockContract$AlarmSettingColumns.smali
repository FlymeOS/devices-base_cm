.class public interface abstract Lcyanogenmod/alarmclock/ClockContract$AlarmSettingColumns;
.super Ljava/lang/Object;
.source "ClockContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/alarmclock/ClockContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlarmSettingColumns"
.end annotation


# static fields
.field public static final INCREASING_VOLUME:Ljava/lang/String; = "incvol"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final NO_RINGTONE:Ljava/lang/String;

.field public static final NO_RINGTONE_URI:Landroid/net/Uri;

.field public static final PROFILE:Ljava/lang/String; = "profile"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sput-object v0, Lcyanogenmod/alarmclock/ClockContract$AlarmSettingColumns;->NO_RINGTONE_URI:Landroid/net/Uri;

    .line 70
    sget-object v0, Lcyanogenmod/alarmclock/ClockContract$AlarmSettingColumns;->NO_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/alarmclock/ClockContract$AlarmSettingColumns;->NO_RINGTONE:Ljava/lang/String;

    .line 61
    return-void
.end method
