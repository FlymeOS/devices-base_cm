.class Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field mAgentBinder:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

.field mFinished:Z

.field mJournal:Ljava/io/File;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 2
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2364
    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2365
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 2366
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    .line 2367
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    .line 2369
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    .line 2371
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    .line 2374
    const-string v0, "STATE => INITIAL"

    invoke-virtual {p1, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2375
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    .prologue
    .line 2741
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 2742
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2748
    .local v0, "checksum":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2749
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 2750
    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2749
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2743
    .end local v0    # "checksum":[B
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 2744
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "PerformBackupTask"

    const-string v6, "Unable to use SHA-1!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const-string v5, "00"

    .line 2752
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v5

    .restart local v0    # "checksum":[B
    .restart local v2    # "i":I
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2757
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v10

    .line 2760
    .local v10, "widgetState":[B
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_widget"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2761
    .local v9, "widgetFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    .line 2770
    .local v7, "priorStateExists":Z
    if-nez v7, :cond_1

    if-nez v10, :cond_1

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2779
    :cond_1
    const/4 v4, 0x0

    .line 2780
    .local v4, "newChecksum":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 2781
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v4

    .line 2782
    if-eqz v7, :cond_4

    .line 2785
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2784
    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 2786
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2784
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v13, 0x0

    .line 2788
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 2789
    .local v6, "priorChecksum":Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v13, :cond_8

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v14, :cond_b

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 2790
    :cond_3
    :goto_2
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2797
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 2798
    .local v5, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v10, :cond_13

    .line 2800
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2799
    .local v2, "fout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 2801
    :try_start_4
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2799
    .local v8, "stateOut":Ljava/io/DataOutputStream;
    const/4 v13, 0x0

    .line 2803
    :try_start_5
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2804
    if-eqz v8, :cond_5

    if-eqz v13, :cond_e

    :try_start_6
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    if-eqz v14, :cond_11

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a

    .line 2806
    :cond_6
    :goto_4
    const-string v12, "\uffed\uffedwidget"

    array-length v13, v10

    invoke-virtual {v5, v12, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 2807
    array-length v12, v10

    invoke-virtual {v5, v10, v12}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_0

    .line 2789
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "priorChecksum":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_8
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 2784
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v12

    :try_start_9
    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2789
    :catchall_0
    move-exception v13

    move-object v15, v13

    move-object v13, v12

    move-object v12, v15

    :goto_5
    if-eqz v1, :cond_7

    if-eqz v13, :cond_c

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    :goto_6
    throw v12

    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "priorChecksum":Ljava/lang/String;
    :cond_8
    :try_start_b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v13, v14

    goto :goto_5

    .line 2784
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v13

    :try_start_c
    throw v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2789
    :catchall_2
    move-exception v12

    if-eqz v3, :cond_9

    if-eqz v13, :cond_a

    :try_start_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_9
    :goto_7
    :try_start_e
    throw v12

    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    .restart local v6    # "priorChecksum":Ljava/lang/String;
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    :catch_5
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    .line 2804
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_3

    .line 2799
    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_7
    move-exception v12

    :try_start_10
    throw v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2804
    :catchall_3
    move-exception v13

    move-object v15, v13

    move-object v13, v12

    move-object v12, v15

    :goto_8
    if-eqz v2, :cond_d

    if-eqz v13, :cond_12

    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    :cond_d
    :goto_9
    throw v12

    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    :cond_e
    :try_start_12
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_3

    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v12

    move-object v13, v14

    goto :goto_8

    .line 2799
    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catch_8
    move-exception v13

    :try_start_13
    throw v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 2804
    :catchall_5
    move-exception v12

    if-eqz v8, :cond_f

    if-eqz v13, :cond_10

    :try_start_14
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :cond_f
    :goto_a
    :try_start_15
    throw v12

    :catch_9
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_10
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_a

    :catch_a
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_4

    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catch_b
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9

    .line 2810
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :cond_13
    const-string v12, "\uffed\uffedwidget"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 2811
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method


# virtual methods
.method agentErrorCleanup()V
    .locals 1

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2979
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2980
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 2982
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2983
    return-void

    .line 2982
    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_0
.end method

.method beginBackup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 2404
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2406
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v7, "beginBackup: ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2408
    .local v5, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2409
    iget-object v7, v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2411
    .end local v5    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_0
    const-string v7, " ]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2415
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2416
    iput v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2419
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2420
    const-string v7, "PerformBackupTask"

    const-string v8, "Backup begun with an empty queue - nothing to do."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v8, "queue empty at begin"

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2422
    sget-object v7, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2494
    :cond_1
    :goto_1
    return-void

    .line 2429
    :cond_2
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 2431
    const-string v7, "PerformBackupTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Beginning backup of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " targets"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v8, "@pm@"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2435
    .local v4, "pmState":Ljava/io/File;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v6

    .line 2436
    .local v6, "transportName":Ljava/lang/String;
    const/16 v7, 0xb05

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2439
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_3

    .line 2440
    const-string v7, "PerformBackupTask"

    const-string v8, "Initializing (wiping) backup state and transport storage"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializing transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2442
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2443
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v7

    iput v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2445
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transport.initializeDevice() == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2446
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v7, :cond_6

    .line 2447
    const/16 v7, 0xb0b

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2459
    :cond_3
    :goto_2
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v7, :cond_4

    .line 2460
    new-instance v3, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    .line 2462
    .local v3, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string v7, "@pm@"

    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v7

    iput v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2464
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PMBA invoke: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2469
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2472
    .end local v3    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    :cond_4
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v8, -0x3e9

    if-ne v7, v8, :cond_5

    .line 2476
    const/16 v7, 0xb0a

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2486
    :cond_5
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exiting prelim: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2487
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_1

    .line 2490
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2491
    sget-object v7, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_1

    .line 2449
    :cond_6
    const/16 v7, 0xb06

    :try_start_1
    const-string v8, "(initialize)"

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2450
    const-string v7, "PerformBackupTask"

    const-string v8, "Transport error in initializeDevice()"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2478
    .end local v6    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2479
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "PerformBackupTask"

    const-string v8, "Error in backup thread"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2480
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in backup thread: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2481
    const/16 v7, -0x3e8

    iput v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2486
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exiting prelim: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2487
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_1

    .line 2490
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2491
    sget-object v7, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_1

    .line 2486
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exiting prelim: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2487
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v8, :cond_7

    .line 2490
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2491
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    :cond_7
    throw v7
.end method

.method clearAgentState()V
    .locals 3

    .prologue
    .line 2987
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2988
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2989
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2990
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2994
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2996
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2999
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 3000
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3002
    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3005
    :cond_3
    :goto_3
    return-void

    .line 2996
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 3003
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2989
    :catch_1
    move-exception v0

    goto :goto_2

    .line 2988
    :catch_2
    move-exception v0

    goto :goto_1

    .line 2987
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method clearMetadata()V
    .locals 3

    .prologue
    .line 2654
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2655
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2656
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 2381
    sget-object v0, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$BackupState:[I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2398
    :goto_0
    return-void

    .line 2383
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->beginBackup()V

    goto :goto_0

    .line 2387
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeNextAgent()V

    goto :goto_0

    .line 2391
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->finalizeBackup()V

    .line 2395
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    goto :goto_0

    .line 2393
    :cond_0
    const-string v0, "PerformBackupTask"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$BackupState;

    .prologue
    .line 3019
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeNextState => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3020
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3021
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3022
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3023
    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 4
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2731
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    :goto_0
    return-void

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method finalizeBackup()V
    .locals 6

    .prologue
    .line 2607
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "finishing"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2613
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2614
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove backup journal file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v1, :cond_1

    .line 2621
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "success; recording token"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 2624
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2635
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2636
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 2637
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v3, -0x3e9

    if-ne v1, v3, :cond_2

    .line 2639
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearMetadata()V

    .line 2640
    const-string v1, "PerformBackupTask"

    const-string v3, "Server requires init; rerunning"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "init required; rerunning"

    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2642
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    .line 2644
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2647
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2648
    const-string v1, "BackupManagerService"

    const-string v2, "Backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2650
    return-void

    .line 2625
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "transport threw returning token"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_0

    .line 2644
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleTimeout()V
    .locals 4

    .prologue
    .line 2958
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2961
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2962
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    .line 2963
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2964
    return-void
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2662
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2665
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    .line 2666
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 2667
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 2670
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2671
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2672
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2674
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v4

    .line 2679
    .local v4, "token":I
    :try_start_0
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2682
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2683
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    const/high16 v1, 0x18000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2693
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2698
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2699
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELinux restorecon failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2708
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "setting timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2709
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 2710
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "calling agent doBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2711
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move v0, v7

    .line 2726
    :goto_0
    return v0

    .line 2712
    :catch_0
    move-exception v6

    .line 2713
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error invoking for backup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2715
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2717
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    .line 2718
    const/16 v0, -0x3eb

    goto :goto_0
.end method

.method invokeNextAgent()V
    .locals 12

    .prologue
    const/16 v11, -0x3ec

    const/16 v10, -0x3eb

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 2499
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2500
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2504
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2505
    const-string v5, "PerformBackupTask"

    const-string v6, "queue now empty"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2604
    :goto_0
    return-void

    .line 2511
    :cond_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2512
    .local v4, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2514
    const-string v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "starting agent for backup of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2523
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2525
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 2529
    const-string v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no longer supports backup; skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v7, "skipping - no agent, completion is noop"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2532
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2572
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2576
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_4

    .line 2577
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2578
    .local v3, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2582
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_2

    .line 2585
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2586
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2587
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2598
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_0

    .line 2588
    :cond_2
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_3

    .line 2591
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_1

    .line 2594
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2595
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_1

    .line 2601
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2536
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x200000

    and-int/2addr v5, v7

    if-eqz v5, :cond_a

    .line 2540
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v7, "skipping - stopped"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2541
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2572
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2576
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_9

    .line 2577
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2578
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2582
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_7

    .line 2585
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2586
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2587
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2598
    :cond_6
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_0

    .line 2588
    :cond_7
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_8

    .line 2591
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_2

    .line 2594
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2595
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_2

    .line 2601
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_9
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2545
    :cond_a
    const/4 v0, 0x0

    .line 2547
    .local v0, "agent":Landroid/app/IBackupAgent;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v7, Landroid/os/WorkSource;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v8}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2548
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 2550
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "agent bound; a? = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2551
    if-eqz v0, :cond_d

    .line 2552
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2553
    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v5, v0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v5

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2572
    :goto_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2576
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_11

    .line 2577
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2578
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2582
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_f

    .line 2585
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2586
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2587
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2598
    :cond_b
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_0

    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_c
    move v5, v6

    .line 2550
    goto :goto_3

    .line 2559
    :cond_d
    const/16 v5, -0x3eb

    :try_start_3
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2561
    :catch_0
    move-exception v2

    .line 2563
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_4
    const-string v5, "PerformBackupTask"

    const-string v7, "error in bind/backup"

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2564
    const/16 v5, -0x3eb

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2565
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v7, "agent SE"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 2567
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2568
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v5, "PerformBackupTask"

    const-string v7, "Package does not exist; skipping"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v7, "no such package"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2570
    const/16 v5, -0x3ec

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2572
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2576
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_14

    .line 2577
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2578
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2582
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v10, :cond_12

    .line 2585
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2586
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2587
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2598
    :cond_e
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_0

    .line 2588
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :cond_f
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_10

    .line 2591
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_5

    .line 2594
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2595
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_5

    .line 2601
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_11
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2588
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_12
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_13

    .line 2591
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_6

    .line 2594
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2595
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_6

    .line 2601
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_14
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2572
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2576
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_18

    .line 2577
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2578
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2582
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v7, v10, :cond_16

    .line 2585
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2586
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2587
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2598
    :cond_15
    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2601
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_8
    throw v5

    .line 2588
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_16
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v7, v11, :cond_17

    .line 2591
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_7

    .line 2594
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2595
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_7

    .line 2601
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_18
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v7, "expecting completion/timeout callback"

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public operationComplete()V
    .locals 18

    .prologue
    .line 2818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2819
    .local v11, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 2820
    .local v6, "filepos":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-nez v14, :cond_1

    .line 2821
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Backup data was null: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 2822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "backup data was null: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2823
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    .line 2950
    :cond_0
    :goto_0
    return-void

    .line 2826
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 2830
    .local v5, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_9

    .line 2832
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v15, 0x10000000

    invoke-static {v14, v15}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 2834
    .local v12, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v8, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v8, v14}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2836
    .local v8, "in":Landroid/app/backup/BackupDataInput;
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2837
    invoke-virtual {v8}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 2838
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_6

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xff00

    if-lt v14, v15, :cond_6

    .line 2840
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Illegal backup key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 2841
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "illegal key "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2842
    const/16 v14, 0xb07

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    const/16 v16, 0x1

    const-string v17, "bad key"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2844
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2845
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2852
    if-eqz v12, :cond_0

    .line 2853
    :try_start_2
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2860
    .end local v8    # "in":Landroid/app/backup/BackupDataInput;
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 2865
    .local v3, "e":Ljava/io/IOException;
    const-string v14, "PerformBackupTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to save widget state for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :try_start_3
    invoke-static {v5, v6, v7}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2876
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2877
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 2878
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v15, "operation complete"

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2880
    const/4 v2, 0x0

    .line 2881
    .local v2, "backupData":Landroid/os/ParcelFileDescriptor;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2883
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    .line 2884
    .local v13, "size":I
    if-lez v13, :cond_b

    .line 2885
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v14, :cond_2

    .line 2886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v15, 0x10000000

    invoke-static {v14, v15}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2888
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v15, "sending data to transport"

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2889
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v14, v15, v2}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2897
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "data delivered: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2898
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v14, :cond_a

    .line 2899
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v15, "finishing op on transport"

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2901
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "finished: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2910
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v14, :cond_d

    .line 2914
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 2915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2916
    const/16 v14, 0xb08

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    const/16 v16, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2917
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v14, v11}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2933
    :goto_4
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2937
    .end local v13    # "size":I
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v15, -0x3ea

    if-ne v14, v15, :cond_10

    .line 2941
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2949
    .local v10, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_0

    .line 2849
    .end local v2    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .restart local v8    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v12    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_6
    :try_start_6
    invoke-virtual {v8}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 2852
    .end local v9    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v14

    if-eqz v12, :cond_7

    .line 2853
    :try_start_7
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_7
    throw v14

    .line 2852
    :cond_8
    if-eqz v12, :cond_9

    .line 2853
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2859
    .end local v8    # "in":Landroid/app/backup/BackupDataInput;
    .end local v12    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 2868
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 2869
    .local v4, "ee":Landroid/system/ErrnoException;
    const-string v14, "PerformBackupTask"

    const-string v15, "Unable to roll back!"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2902
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ee":Landroid/system/ErrnoException;
    .restart local v2    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "size":I
    :cond_a
    :try_start_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v15, -0x3ea

    if-ne v14, v15, :cond_3

    .line 2903
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v15, "transport rejected package"

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 2928
    .end local v13    # "size":I
    :catch_2
    move-exception v3

    .line 2929
    .local v3, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v14, "PerformBackupTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Transport error backing up "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2930
    const/16 v14, 0xb06

    invoke-static {v14, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2931
    const/16 v14, -0x3e8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2933
    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    :catch_3
    move-exception v14

    goto/16 :goto_5

    .line 2906
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v13    # "size":I
    :cond_b
    :try_start_b
    const-string v14, "PerformBackupTask"

    const-string v15, "no backup data written; not calling transport"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v15, "no data to send"

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    .line 2933
    .end local v13    # "size":I
    :catchall_1
    move-exception v14

    if-eqz v2, :cond_c

    :try_start_c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_c
    :goto_7
    throw v14

    .line 2918
    .restart local v13    # "size":I
    :cond_d
    :try_start_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v15, -0x3ea

    if-ne v14, v15, :cond_e

    .line 2921
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 2922
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 2923
    const-string v14, "Transport rejected"

    invoke-static {v11, v14}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2926
    :cond_e
    const/16 v14, 0xb06

    invoke-static {v14, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    .line 2941
    .end local v13    # "size":I
    :cond_f
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto/16 :goto_6

    .line 2945
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2946
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_6

    .line 2933
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .restart local v13    # "size":I
    :catch_4
    move-exception v14

    goto/16 :goto_5

    .end local v13    # "size":I
    :catch_5
    move-exception v15

    goto :goto_7
.end method

.method restartBackupAlarm()V
    .locals 4

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "setting backup trigger"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3009
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3011
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v2

    # invokes: Lcom/android/server/backup/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3013
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 3014
    return-void

    .line 3013
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3012
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method revertAndEndBackup()V
    .locals 4

    .prologue
    .line 2968
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "transport error; reverting"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2969
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2970
    .local v1, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 2974
    .end local v1    # "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->restartBackupAlarm()V

    .line 2975
    return-void
.end method
