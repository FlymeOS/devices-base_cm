.class final Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeWakeUpScreenRunnable"
.end annotation


# instance fields
.field private mNMS:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "nms"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3339
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    .line 3340
    return-void
.end method

.method private wakeUpScreen()V
    .locals 4

    .prologue
    .line 3348
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    monitor-enter v1

    .line 3349
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3350
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3352
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3353
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymePowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 3354
    monitor-exit v1

    .line 3355
    return-void

    .line 3354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 3344
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$FlymeInjector$FlymeWakeUpScreenRunnable;->wakeUpScreen()V

    .line 3345
    return-void
.end method
