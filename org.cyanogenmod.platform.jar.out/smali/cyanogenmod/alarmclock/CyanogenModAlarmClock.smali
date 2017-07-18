.class public Lcyanogenmod/alarmclock/CyanogenModAlarmClock;
.super Ljava/lang/Object;
.source "CyanogenModAlarmClock.java"


# static fields
.field public static final ACTION_SET_ALARM_ENABLED:Ljava/lang/String; = "cyanogenmod.alarmclock.SET_ALARM_ENABLED"

.field private static final DESKCLOCK_PACKAGE:Ljava/lang/String; = "com.android.deskclock"

.field public static final EXTRA_ALARM_ID:Ljava/lang/String; = "cyanogenmod.intent.extra.alarmclock.ID"

.field public static final EXTRA_ENABLED:Ljava/lang/String; = "cyanogenmod.intent.extra.alarmclock.ENABLED"

.field public static final MODIFY_ALARMS_PERMISSION:Ljava/lang/String; = "cyanogenmod.alarmclock.permission.MODIFY_ALARMS"

.field public static final READ_ALARMS_PERMISSION:Ljava/lang/String; = "cyanogenmod.alarmclock.permission.READ_ALARMS"

.field public static final WRITE_ALARMS_PERMISSION:Ljava/lang/String; = "cyanogenmod.alarmclock.permission.WRITE_ALARMS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlarmIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 142
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SET_ALARM"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 149
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 150
    .local v4, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 151
    .local v5, "selectedSystemComponent":Landroid/content/ComponentName;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 152
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 153
    new-instance v5, Landroid/content/ComponentName;

    .end local v5    # "selectedSystemComponent":Landroid/content/ComponentName;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 154
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 153
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v5, :cond_2

    .line 159
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 161
    :cond_2
    return-object v2
.end method
