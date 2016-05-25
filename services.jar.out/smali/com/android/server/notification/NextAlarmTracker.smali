.class public Lcom/android/server/notification/NextAlarmTracker;
.super Ljava/lang/Object;
.source "NextAlarmTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NextAlarmTracker$Callback;,
        Lcom/android/server/notification/NextAlarmTracker$H;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER:Ljava/lang/String; = "NextAlarmTracker.trigger"

.field private static final DEBUG:Z

.field private static final EARLY:J = 0x1388L

.field private static final EXTRA_TRIGGER:Ljava/lang/String; = "trigger"

.field private static final MINUTES:J = 0xea60L

.field private static final NEXT_ALARM_UPDATE_DELAY:J = 0x3e8L

.field private static final REQUEST_CODE:I = 0x64

.field private static final SECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "NextAlarmTracker"

.field private static final WAIT_AFTER_BOOT:J = 0x4e20L

.field private static final WAIT_AFTER_INIT:J = 0x493e0L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:J

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NextAlarmTracker$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/notification/NextAlarmTracker$H;

.field private mInit:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mScheduledAlarmTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "NextAlarmTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NextAlarmTracker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/server/notification/NextAlarmTracker$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NextAlarmTracker$H;-><init>(Lcom/android/server/notification/NextAlarmTracker;Lcom/android/server/notification/NextAlarmTracker$1;)V

    iput-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mHandler:Lcom/android/server/notification/NextAlarmTracker$H;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCallbacks:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Lcom/android/server/notification/NextAlarmTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NextAlarmTracker$1;-><init>(Lcom/android/server/notification/NextAlarmTracker;)V

    iput-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p1, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/notification/NextAlarmTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/NextAlarmTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NextAlarmTracker;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/NextAlarmTracker;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NextAlarmTracker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/NextAlarmTracker;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NextAlarmTracker;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/android/server/notification/NextAlarmTracker;->mBootCompleted:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/notification/NextAlarmTracker;)Lcom/android/server/notification/NextAlarmTracker$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NextAlarmTracker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mHandler:Lcom/android/server/notification/NextAlarmTracker$H;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/NextAlarmTracker;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NextAlarmTracker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/NextAlarmTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NextAlarmTracker;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/notification/NextAlarmTracker;->handleEvaluate()V

    return-void
.end method

.method private fireEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 4
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "wakeupTime"    # J
    .param p4, "booted"    # Z

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NextAlarmTracker$Callback;

    .line 143
    .local v0, "callback":Lcom/android/server/notification/NextAlarmTracker$Callback;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/notification/NextAlarmTracker$Callback;->onEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    goto :goto_0

    .line 145
    .end local v0    # "callback":Lcom/android/server/notification/NextAlarmTracker$Callback;
    :cond_0
    return-void
.end method

.method private formatAlarm(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 190
    const-string v0, "Hm"

    const-string v1, "hma"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarm(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatAlarm(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J
    .param p3, "skeleton24"    # Ljava/lang/String;
    .param p4, "skeleton12"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p3

    .line 195
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    move-object v1, p4

    .line 194
    goto :goto_0
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEarlyTriggerTime(Landroid/app/AlarmManager$AlarmClockInfo;)J
    .locals 4
    .param p0, "alarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 170
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleEvaluate()V
    .locals 14

    .prologue
    .line 148
    iget-object v3, p0, Lcom/android/server/notification/NextAlarmTracker;->mAlarmManager:Landroid/app/AlarmManager;

    iget v10, p0, Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I

    invoke-virtual {v3, v10}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v2

    .line 149
    .local v2, "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-static {v2}, Lcom/android/server/notification/NextAlarmTracker;->getEarlyTriggerTime(Landroid/app/AlarmManager$AlarmClockInfo;)J

    move-result-wide v8

    .line 150
    .local v8, "triggerTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 151
    .local v4, "now":J
    cmp-long v3, v8, v4

    if-lez v3, :cond_3

    const/4 v0, 0x1

    .line 152
    .local v0, "alarmUpcoming":Z
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/NextAlarmTracker;->isDoneWaitingAfterBoot(J)Z

    move-result v1

    .line 153
    .local v1, "booted":Z
    sget-boolean v3, Lcom/android/server/notification/NextAlarmTracker;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NextAlarmTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleEvaluate nextAlarm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v8, v9}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " alarmUpcoming="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " booted="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-direct {p0, v2, v8, v9, v1}, Lcom/android/server/notification/NextAlarmTracker;->fireEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    .line 157
    if-nez v1, :cond_4

    .line 159
    iget-wide v10, p0, Lcom/android/server/notification/NextAlarmTracker;->mBootCompleted:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    iget-wide v4, p0, Lcom/android/server/notification/NextAlarmTracker;->mBootCompleted:J

    .end local v4    # "now":J
    :cond_1
    const-wide/16 v10, 0x4e20

    add-long v6, v4, v10

    .line 160
    .local v6, "recheckTime":J
    invoke-direct {p0, v6, v7}, Lcom/android/server/notification/NextAlarmTracker;->rescheduleAlarm(J)V

    .line 167
    .end local v6    # "recheckTime":J
    :cond_2
    :goto_1
    return-void

    .line 151
    .end local v0    # "alarmUpcoming":Z
    .end local v1    # "booted":Z
    .restart local v4    # "now":J
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    .restart local v0    # "alarmUpcoming":Z
    .restart local v1    # "booted":Z
    :cond_4
    if-eqz v0, :cond_2

    .line 165
    invoke-direct {p0, v8, v9}, Lcom/android/server/notification/NextAlarmTracker;->rescheduleAlarm(J)V

    goto :goto_1
.end method

.method private isDoneWaitingAfterBoot(J)Z
    .locals 7
    .param p1, "time"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 174
    iget-wide v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mBootCompleted:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mBootCompleted:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0

    .line 175
    :cond_2
    iget-wide v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mInit:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mInit:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private rescheduleAlarm(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    const/4 v8, 0x0

    .line 209
    sget-boolean v2, Lcom/android/server/notification/NextAlarmTracker;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "NextAlarmTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rescheduleAlarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 211
    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    const/16 v3, 0x64

    new-instance v4, Landroid/content/Intent;

    const-string v5, "NextAlarmTracker.trigger"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "trigger"

    invoke-virtual {v4, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 216
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 217
    iput-wide p1, p0, Lcom/android/server/notification/NextAlarmTracker;->mScheduledAlarmTime:J

    .line 218
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    .line 219
    sget-boolean v2, Lcom/android/server/notification/NextAlarmTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "NextAlarmTracker"

    const-string v3, "Scheduling alarm for %s (in %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, p1, v6

    invoke-static {v6, v7}, Lcom/android/server/notification/NextAlarmTracker;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    invoke-virtual {v0, v8, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 223
    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/NextAlarmTracker$Callback;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mRegistered:Z

    .line 135
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 75
    const-string v0, "    NextAlarmTracker:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v0, "      len(mCallbacks)="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 77
    const-string v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 78
    const-string v0, "      mInit="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mInit:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 79
    const-string v0, "      mBootCompleted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mBootCompleted:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 80
    const-string v0, "      mCurrentUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 81
    const-string v0, "      mScheduledAlarmTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mScheduledAlarmTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "      mWakeLock="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public evaluate()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mHandler:Lcom/android/server/notification/NextAlarmTracker$H;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NextAlarmTracker$H;->postEvaluate(J)V

    .line 139
    return-void
.end method

.method public formatAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "alarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarm(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formatAlarmDebug(J)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Hms"

    const-string v4, "hmsa"

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarm(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatAlarmDebug(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "alarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I

    return v0
.end method

.method public getNextAlarm()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mAlarmManager:Landroid/app/AlarmManager;

    iget v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 107
    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 108
    .local v0, "p":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "NextAlarmTracker"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/notification/NextAlarmTracker;->mInit:J

    .line 110
    invoke-virtual {p0}, Lcom/android/server/notification/NextAlarmTracker;->reset()V

    .line 111
    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/server/notification/NextAlarmTracker;->reset()V

    .line 103
    return-void
.end method

.method public removeCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/NextAlarmTracker$Callback;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I

    .line 118
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v0, "NextAlarmTracker.trigger"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NextAlarmTracker;->mRegistered:Z

    .line 127
    invoke-virtual {p0}, Lcom/android/server/notification/NextAlarmTracker;->evaluate()V

    .line 128
    return-void
.end method
