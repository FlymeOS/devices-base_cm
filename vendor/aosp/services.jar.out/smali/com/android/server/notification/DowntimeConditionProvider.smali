.class public Lcom/android/server/notification/DowntimeConditionProvider;
.super Landroid/service/notification/ConditionProviderService;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;
    }
.end annotation


# static fields
.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final ENTER_ACTION:Ljava/lang/String; = "DowntimeConditions.enter"

.field private static final ENTER_CODE:I = 0x64

.field private static final EXIT_ACTION:Ljava/lang/String; = "DowntimeConditions.exit"

.field private static final EXIT_CODE:I = 0x65

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HOURS:J = 0x36ee80L

.field private static final MINUTES:J = 0xea60L

.field private static final SECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "DowntimeConditions"


# instance fields
.field private final mCalendar:Lcom/android/server/notification/DowntimeCalendar;

.field private mConditionClearing:Z

.field private final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mDowntimed:Z

.field private final mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

.field private mLookaheadThreshold:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequesting:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/android/server/notification/NextAlarmTracker;

.field private final mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

.field private final mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "DowntimeConditions"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/NextAlarmTracker;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2
    .param p1, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;
    .param p2, "tracker"    # Lcom/android/server/notification/NextAlarmTracker;
    .param p3, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 68
    iput-object p0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/android/server/notification/DowntimeCalendar;

    invoke-direct {v0}, Lcom/android/server/notification/DowntimeCalendar;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    .line 70
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;Lcom/android/server/notification/DowntimeConditionProvider$1;)V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 331
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DowntimeConditionProvider$1;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DowntimeConditionProvider$2;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    .line 368
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DowntimeConditionProvider$3;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 85
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    const-string v1, "new DowntimeConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 87
    iput-object p2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    .line 88
    iput-object p3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 89
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/DowntimeConditionProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConditionClearing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/notification/DowntimeConditionProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConditionClearing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/notification/DowntimeConditionProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->isZenOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/NextAlarmTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    return-object v0
.end method

.method static synthetic access$200(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->evaluateAutotrigger()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/notification/DowntimeConditionProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDowntimed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/DowntimeConditionProvider;Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;
    .param p1, "x1"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/DowntimeConditionProvider;->onEvaluateNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    return-void
.end method

.method private createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;
    .locals 20
    .param p1, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .param p2, "state"    # I

    .prologue
    .line 244
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 261
    :goto_0
    return-object v2

    .line 245
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v3

    .line 246
    .local v3, "id":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v19, "Hm"

    .line 247
    .local v19, "skeleton":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 248
    .local v12, "locale":Ljava/util/Locale;
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 249
    .local v18, "pattern":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 250
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/android/server/notification/DowntimeCalendar;->getNextTime(JII)J

    move-result-wide v10

    .line 251
    .local v10, "endTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/DowntimeConditionProvider;->isZenNone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v2}, Lcom/android/server/notification/NextAlarmTracker;->getNextAlarm()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v13

    .line 253
    .local v13, "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v14

    .line 254
    .local v14, "nextAlarmTime":J
    :goto_2
    cmp-long v2, v14, v16

    if-lez v2, :cond_1

    cmp-long v2, v14, v10

    if-gez v2, :cond_1

    .line 255
    move-wide v10, v14

    .line 258
    .end local v13    # "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v14    # "nextAlarmTime":J
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    invoke-direct {v2, v0, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "formatted":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const v7, 0x1040766

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const v7, 0x1040767

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "line1":Ljava/lang/String;
    new-instance v2, Landroid/service/notification/Condition;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 246
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "line1":Ljava/lang/String;
    .end local v6    # "formatted":Ljava/lang/String;
    .end local v10    # "endTime":J
    .end local v12    # "locale":Ljava/util/Locale;
    .end local v16    # "now":J
    .end local v18    # "pattern":Ljava/lang/String;
    .end local v19    # "skeleton":Ljava/lang/String;
    :cond_2
    const-string v19, "hma"

    goto :goto_1

    .line 253
    .restart local v10    # "endTime":J
    .restart local v12    # "locale":Ljava/util/Locale;
    .restart local v13    # "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v16    # "now":J
    .restart local v18    # "pattern":Ljava/lang/String;
    .restart local v19    # "skeleton":Ljava/lang/String;
    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_2
.end method

.method private evaluateAutotrigger()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "skipReason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_1

    .line 312
    const-string v1, "no config"

    .line 320
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autotrigger skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/notification/ZenLog;->traceDowntimeAutotrigger(Ljava/lang/String;)V

    .line 329
    :goto_1
    return-void

    .line 313
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDowntimed:Z

    if-eqz v2, :cond_2

    .line 314
    const-string v1, "already downtimed"

    goto :goto_0

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    const-string v1, "already in zen"

    goto :goto_0

    .line 317
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/notification/DowntimeCalendar;->isInDowntime(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    const-string v1, "not in downtime"

    goto :goto_0

    .line 324
    :cond_4
    const-string v2, "Autotrigger fired"

    invoke-static {v2}, Lcom/android/server/notification/ZenLog;->traceDowntimeAutotrigger(Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    :goto_2
    const-string v5, "downtime"

    invoke-virtual {v4, v2, v5}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    .line 328
    .local v0, "condition":Landroid/service/notification/Condition;
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string v3, "downtime"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "condition":Landroid/service/notification/Condition;
    :cond_5
    move v2, v3

    .line 325
    goto :goto_2
.end method

.method private evaluateSubscriptions()V
    .locals 7

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 199
    .local v1, "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mRequesting:Z

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->shouldShowCondition()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v6

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v5

    .line 201
    .local v5, "id":Landroid/net/Uri;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 202
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 203
    .end local v1    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .local v2, "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 206
    .end local v2    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v5    # "id":Landroid/net/Uri;
    .restart local v1    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 207
    .local v0, "conditionId":Landroid/net/Uri;
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    .line 208
    .local v3, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    if-eqz v3, :cond_1

    .line 209
    invoke-direct {p0, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V

    goto :goto_0

    .line 212
    .end local v0    # "conditionId":Landroid/net/Uri;
    .end local v3    # "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    :cond_2
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/notification/DowntimeCalendar;->setDowntimeInfo(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V

    .line 266
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->evaluateSubscriptions()V

    .line 267
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    .line 268
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->evaluateAutotrigger()V

    .line 269
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenNone()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenOff()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V
    .locals 4
    .param p1, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 187
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->shouldShowCondition()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->isZenNone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->findBefore(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_0
.end method

.method private onEvaluateNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 4
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "wakeupTime"    # J
    .param p4, "booted"    # Z

    .prologue
    .line 300
    if-nez p4, :cond_0

    .line 307
    :goto_0
    return-void

    .line 301
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvaluateNextAlarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_3

    .line 303
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm fired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->add(J)V

    .line 306
    :cond_3
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->evaluateSubscriptions()V

    goto :goto_0
.end method

.method private shouldShowCondition()Z
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "now":J
    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v5, "DowntimeConditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldShowCondition now="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v6, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->isInDowntime(J)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " lookahead="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->nextDowntimeStart(J)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mLookaheadThreshold:J

    add-long/2addr v10, v0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->isInDowntime(J)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->nextDowntimeStart(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mLookaheadThreshold:J

    add-long/2addr v8, v0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    :cond_3
    move v2, v4

    .line 157
    goto :goto_0
.end method

.method private static ts(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAlarm(Ljava/lang/String;III)V
    .locals 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .prologue
    .line 279
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 280
    .local v2, "alarms":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 281
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/server/notification/DowntimeCalendar;->getNextTime(JII)J

    move-result-wide v6

    .line 282
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "time"

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x8000000

    move/from16 v0, p2

    invoke-static {v8, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 287
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 288
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 289
    sget-boolean v8, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "DowntimeConditions"

    const-string v9, "Scheduling %s for %s, in %s, now=%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Lcom/android/server/notification/NextAlarmTracker;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 293
    :cond_1
    return-void
.end method

.method private updateAlarms()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    const-string v0, "DowntimeConditions.enter"

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    .line 274
    const-string v0, "DowntimeConditions.exit"

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    goto :goto_0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 92
    const-string v0, "    DowntimeConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 94
    const-string v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 95
    const-string v0, "      mLookaheadThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mLookaheadThreshold:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 96
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mLookaheadThreshold:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v0, "      mCalendar="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Lcom/android/server/notification/DowntimeCalendar;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 98
    const-string v0, "      mFiredAlarms="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    const-string v0, "      mDowntimed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDowntimed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string v0, "      mConditionClearing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConditionClearing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    const-string v0, "      mRequesting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mRequesting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 102
    return-void
.end method

.method public onConnected()V
    .locals 6

    .prologue
    .line 114
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DowntimeConditions"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    .line 116
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const-string v2, "downtime.condition.lookahead"

    const v3, 0x10e0089

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/PropConfig;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mLookaheadThreshold:J

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "DowntimeConditions.enter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "DowntimeConditions.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NextAlarmTracker;->addCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V

    .line 125
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 126
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->removeCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mZenCallback:Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    .line 135
    return-void
.end method

.method public onManualConditionClearing()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConditionClearing:Z

    .line 241
    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    if-nez v0, :cond_1

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mRequesting:Z

    .line 142
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->evaluateSubscriptions()V

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 147
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DowntimeConditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscribe conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    .line 149
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    if-nez v0, :cond_1

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    invoke-virtual {v1}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    .line 151
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)V

    goto :goto_0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    .local v0, "current":Z
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DowntimeConditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnsubscribe conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mFiredAlarms:Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    invoke-virtual {v1}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    .line 220
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    move v0, v2

    .line 226
    .local v0, "downtimeChanged":Z
    :goto_1
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 227
    sget-boolean v3, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "DowntimeConditions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfig downtimeChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 229
    iput-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDowntimed:Z

    .line 230
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iput-boolean v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDowntimed:Z

    goto :goto_0

    .end local v0    # "downtimeChanged":Z
    :cond_5
    move v0, v1

    .line 224
    goto :goto_1
.end method
