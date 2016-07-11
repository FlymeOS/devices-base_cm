.class final Lcom/android/server/notification/NotificationManagerService$FlymeInjector;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3334
    return-void
.end method

.method static initFlymeExtraFields(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 4
    .param p0, "nms"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3305
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3306
    .local v0, "context":Landroid/content/Context;
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymePowerManager:Landroid/os/PowerManager;

    .line 3307
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymePowerManager:Landroid/os/PowerManager;

    const v2, 0x3000001a

    const-string v3, "NotificationService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3310
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3311
    return-void
.end method

.method static notifyWakeupScreen(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 8
    .param p0, "nms"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3314
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3315
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldScreenOn()Z

    move-result v2

    .line 3316
    .local v2, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldInCall()Z

    move-result v1

    .line 3317
    .local v1, "isInCall":Z
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService$FlymeInjector;->shouldNotifyWakeupScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3318
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 3319
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeUpScreenRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_0

    .line 3320
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;

    invoke-direct {v3, p0}, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeUpScreenRunnable:Ljava/lang/Runnable;

    .line 3322
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldHandler()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeUpScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3325
    :cond_1
    return-void
.end method

.method private static shouldNotifyWakeupScreen(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 3329
    .local v0, "isLockScreenShowNotification":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_wakeup_screen"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 3330
    .local v1, "isNotifyWakeupScreen":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 3331
    :goto_2
    return v2

    .end local v0    # "isLockScreenShowNotification":Z
    .end local v1    # "isNotifyWakeupScreen":Z
    :cond_0
    move v0, v3

    .line 3328
    goto :goto_0

    .restart local v0    # "isLockScreenShowNotification":Z
    :cond_1
    move v1, v3

    .line 3329
    goto :goto_1

    .restart local v1    # "isNotifyWakeupScreen":Z
    :cond_2
    move v2, v3

    .line 3331
    goto :goto_2
.end method
