.class public Landroid/app/backup/RecentsBackupHelper;
.super Ljava/lang/Object;
.source "RecentsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final RECENTS_IMAGE_DIR:Ljava/lang/String; = "recent_images"

.field private static final RECENTS_IMAGE_KEY:Ljava/lang/String; = "image:"

.field private static final RECENTS_IMAGE_RESTORE_DIR:Ljava/lang/String; = "restored_recent_images"

.field private static final RECENTS_TASK_DIR:Ljava/lang/String; = "recent_tasks"

.field private static final RECENTS_TASK_KEY:Ljava/lang/String; = "task:"

.field private static final RECENTS_TASK_RESTORE_DIR:Ljava/lang/String; = "restored_recent_tasks"

.field private static final TAG:Ljava/lang/String; = "RecentsBackup"


# instance fields
.field final mRecentFiles:[Ljava/lang/String;

.field final mRecentKeys:[Ljava/lang/String;

.field final mRestoredImagesDir:Ljava/io/File;

.field final mRestoredTasksDir:Ljava/io/File;

.field final mSystemDir:Ljava/io/File;

.field mTaskFileHelper:Landroid/app/backup/FileBackupHelperBase;

.field final mTasksDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v3, Landroid/app/backup/FileBackupHelperBase;

    invoke-direct {v3, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mTaskFileHelper:Landroid/app/backup/FileBackupHelperBase;

    .line 48
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "system"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mSystemDir:Ljava/io/File;

    .line 49
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/app/backup/RecentsBackupHelper;->mSystemDir:Ljava/io/File;

    const-string/jumbo v5, "recent_tasks"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mTasksDir:Ljava/io/File;

    .line 50
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/app/backup/RecentsBackupHelper;->mSystemDir:Ljava/io/File;

    const-string/jumbo v5, "restored_recent_tasks"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRestoredTasksDir:Ljava/io/File;

    .line 51
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/app/backup/RecentsBackupHelper;->mSystemDir:Ljava/io/File;

    const-string/jumbo v5, "restored_recent_images"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRestoredImagesDir:Ljava/io/File;

    .line 54
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mTasksDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 55
    .local v2, "recentFiles":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 57
    array-length v0, v2

    .line 58
    .local v0, "N":I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentKeys:[Ljava/lang/String;

    .line 59
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentFiles:[Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 64
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "task:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 65
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentFiles:[Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentKeys:[Ljava/lang/String;

    iput-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentFiles:[Ljava/lang/String;

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/RecentsBackupHelper;->mRecentKeys:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/FileBackupHelperBase;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, "output":Ljava/io/File;
    const-string/jumbo v3, "task:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const-string/jumbo v3, "task:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "output":Ljava/io/File;
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRestoredTasksDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .restart local v2    # "output":Ljava/io/File;
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRestoredTasksDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 100
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 105
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mTaskFileHelper:Landroid/app/backup/FileBackupHelperBase;

    invoke-virtual {v3, v2, p1}, Landroid/app/backup/FileBackupHelperBase;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    .line 107
    :cond_1
    return-void

    .line 94
    :cond_2
    const-string v3, "image:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const-string v3, "image:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "output":Ljava/io/File;
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRestoredImagesDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .restart local v2    # "output":Ljava/io/File;
    iget-object v3, p0, Landroid/app/backup/RecentsBackupHelper;->mRestoredImagesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/app/backup/RecentsBackupHelper;->mTaskFileHelper:Landroid/app/backup/FileBackupHelperBase;

    invoke-virtual {v0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    .line 112
    return-void
.end method
