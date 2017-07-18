.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreFileRunnable"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

.field mSocket:Landroid/os/ParcelFileDescriptor;

.field mToken:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p4, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4721
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4723
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 4724
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .line 4725
    iput p5, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mToken:I

    .line 4732
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 4722
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 4738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v3, v3, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget v5, v5, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 4739
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v8, v8, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v10, v10, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    .line 4740
    iget v12, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mToken:I

    iget-object v13, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 4738
    invoke-interface/range {v1 .. v13}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4736
    :goto_0
    return-void

    .line 4741
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
