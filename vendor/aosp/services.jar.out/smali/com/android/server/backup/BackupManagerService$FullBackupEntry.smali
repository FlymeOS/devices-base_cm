.class Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
        ">;"
    }
.end annotation


# instance fields
.field lastBackup:J

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "when"    # J

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    .line 604
    iput-wide p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    .line 602
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/backup/BackupManagerService$FullBackupEntry;)I
    .locals 4
    .param p1, "other"    # Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .prologue
    .line 609
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 610
    :cond_0
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 611
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 608
    check-cast p1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->compareTo(Lcom/android/server/backup/BackupManagerService$FullBackupEntry;)I

    move-result v0

    return v0
.end method
