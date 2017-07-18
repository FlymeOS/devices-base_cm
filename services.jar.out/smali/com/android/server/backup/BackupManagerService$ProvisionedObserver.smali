.class Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 361
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 360
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v1, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 366
    .local v1, "wasProvisioned":Z
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    .line 368
    .local v0, "isProvisioned":Z
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    if-nez v1, :cond_1

    .end local v0    # "isProvisioned":Z
    :goto_0
    iput-boolean v0, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 374
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    monitor-exit v3

    .line 364
    return-void

    .line 368
    .restart local v0    # "isProvisioned":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "isProvisioned":Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 379
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 374
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
