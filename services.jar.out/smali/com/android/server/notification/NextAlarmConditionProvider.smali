.class public Lcom/android/server/notification/NextAlarmConditionProvider;
.super Landroid/service/notification/ConditionProviderService;
.source "NextAlarmConditionProvider.java"


# static fields
.field private static final BAD_CONDITION:J = -0x1L

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final HOURS:J = 0x36ee80L

.field private static final MINUTES:J = 0xea60L

.field private static final SECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "NextAlarmConditions"


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mLookaheadThreshold:J

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "NextAlarmConditions"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/NextAlarmConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NextAlarmConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NextAlarmTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/server/notification/NextAlarmTracker;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 62
    iput-object p0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 218
    new-instance v0, Lcom/android/server/notification/NextAlarmConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NextAlarmConditionProvider$1;-><init>(Lcom/android/server/notification/NextAlarmConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    .line 71
    sget-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NextAlarmConditions"

    const-string v1, "new NextAlarmConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NextAlarmConditionProvider;Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NextAlarmConditionProvider;
    .param p1, "x1"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NextAlarmConditionProvider;->onEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    return-void
.end method

.method private isWithinLookaheadThreshold(Landroid/app/AlarmManager$AlarmClockInfo;)Z
    .locals 10
    .param p1, "alarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/android/server/notification/NextAlarmTracker;->getEarlyTriggerTime(Landroid/app/AlarmManager$AlarmClockInfo;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 137
    .local v0, "delta":J
    cmp-long v3, v0, v8

    if-lez v3, :cond_0

    iget-wide v4, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mLookaheadThreshold:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mLookaheadThreshold:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private newConditionId(Landroid/app/AlarmManager$AlarmClockInfo;)Landroid/net/Uri;
    .locals 4
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 151
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "next_alarm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v1}, Lcom/android/server/notification/NextAlarmTracker;->getCurrentUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private notifyCondition(Landroid/net/Uri;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "alarm"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p3, "state"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 141
    if-nez p2, :cond_1

    const-string v4, ""

    .line 142
    .local v4, "formattedAlarm":Ljava/lang/String;
    :goto_0
    sget-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NextAlarmConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alarm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mContext:Landroid/content/Context;

    const v2, 0x104076b

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mContext:Landroid/content/Context;

    const v3, 0x104076c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NextAlarmConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 148
    return-void

    .line 141
    .end local v4    # "formattedAlarm":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private onEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 16
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "wakeupTime"    # J
    .param p4, "booted"    # Z

    .prologue
    .line 180
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NextAlarmConditionProvider;->isWithinLookaheadThreshold(Landroid/app/AlarmManager$AlarmClockInfo;)Z

    move-result v7

    .line 181
    .local v7, "withinThreshold":Z
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    .line 182
    .local v8, "nextAlarmTime":J
    :goto_0
    sget-boolean v12, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "NextAlarmConditions"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onEvaluate mSubscriptions="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NextAlarmConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " nextAlarmTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v14, v8, v9}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " nextAlarmWakeup="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " withinThreshold="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " booted="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NextAlarmConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 189
    .local v3, "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/notification/NextAlarmConditionProvider;->mRequesting:Z

    if-eqz v12, :cond_1

    if-eqz p1, :cond_1

    if-eqz v7, :cond_1

    .line 190
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NextAlarmConditionProvider;->newConditionId(Landroid/app/AlarmManager$AlarmClockInfo;)Landroid/net/Uri;

    move-result-object v6

    .line 191
    .local v6, "id":Landroid/net/Uri;
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 192
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 193
    .end local v3    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .local v4, "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    .line 196
    .end local v4    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v6    # "id":Landroid/net/Uri;
    .restart local v3    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :cond_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 197
    .local v2, "conditionId":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/notification/NextAlarmConditionProvider;->tryParseNextAlarmCondition(Landroid/net/Uri;)J

    move-result-wide v10

    .line 198
    .local v10, "time":J
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_4

    .line 199
    const/4 v12, 0x0

    const-string v13, "badCondition"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v12, v13}, Lcom/android/server/notification/NextAlarmConditionProvider;->notifyCondition(Landroid/net/Uri;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v2    # "conditionId":Landroid/net/Uri;
    .end local v3    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "nextAlarmTime":J
    .end local v10    # "time":J
    :cond_3
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 200
    .restart local v2    # "conditionId":Landroid/net/Uri;
    .restart local v3    # "conditions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "nextAlarmTime":J
    .restart local v10    # "time":J
    :cond_4
    if-nez p4, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/notification/NextAlarmConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 203
    const/4 v12, 0x2

    const-string v13, "!booted"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v12, v13}, Lcom/android/server/notification/NextAlarmConditionProvider;->notifyCondition(Landroid/net/Uri;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_5
    cmp-long v12, v10, v8

    if-eqz v12, :cond_6

    .line 207
    const/4 v12, 0x0

    const-string v13, "changed"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v12, v13}, Lcom/android/server/notification/NextAlarmConditionProvider;->notifyCondition(Landroid/net/Uri;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_6
    if-nez v7, :cond_7

    .line 210
    const/4 v12, 0x0

    const-string v13, "!within"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v12, v13}, Lcom/android/server/notification/NextAlarmConditionProvider;->notifyCondition(Landroid/net/Uri;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_7
    const/4 v12, 0x1

    const-string v13, "within"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v12, v13}, Lcom/android/server/notification/NextAlarmConditionProvider;->notifyCondition(Landroid/net/Uri;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_1

    .line 216
    .end local v2    # "conditionId":Landroid/net/Uri;
    .end local v10    # "time":J
    :cond_8
    return-void
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .prologue
    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    .end local p1    # "defValue":J
    :goto_0
    return-wide p1

    .line 173
    .restart local p1    # "defValue":J
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private tryParseNextAlarmCondition(Landroid/net/Uri;)J
    .locals 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, -0x1

    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "next_alarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v1}, Lcom/android/server/notification/NextAlarmTracker;->getCurrentUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/server/notification/NextAlarmConditionProvider;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NextAlarmConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NextAlarmConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 76
    const-string v0, "    NextAlarmConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 78
    const-string v0, "      mLookaheadThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mLookaheadThreshold:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 79
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mLookaheadThreshold:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 81
    const-string v0, "      mRequesting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mRequesting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 82
    return-void
.end method

.method public onConnected()V
    .locals 4

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NextAlarmConditions"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "nextalarm.condition.lookahead"

    const v2, 0x10e0088

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/PropConfig;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mLookaheadThreshold:J

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mConnected:Z

    .line 90
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->addCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 96
    sget-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NextAlarmConditions"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v1, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTrackerCallback:Lcom/android/server/notification/NextAlarmTracker$Callback;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NextAlarmTracker;->removeCallback(Lcom/android/server/notification/NextAlarmTracker$Callback;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mConnected:Z

    .line 99
    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NextAlarmConditions"

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

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mConnected:Z

    if-nez v0, :cond_1

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mRequesting:Z

    .line 106
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmTracker;->evaluate()V

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NextAlarmConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NextAlarmConditionProvider;->tryParseNextAlarmCondition(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "badCondition"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/notification/NextAlarmConditionProvider;->notifyCondition(Landroid/net/Uri;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmTracker;->evaluate()V

    goto :goto_0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/server/notification/NextAlarmConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NextAlarmConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method
