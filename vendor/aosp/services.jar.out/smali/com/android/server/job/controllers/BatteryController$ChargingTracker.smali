.class public Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChargingTracker"
.end annotation


# instance fields
.field private final mAlarm:Landroid/app/AlarmManager;

.field private mBatteryHealthy:Z

.field private mCharging:Z

.field private final mStableChargingTriggerIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 145
    iget-object v1, p1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.task.controllers.BatteryController.ACTION_CHARGING_STABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mStableChargingTriggerIntent:Landroid/app/PendingIntent;

    .line 148
    return-void
.end method


# virtual methods
.method isOnStablePower()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 197
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$000(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_0

    .line 198
    :cond_2
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->setStableChargingAlarm()V

    .line 206
    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    goto :goto_0

    .line 207
    :cond_3
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mStableChargingTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 213
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 214
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$000(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_0

    .line 215
    :cond_4
    const-string v1, "com.android.server.task.controllers.BatteryController.ACTION_CHARGING_STABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-boolean v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$000(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_0
.end method

.method setStableChargingAlarm()V
    .locals 6

    .prologue
    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long v0, v2, v4

    .line 234
    .local v0, "alarmTriggerElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mStableChargingTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 236
    return-void
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "com.android.server.task.controllers.BatteryController.ACTION_CHARGING_STABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v2, v2, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    const-class v2, Landroid/os/BatteryManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 166
    .local v0, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 167
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 168
    return-void

    .line 166
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
