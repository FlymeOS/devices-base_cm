.class Lcom/android/server/backup/BackupManagerService$FullBackupParams;
.super Lcom/android/server/backup/BackupManagerService$FullParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupParams"
.end annotation


# instance fields
.field public allApps:Z

.field public doCompress:Z

.field public doWidgets:Z

.field public domainTokens:[Ljava/lang/String;

.field public excludeFilesRegex:Ljava/lang/String;

.field public includeApks:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field public shouldKillAfterBackup:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;ZZ)V
    .locals 0
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "saveApks"    # Z
    .param p4, "saveObbs"    # Z
    .param p5, "saveShared"    # Z
    .param p6, "alsoWidgets"    # Z
    .param p7, "doAllApps"    # Z
    .param p8, "doSystem"    # Z
    .param p9, "compress"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;
    .param p11, "killAfterBackup"    # Z
    .param p12, "ignoreEncryptionCheck"    # Z

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$FullParams;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 522
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 523
    iput-boolean p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    .line 524
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    .line 525
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    .line 526
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    .line 527
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    .line 528
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    .line 529
    iput-boolean p9, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    .line 530
    iput-object p10, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    .line 531
    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->shouldKillAfterBackup:Z

    .line 532
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->ignoreEncryptionPasswordCheck:Z

    .line 533
    return-void
.end method
