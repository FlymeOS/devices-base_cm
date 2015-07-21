.class Lcom/android/server/notification/NextAlarmTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "NextAlarmTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NextAlarmTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NextAlarmTracker;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NextAlarmTracker;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/notification/NextAlarmTracker;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/NextAlarmTracker;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NextAlarmTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    const-wide/16 v2, 0x0

    .line 231
    .local v2, "delay":J
    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    const-wide/16 v2, 0x3e8

    .line 233
    # getter for: Lcom/android/server/notification/NextAlarmTracker;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/NextAlarmTracker;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NextAlarmTracker"

    const-string v4, "  next alarm for user %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    # getter for: Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/notification/NextAlarmTracker;->access$200(Lcom/android/server/notification/NextAlarmTracker;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v8, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    # getter for: Lcom/android/server/notification/NextAlarmTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/notification/NextAlarmTracker;->access$300(Lcom/android/server/notification/NextAlarmTracker;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    # getter for: Lcom/android/server/notification/NextAlarmTracker;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/notification/NextAlarmTracker;->access$200(Lcom/android/server/notification/NextAlarmTracker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    # getter for: Lcom/android/server/notification/NextAlarmTracker;->mHandler:Lcom/android/server/notification/NextAlarmTracker$H;
    invoke-static {v1}, Lcom/android/server/notification/NextAlarmTracker;->access$500(Lcom/android/server/notification/NextAlarmTracker;)Lcom/android/server/notification/NextAlarmTracker$H;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NextAlarmTracker$H;->postEvaluate(J)V

    .line 240
    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    # getter for: Lcom/android/server/notification/NextAlarmTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/notification/NextAlarmTracker;->access$600(Lcom/android/server/notification/NextAlarmTracker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 241
    return-void

    .line 236
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/server/notification/NextAlarmTracker$1;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/notification/NextAlarmTracker;->mBootCompleted:J
    invoke-static {v1, v4, v5}, Lcom/android/server/notification/NextAlarmTracker;->access$402(Lcom/android/server/notification/NextAlarmTracker;J)J

    goto :goto_0
.end method
