.class abstract Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RestoreEngine"
.end annotation


# static fields
.field public static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "RestoreEngine"

.field public static final TARGET_FAILURE:I = -0x2

.field public static final TRANSPORT_FAILURE:I = -0x3


# instance fields
.field private mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4340
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4347
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4348
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 4351
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4378
    return-void
.end method

.method public setRunning(Z)V
    .locals 2
    .param p1, "stillRunning"    # Z

    .prologue
    .line 4355
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 4356
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4357
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4358
    monitor-exit v1

    .line 4359
    return-void

    .line 4358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForResult()I
    .locals 2

    .prologue
    .line 4362
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 4363
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 4365
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4366
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4368
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4369
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->getResult()I

    move-result v0

    return v0

    .line 4368
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
