.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

.field mIgnoreEncryptionPasswordCheck:Z

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mNoninteractive:Z

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 2
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "ignoreEncryptionPasswordCheck"    # Z
    .param p6, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p7, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p8, "noninteractive"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5645
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5622
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 5623
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 5624
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    .line 5630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 5634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 5637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 5641
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 6348
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    .line 6349
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    .line 5646
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 5647
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 5648
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 5649
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 5650
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5651
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 5652
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 5653
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 5654
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 5655
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mNoninteractive:Z

    .line 5656
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mIgnoreEncryptionPasswordCheck:Z

    .line 5660
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5661
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5662
    return-void
.end method

.method private HEXLOG([B)V
    .locals 11
    .param p1, "block"    # [B

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6803
    const/4 v3, 0x0

    .line 6804
    .local v3, "offset":I
    array-length v4, p1

    .line 6805
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6806
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 6807
    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6808
    if-le v4, v5, :cond_0

    move v2, v5

    .line 6809
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 6810
    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6809
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    .line 6808
    goto :goto_1

    .line 6812
    .restart local v1    # "i":I
    .restart local v2    # "numThisLine":I
    :cond_1
    const-string v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6813
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6814
    sub-int/2addr v4, v2

    .line 6815
    add-int/2addr v3, v2

    .line 6816
    goto :goto_0

    .line 6817
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method


# virtual methods
.method attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 24
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    .prologue
    .line 5819
    const/16 v17, 0x0

    .line 5822
    .local v17, "result":Ljava/io/InputStream;
    :try_start_0
    const-string v20, "AES/CBC/PKCS5Padding"

    invoke-static/range {v20 .. v20}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 5823
    .local v6, "c":Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move/from16 v4, p4

    # invokes: Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$1400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v19

    .line 5825
    .local v19, "userKey":Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v5

    .line 5826
    .local v5, "IV":[B
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 5827
    .local v9, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x2

    new-instance v21, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v19 .. v19}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v22

    const-string v23, "AES"

    invoke-direct/range {v21 .. v23}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v14

    .line 5831
    .local v14, "mkCipher":[B
    invoke-virtual {v6, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v12

    .line 5834
    .local v12, "mkBlob":[B
    const/4 v15, 0x0

    .line 5835
    .local v15, "offset":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    aget-byte v10, v12, v15

    .line 5836
    .local v10, "len":I
    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 5837
    add-int/lit8 v15, v10, 0x1

    .line 5839
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    aget-byte v10, v12, v15

    .line 5840
    add-int v20, v16, v10

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 5842
    .local v11, "mk":[B
    add-int v15, v16, v10

    .line 5844
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    aget-byte v10, v12, v15

    .line 5845
    add-int v20, v16, v10

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 5849
    .local v13, "mkChecksum":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    # invokes: Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v11, v2, v3}, Lcom/android/server/backup/BackupManagerService;->access$1700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v7

    .line 5850
    .local v7, "calculatedCk":[B
    invoke-static {v7, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 5851
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    .end local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v9, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 5852
    .restart local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x2

    new-instance v21, Ljavax/crypto/spec/SecretKeySpec;

    const-string v22, "AES"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5856
    new-instance v18, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .end local v17    # "result":Ljava/io/InputStream;
    .local v18, "result":Ljava/io/InputStream;
    move-object/from16 v17, v18

    .line 5876
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v10    # "len":I
    .end local v11    # "mk":[B
    .end local v12    # "mkBlob":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkCipher":[B
    .end local v16    # "offset":I
    .end local v18    # "result":Ljava/io/InputStream;
    .end local v19    # "userKey":Ljavax/crypto/SecretKey;
    .restart local v17    # "result":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v17

    .line 5857
    .restart local v5    # "IV":[B
    .restart local v6    # "c":Ljavax/crypto/Cipher;
    .restart local v7    # "calculatedCk":[B
    .restart local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v10    # "len":I
    .restart local v11    # "mk":[B
    .restart local v12    # "mkBlob":[B
    .restart local v13    # "mkChecksum":[B
    .restart local v14    # "mkCipher":[B
    .restart local v16    # "offset":I
    .restart local v19    # "userKey":Ljavax/crypto/SecretKey;
    :cond_1
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Incorrect password"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 5858
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v10    # "len":I
    .end local v11    # "mk":[B
    .end local v12    # "mkBlob":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkCipher":[B
    .end local v16    # "offset":I
    .end local v19    # "userKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v8

    .line 5859
    .local v8, "e":Ljava/security/InvalidAlgorithmParameterException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Needed parameter spec unavailable!"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5860
    .end local v8    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v8

    .line 5865
    .local v8, "e":Ljavax/crypto/BadPaddingException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Incorrect password"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5866
    .end local v8    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v8

    .line 5867
    .local v8, "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Invalid block size in master key"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5868
    .end local v8    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v8

    .line 5869
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Needed decryption algorithm unavailable!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5870
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v8

    .line 5871
    .local v8, "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Needed padding mechanism unavailable!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5872
    .end local v8    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v8

    .line 5873
    .local v8, "e":Ljava/security/InvalidKeyException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Illegal password; aborting"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 14
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    .prologue
    .line 5881
    const/4 v12, 0x0

    .line 5883
    .local v12, "result":Ljava/io/InputStream;
    :try_start_0
    const-string v1, "AES-256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5885
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 5886
    .local v13, "userSaltHex":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v1, v13}, Lcom/android/server/backup/BackupManagerService;->access$1900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v3

    .line 5888
    .local v3, "userSalt":[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 5889
    .local v10, "ckSaltHex":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v1, v10}, Lcom/android/server/backup/BackupManagerService;->access$1900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    .line 5891
    .local v4, "ckSalt":[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5892
    .local v5, "rounds":I
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 5894
    .local v6, "userIvHex":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 5897
    .local v7, "masterKeyBlobHex":Ljava/lang/String;
    const-string v2, "PBKDF2WithHmacSHA1"

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 5899
    if-nez v12, :cond_0

    if-eqz p2, :cond_0

    .line 5900
    const-string v2, "PBKDF2WithHmacSHA1And8bit"

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 5910
    .end local v3    # "userSalt":[B
    .end local v4    # "ckSalt":[B
    .end local v5    # "rounds":I
    .end local v6    # "userIvHex":Ljava/lang/String;
    .end local v7    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v10    # "ckSaltHex":Ljava/lang/String;
    .end local v13    # "userSaltHex":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v12

    .line 5903
    :cond_1
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported encryption method: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5904
    :catch_0
    move-exception v11

    .line 5905
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v1, "BackupManagerService"

    const-string v2, "Can\'t parse restore data header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5906
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v11

    .line 5907
    .local v11, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Can\'t read input header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v12, 0x0

    const/16 v3, 0x2d

    .line 6674
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6677
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    const/16 v2, 0x64

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6678
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6679
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6680
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_3

    move v2, v6

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6681
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6682
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_5

    move v2, v5

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6683
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_6

    move v2, v6

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6684
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_7

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6685
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_8

    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6686
    iget-wide v4, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v8, 0x1

    and-long/2addr v4, v8

    cmp-long v2, v4, v12

    if-eqz v2, :cond_9

    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6687
    const-string v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6689
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 6690
    .local v1, "stamp":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6692
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6693
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6694
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6695
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6696
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6698
    const-string v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6700
    return-void

    .end local v1    # "stamp":Ljava/util/Date;
    :cond_0
    move v2, v3

    .line 6677
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 6678
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 6679
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 6680
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 6681
    goto/16 :goto_4

    :cond_5
    move v2, v3

    .line 6682
    goto/16 :goto_5

    :cond_6
    move v2, v3

    .line 6683
    goto/16 :goto_6

    :cond_7
    move v4, v3

    .line 6684
    goto :goto_7

    :cond_8
    move v5, v3

    .line 6685
    goto :goto_8

    :cond_9
    move v6, v3

    .line 6686
    goto :goto_9
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6655
    array-length v1, p1

    .line 6656
    .local v1, "end":I
    if-lt p2, v1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6659
    :cond_0
    move v2, p2

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6660
    aget-byte v0, p1, v2

    .line 6663
    .local v0, "c":B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 6667
    .end local v0    # "c":B
    :cond_1
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    .line 6668
    add-int/lit8 v2, v2, 0x1

    .line 6669
    return v2

    .line 6659
    .restart local v0    # "c":B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6905
    const-wide/16 v4, 0x0

    .line 6906
    .local v4, "value":J
    add-int v1, p2, p3

    .line 6907
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6908
    aget-byte v0, p1, v2

    .line 6910
    .local v0, "b":B
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 6916
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    .line 6911
    .restart local v0    # "b":B
    :cond_1
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    add-int/lit8 v3, p4, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 6912
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6914
    :cond_3
    int-to-long v6, p4

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 6907
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6920
    add-int v0, p2, p3

    .line 6921
    .local v0, "end":I
    move v1, p2

    .line 6923
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6924
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 22
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 6352
    const/4 v9, 0x1

    .line 6354
    .local v9, "okay":Z
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing from backup: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6358
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6360
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6361
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 6362
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 6363
    .local v14, "size":J
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_2

    .line 6364
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-gez v18, :cond_1

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 6365
    .local v16, "toRead":J
    :goto_1
    const/16 v18, 0x0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 6366
    .local v7, "didRead":I
    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6367
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 6368
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 6369
    goto :goto_0

    .end local v7    # "didRead":I
    .end local v16    # "toRead":J
    :cond_1
    move-wide/from16 v16, v14

    .line 6364
    goto :goto_1

    .line 6370
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 6373
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6376
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 6377
    .local v10, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->reset()V

    .line 6378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 6381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    .line 6383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 6387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 6388
    const/4 v9, 0x0

    .line 6447
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 6450
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_3
    return v9

    .line 6392
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_4
    const/4 v13, 0x0

    .line 6393
    .local v13, "uninstall":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 6394
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6398
    const/4 v9, 0x0

    .line 6399
    const/4 v13, 0x1

    .line 6436
    :cond_5
    :goto_4
    if-eqz v13, :cond_3

    .line 6437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->reset()V

    .line 6438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 6440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 6443
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catch_0
    move-exception v8

    .line 6444
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6445
    const/4 v9, 0x0

    .line 6447
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 6402
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v13    # "uninstall":Z
    .restart local v14    # "size":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 6404
    .local v11, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_7

    .line 6405
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6407
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 6410
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 6411
    .local v12, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v12, v11}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 6414
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 6416
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has restricted uid and no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6418
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 6421
    :cond_8
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6423
    const/4 v9, 0x0

    .line 6424
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 6427
    .end local v11    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "sigs":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    .line 6428
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6430
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 6447
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catchall_0
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .locals 22
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6533
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 6534
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6537
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 6538
    .local v4, "buffer":[B
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 6539
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6542
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 6543
    .local v14, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 6544
    .local v16, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 6547
    .local v11, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6548
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 6549
    .local v17, "version":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 6550
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6551
    const/16 v18, 0x0

    aget-object v9, v16, v18

    .line 6553
    .local v9, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 6554
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6555
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 6556
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6557
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 6558
    .local v13, "platformVersion":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6559
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    const/16 v18, 0x0

    aget-object v18, v16, v18

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 6560
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6561
    const/16 v18, 0x0

    aget-object v18, v16, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 6562
    .local v7, "hasApk":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6563
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 6564
    .local v10, "numSigs":I
    if-lez v10, :cond_b

    .line 6565
    new-array v15, v10, [Landroid/content/pm/Signature;

    .line 6566
    .local v15, "sigs":[Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 6567
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 6568
    new-instance v18, Landroid/content/pm/Signature;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v18, v15, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6566
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 6540
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v11    # "offset":I
    .end local v13    # "platformVersion":I
    .end local v14    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "str":[Ljava/lang/String;
    .end local v17    # "version":I
    :cond_1
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unexpected EOF in manifest"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6559
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v11    # "offset":I
    .restart local v13    # "platformVersion":I
    .restart local v14    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .restart local v16    # "str":[Ljava/lang/String;
    .restart local v17    # "version":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 6570
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v10    # "numSigs":I
    .restart local v15    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6574
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 6577
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6578
    .local v6, "flags":I
    const v18, 0x8000

    and-int v18, v18, v6

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mNoninteractive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 6582
    :cond_4
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 6591
    :cond_5
    invoke-static {v15, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 6592
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 6593
    const-string v18, "BackupManagerService"

    const-string v19, "Sig + version match; taking data"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6594
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6627
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_3
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_6

    if-nez v7, :cond_6

    .line 6628
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot restore package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " without the matching .apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6649
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v13    # "platformVersion":I
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    .end local v17    # "version":I
    :cond_6
    :goto_3
    return-object v14

    .line 6599
    .restart local v6    # "flags":I
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v13    # "platformVersion":I
    .restart local v15    # "sigs":[Landroid/content/pm/Signature;
    .restart local v17    # "version":I
    :cond_7
    :try_start_4
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Data version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is newer than installed version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - requiring apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6602
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->MISMATCH_VERSION:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_2

    .line 6605
    :cond_8
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6607
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->MISMATCH_SIGNATURE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_2

    .line 6610
    :cond_9
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is system level with no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 6618
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 6622
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not installed; requiring apk in dataset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6624
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 6614
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "flags":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_a
    :try_start_6
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but allowBackup=false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6616
    sget-object v14, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->NOT_ALLOWED:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 6632
    .end local v6    # "flags":I
    .end local v8    # "i":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "sigs":[Landroid/content/pm/Signature;
    :cond_b
    :try_start_7
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing signature on backed-up package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 6643
    .end local v7    # "hasApk":Z
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v13    # "platformVersion":I
    .end local v17    # "version":I
    :catch_1
    move-exception v5

    .line 6644
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Corrupt restore manifest for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6636
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v17    # "version":I
    :cond_c
    :try_start_8
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but restore manifest claims "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    .line 6645
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v17    # "version":I
    :catch_2
    move-exception v5

    .line 6646
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v18, "BackupManagerService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6640
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "version":I
    :cond_d
    :try_start_9
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown restore manifest version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6824
    if-gtz p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6826
    :cond_0
    const/4 v1, 0x0

    .line 6827
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 6828
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 6829
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    .line 6835
    .end local v0    # "nRead":I
    :cond_1
    return v1

    .line 6833
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    .line 6834
    goto :goto_0
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5808
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5809
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c":I
    if-ltz v1, :cond_0

    .line 5810
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 5813
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 5811
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V
    .locals 16
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6469
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x10000

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 6470
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6473
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v11, v12

    new-array v3, v11, [B

    .line 6474
    .local v3, "buffer":[B
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v11, v12}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 6475
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6478
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    .line 6479
    .local v8, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 6480
    .local v5, "offset":I
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 6481
    .local v10, "version":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 6482
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 6483
    const/4 v11, 0x0

    aget-object v6, v8, v11

    .line 6484
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 6487
    new-instance v2, Ljava/io/ByteArrayInputStream;

    array-length v11, v3

    sub-int/2addr v11, v5

    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 6489
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6490
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    if-lez v11, :cond_4

    .line 6491
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 6492
    .local v9, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 6493
    .local v7, "size":I
    const/high16 v11, 0x10000

    if-le v7, v11, :cond_2

    .line 6494
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Datum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6476
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "offset":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "token":I
    .end local v10    # "version":I
    :cond_1
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unexpected EOF in widget data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6498
    .restart local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "offset":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "str":[Ljava/lang/String;
    .restart local v9    # "token":I
    .restart local v10    # "version":I
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 6511
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring metadata blob "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6515
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 6504
    :pswitch_0
    new-array v11, v7, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    .line 6505
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_0

    .line 6521
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "size":I
    .end local v9    # "token":I
    :cond_3
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata mismatch: package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but widget data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6527
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 6525
    :cond_5
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported metadata version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6498
    nop

    :pswitch_data_0
    .packed-switch 0x1ffed01
        :pswitch_0
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 16
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6850
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x8000

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 6851
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Suspiciously large pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - aborting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6853
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sanity failure: pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6857
    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const/16 v14, 0x9

    shr-long/2addr v12, v14

    long-to-int v8, v12

    .line 6858
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    new-array v3, v12, [B

    .line 6859
    .local v3, "data":[B
    const/4 v12, 0x0

    array-length v13, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 6860
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Unable to read full pax header"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6862
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    array-length v14, v3

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6864
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v2, v12

    .line 6865
    .local v2, "contentSize":I
    const/4 v9, 0x0

    .line 6868
    .local v9, "offset":I
    :cond_2
    add-int/lit8 v4, v9, 0x1

    .line 6869
    .local v4, "eol":I
    :goto_0
    if-ge v4, v2, :cond_3

    aget-byte v12, v3, v4

    const/16 v13, 0x20

    if-eq v12, v13, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6870
    :cond_3
    if-lt v4, v2, :cond_4

    .line 6872
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6875
    :cond_4
    sub-int v12, v4, v9

    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v12

    long-to-int v7, v12

    .line 6876
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    .line 6877
    .local v5, "key":I
    add-int v12, v9, v7

    add-int/lit8 v4, v12, -0x1

    .line 6879
    add-int/lit8 v11, v5, 0x1

    .local v11, "value":I
    :goto_1
    aget-byte v12, v3, v11

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_5

    if-gt v11, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6880
    :cond_5
    if-le v11, v4, :cond_6

    .line 6881
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax declaration"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6885
    :cond_6
    new-instance v6, Ljava/lang/String;

    sub-int v12, v11, v5

    const-string v13, "UTF-8"

    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 6887
    .local v6, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    const-string v14, "UTF-8"

    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 6889
    .local v10, "valStr":Ljava/lang/String;
    const-string v12, "path"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 6890
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 6897
    :goto_2
    add-int/2addr v9, v7

    .line 6898
    if-lt v9, v2, :cond_2

    .line 6900
    const/4 v12, 0x1

    return v12

    .line 6891
    :cond_7
    const-string v12, "size"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 6892
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_2

    .line 6894
    :cond_8
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 6839
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 6840
    .local v0, "got":I
    if-nez v0, :cond_0

    .line 6843
    :goto_0
    return v1

    .line 6841
    :cond_0
    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6842
    :cond_1
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    const-wide/16 v4, 0x200

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6843
    const/4 v1, 0x1

    goto :goto_0
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .locals 13
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6703
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 6704
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 6706
    .local v3, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 6707
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    .line 6710
    :try_start_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6711
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v4, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 6712
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    .line 6713
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    .line 6715
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 6716
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 6717
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 6718
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 6719
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 6723
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 6724
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 6726
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 6727
    if-eqz v2, :cond_2

    .line 6730
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 6732
    :cond_2
    if-nez v2, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6791
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 6793
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :goto_0
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->HEXLOG([B)V

    .line 6796
    throw v1

    .line 6734
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 6737
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 6753
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6754
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6738
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 6761
    :cond_5
    :goto_1
    const-string v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 6764
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 6765
    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 6766
    const-string v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 6767
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_7
    move-object v8, v3

    .line 6799
    :goto_3
    return-object v8

    .line 6740
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 6741
    iget-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 6742
    const-string v8, "BackupManagerService"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6743
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_1

    .line 6749
    :sswitch_2
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6750
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_3

    .line 6768
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_8
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6773
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 6776
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6777
    .local v6, "slash":I
    if-gez v6, :cond_9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6778
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 6779
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 6783
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 6785
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6786
    if-gez v6, :cond_a

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6787
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 6788
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 6791
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 6737
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)I
    .locals 45
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    .prologue
    .line 5914
    const/16 v41, 0x1

    .line 5917
    .local v41, "result":I
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;

    move-result-object v33

    .line 5918
    .local v33, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    if-eqz v33, :cond_1c

    .line 5923
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 5924
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5927
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5928
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5933
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_1

    .line 5934
    const-string v5, "BackupManagerService"

    const-string v7, "Saw new package; finalizing old one"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5936
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 5937
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5938
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 5939
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 5943
    :cond_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_manifest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5944
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5949
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 5950
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6233
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mNoninteractive:Z

    if-eqz v5, :cond_1d

    move/from16 v5, v41

    .line 6236
    :goto_1
    return v5

    .line 5951
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_meta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5953
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V

    .line 5954
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6224
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v33    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_0
    move-exception v32

    .line 6225
    .local v32, "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v7, "io exception on restore socket read"

    move-object/from16 v0, v32

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6227
    const/16 v33, 0x0

    .line 6228
    .restart local v33    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v41, -0x1

    goto :goto_0

    .line 5958
    .end local v32    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_4
    const/16 v35, 0x1

    .line 5959
    .local v35, "okay":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 5960
    .local v40, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    sget-object v5, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 6035
    const-string v5, "BackupManagerService"

    const-string v7, "Invalid policy from manifest"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    const/16 v35, 0x0

    .line 6037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6038
    const/16 v41, -0x1

    .line 6043
    :cond_5
    :goto_2
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, ".."

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6047
    :cond_6
    const/16 v35, 0x0

    .line 6052
    :cond_7
    if-eqz v35, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_8

    .line 6053
    const-string v5, "BackupManagerService"

    const-string v7, "Reusing existing agent instance"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6055
    :cond_8
    if-eqz v35, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_9

    .line 6056
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6059
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 6063
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 6067
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_15

    .line 6068
    const-string v5, "BackupManagerService"

    const-string v7, "Clearing app data preparatory to full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 6074
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6080
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->setUpPipes()V

    .line 6081
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 6083
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6090
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_9

    .line 6091
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    const/16 v35, 0x0

    .line 6093
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 6094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6095
    const/16 v41, -0x1

    .line 6101
    :cond_9
    if-eqz v35, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 6102
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but agent is for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6104
    const/16 v35, 0x0

    .line 6105
    const/16 v41, -0x1

    .line 6112
    :cond_a
    if-eqz v35, :cond_f

    .line 6113
    const/4 v4, 0x1

    .line 6114
    .local v4, "agentSuccess":Z
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v42, v0

    .line 6115
    .local v42, "toCopy":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v16

    .line 6117
    .local v16, "token":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 6118
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "obb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 6119
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring OBB file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, v33

    iget v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move-object/from16 v0, v33

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-object/from16 v0, v33

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 6161
    :goto_6
    if-eqz v35, :cond_e

    .line 6162
    const/16 v39, 0x1

    .line 6163
    .local v39, "pipeOkay":Z
    :try_start_6
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6165
    .local v38, "pipe":Ljava/io/FileOutputStream;
    :cond_b
    :goto_7
    const-wide/16 v8, 0x0

    cmp-long v5, v42, v8

    if-lez v5, :cond_d

    .line 6166
    move-object/from16 v0, p2

    array-length v5, v0

    int-to-long v8, v5

    cmp-long v5, v42, v8

    if-lez v5, :cond_19

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v44, v0

    .line 6168
    .local v44, "toRead":I
    :goto_8
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v44

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v36

    .line 6169
    .local v36, "nRead":I
    if-ltz v36, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move/from16 v0, v36

    int-to-long v12, v0

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6170
    :cond_c
    if-gtz v36, :cond_1a

    .line 6187
    .end local v36    # "nRead":I
    .end local v44    # "toRead":I
    :cond_d
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 6191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    .line 6196
    .end local v38    # "pipe":Ljava/io/FileOutputStream;
    .end local v39    # "pipeOkay":Z
    :cond_e
    if-nez v4, :cond_f

    .line 6197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 6198
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 6199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6200
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 6201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6208
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v42    # "toCopy":J
    :cond_f
    if-nez v35, :cond_2

    .line 6209
    const-string v5, "BackupManagerService"

    const-string v7, "[discarding file content]"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6210
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v8, v12

    const-wide/16 v12, -0x200

    and-long v30, v8, v12

    .line 6211
    .local v30, "bytesToConsume":J
    :goto_9
    const-wide/16 v8, 0x0

    cmp-long v5, v30, v8

    if-lez v5, :cond_2

    .line 6212
    move-object/from16 v0, p2

    array-length v5, v0

    int-to-long v8, v5

    cmp-long v5, v30, v8

    if-lez v5, :cond_1b

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v44, v0

    .line 6214
    .restart local v44    # "toRead":I
    :goto_a
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v44

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v36, v0

    .line 6215
    .local v36, "nRead":J
    const-wide/16 v8, 0x0

    cmp-long v5, v36, v8

    if-ltz v5, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    add-long v8, v8, v36

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6216
    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v5, v36, v8

    if-lez v5, :cond_2

    .line 6217
    sub-long v30, v30, v36

    .line 6218
    goto :goto_9

    .line 5962
    .end local v30    # "bytesToConsume":J
    .end local v36    # "nRead":J
    .end local v44    # "toRead":I
    :pswitch_0
    const/16 v35, 0x0

    .line 5963
    const/16 v41, -0x1

    .line 5964
    goto/16 :goto_2

    .line 5969
    :pswitch_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 5970
    const-string v5, "BackupManagerService"

    const-string v7, "APK file; installing"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5972
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 5973
    .local v34, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v35

    .line 5975
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v35, :cond_11

    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    :goto_b
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5981
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    move/from16 v5, v41

    .line 5982
    goto/16 :goto_1

    .line 5975
    :cond_11
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_b

    .line 5986
    .end local v34    # "installerName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5987
    const/16 v35, 0x0

    .line 5988
    const/16 v41, -0x1

    .line 5990
    goto/16 :goto_2

    .line 5993
    :pswitch_2
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5994
    const-string v5, "BackupManagerService"

    const-string v7, "apk present but ACCEPT"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5999
    const/16 v35, 0x0

    .line 6000
    const/16 v41, -0x1

    goto/16 :goto_2

    .line 6004
    :pswitch_3
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 6006
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 6007
    .restart local v34    # "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v35

    .line 6009
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v35, :cond_13

    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    :goto_c
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6015
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    move/from16 v5, v41

    .line 6016
    goto/16 :goto_1

    .line 6009
    :cond_13
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_c

    .line 6018
    .end local v34    # "installerName":Ljava/lang/String;
    :cond_14
    const/16 v35, 0x0

    .line 6019
    const/16 v41, -0x5

    .line 6021
    goto/16 :goto_2

    .line 6023
    :pswitch_4
    const/16 v35, 0x0

    .line 6024
    const/16 v41, -0x6

    .line 6025
    goto/16 :goto_2

    .line 6027
    :pswitch_5
    const/16 v35, 0x0

    .line 6028
    const/16 v41, -0x7

    .line 6029
    goto/16 :goto_2

    .line 6071
    :cond_15
    :try_start_7
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backup agent ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") => no clear"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6084
    :catch_1
    move-exception v5

    goto/16 :goto_5

    .line 6076
    :cond_16
    const-string v5, "BackupManagerService"

    const-string v7, "We\'ve initialized this app already; no clear required"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 6086
    :catch_2
    move-exception v5

    goto/16 :goto_5

    .line 6125
    .restart local v4    # "agentSuccess":Z
    .restart local v16    # "token":I
    .restart local v42    # "toCopy":J
    :cond_17
    :try_start_8
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invoking agent to restore file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v7, "system"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 6132
    const-string v5, "BackupManagerService"

    const-string v7, "system process agent - spinning a thread"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6133
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v15, v5, v7

    move-object/from16 v12, p0

    move-object/from16 v14, v33

    invoke-direct/range {v11 .. v16}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 6135
    .local v11, "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    const-string v7, "restore-sys-runner"

    invoke-direct {v5, v11, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_6

    .line 6142
    .end local v11    # "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    :catch_3
    move-exception v32

    .line 6144
    .restart local v32    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v5, "BackupManagerService"

    const-string v7, "Couldn\'t establish restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 6145
    const/4 v4, 0x0

    .line 6146
    const/16 v35, 0x0

    .line 6147
    const/16 v41, -0x1

    .line 6158
    goto/16 :goto_6

    .line 6137
    .end local v32    # "e":Ljava/io/IOException;
    :cond_18
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v18, v5, v7

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move/from16 v21, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v29, v0

    move/from16 v28, v16

    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_6

    .line 6148
    :catch_4
    move-exception v32

    .line 6151
    .local v32, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v5, "BackupManagerService"

    const-string v7, "Agent crashed during full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 6152
    const/4 v4, 0x0

    .line 6153
    const/16 v35, 0x0

    .line 6154
    const/16 v41, -0x1

    .line 6158
    goto/16 :goto_6

    .line 6155
    .end local v32    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v32

    .line 6156
    .local v32, "e":Ljava/lang/Exception;
    const/16 v35, 0x0

    .line 6157
    const/16 v41, -0x1

    goto/16 :goto_6

    .line 6166
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v38    # "pipe":Ljava/io/FileOutputStream;
    .restart local v39    # "pipeOkay":Z
    :cond_19
    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v44, v0

    goto/16 :goto_8

    .line 6171
    .local v36, "nRead":I
    .restart local v44    # "toRead":I
    :cond_1a
    move/from16 v0, v36

    int-to-long v8, v0

    sub-long v42, v42, v8

    .line 6175
    if-eqz v39, :cond_b

    .line 6177
    const/4 v5, 0x0

    :try_start_c
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_7

    .line 6178
    :catch_6
    move-exception v32

    .line 6179
    .local v32, "e":Ljava/io/IOException;
    :try_start_d
    const-string v5, "BackupManagerService"

    const-string v7, "Failed to write to restore pipe"

    move-object/from16 v0, v32

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 6180
    const/16 v39, 0x0

    goto/16 :goto_7

    .line 6212
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v32    # "e":Ljava/io/IOException;
    .end local v36    # "nRead":I
    .end local v38    # "pipe":Ljava/io/FileOutputStream;
    .end local v39    # "pipeOkay":Z
    .end local v42    # "toCopy":J
    .end local v44    # "toRead":I
    .restart local v30    # "bytesToConsume":J
    :cond_1b
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v44, v0

    goto/16 :goto_a

    .line 6222
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v30    # "bytesToConsume":J
    .end local v35    # "okay":Z
    .end local v40    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :cond_1c
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 6236
    :cond_1d
    if-nez v33, :cond_1e

    move/from16 v5, v41

    goto/16 :goto_1

    :cond_1e
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 5960
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public run()V
    .locals 26

    .prologue
    .line 5698
    const-string v22, "BackupManagerService"

    const-string v23, "--- Performing full-dataset restore ---"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 5700
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendStartRestore()V

    .line 5701
    const/16 v19, 0x0

    .line 5704
    .local v19, "result":I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 5705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const-string v23, "com.android.sharedstoragebackup"

    sget-object v24, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5708
    :cond_0
    const/16 v17, 0x0

    .line 5709
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 5711
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mIgnoreEncryptionPasswordCheck:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 5712
    const-string v22, "BackupManagerService"

    const-string v23, "Backup password mismatch; aborting"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Backup password mismatch; aborting"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 5774
    :catch_0
    move-exception v8

    .line 5775
    .local v8, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string v22, "BackupManagerService"

    const-string v23, "Unable to read restore input"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 5776
    const/16 v19, -0x1

    .line 5780
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 5781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5784
    if-eqz v15, :cond_1

    :try_start_2
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 5785
    :cond_1
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 5786
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5791
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5792
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->clear()V

    .line 5793
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 5794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5795
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 5797
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 5798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 5799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 5800
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestoreWithResult(I)V

    .line 5801
    const-string v22, "BackupManagerService"

    const-string v23, "Full restore pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5804
    .end local v8    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 5716
    :cond_3
    const-wide/16 v22, 0x0

    :try_start_5
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 5717
    const v22, 0x8000

    move/from16 v0, v22

    new-array v5, v0, [B

    .line 5718
    .local v5, "buffer":[B
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 5719
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .local v18, "rawInStream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 5722
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .local v16, "rawDataIn":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 5723
    .local v6, "compressed":Z
    move-object/from16 v14, v18

    .line 5726
    .local v14, "preCompressStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 5727
    .local v12, "okay":Z
    :try_start_7
    const-string v22, "ANDROID BACKUP\n"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v9

    .line 5728
    .local v9, "headerLen":I
    new-array v0, v9, [B

    move-object/from16 v21, v0

    .line 5729
    .local v21, "streamHeader":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 5730
    const-string v22, "ANDROID BACKUP\n"

    const-string v23, "UTF-8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 5731
    .local v11, "magicBytes":[B
    move-object/from16 v0, v21

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 5733
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    .line 5734
    .local v20, "s":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5735
    .local v4, "archiveVersion":I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-gt v4, v0, :cond_e

    .line 5738
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_a

    const/4 v13, 0x1

    .line 5740
    .local v13, "pbkdf2Fallback":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    .line 5741
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_b

    const/4 v6, 0x1

    .line 5742
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    .line 5743
    const-string v22, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 5745
    const/4 v12, 0x1

    .line 5756
    .end local v4    # "archiveVersion":I
    .end local v13    # "pbkdf2Fallback":Z
    .end local v20    # "s":Ljava/lang/String;
    :cond_4
    :goto_5
    if-nez v12, :cond_5

    .line 5757
    const-string v22, "BackupManagerService"

    const-string v23, "Invalid restore data; aborting."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5758
    const/16 v19, -0x1

    .line 5762
    :cond_5
    if-eqz v6, :cond_14

    new-instance v10, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v10, v14}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5764
    .local v10, "in":Ljava/io/InputStream;
    :goto_6
    const/4 v7, 0x1

    .line 5766
    .local v7, "didRestore":I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v7

    .line 5767
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_6

    .line 5769
    if-eqz v7, :cond_7

    .line 5770
    move/from16 v19, v7

    .line 5780
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 5781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5784
    if-eqz v16, :cond_8

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 5785
    :cond_8
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 5786
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 5791
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5792
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->clear()V

    .line 5793
    monitor-exit v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5795
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 5797
    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 5798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 5799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 5800
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestoreWithResult(I)V

    .line 5801
    const-string v22, "BackupManagerService"

    const-string v23, "Full restore pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .line 5803
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 5738
    .end local v7    # "didRestore":I
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v4    # "archiveVersion":I
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v20    # "s":Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 5741
    .restart local v13    # "pbkdf2Fallback":Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 5746
    :cond_c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_d

    .line 5747
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 5749
    if-eqz v14, :cond_4

    .line 5750
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 5752
    :cond_d
    const-string v22, "BackupManagerService"

    const-string v23, "Archive is encrypted but no password given"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5774
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v13    # "pbkdf2Fallback":Z
    .end local v20    # "s":Ljava/lang/String;
    .end local v21    # "streamHeader":[B
    :catch_1
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 5753
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v4    # "archiveVersion":I
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v20    # "s":Ljava/lang/String;
    .restart local v21    # "streamHeader":[B
    :cond_e
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Wrong header version: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_5

    .line 5777
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v20    # "s":Ljava/lang/String;
    .end local v21    # "streamHeader":[B
    :catch_2
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .line 5778
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/lang/SecurityException;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    :goto_8
    const/16 v19, -0x4

    .line 5780
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 5781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5784
    if-eqz v15, :cond_f

    :try_start_c
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 5785
    :cond_f
    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 5786
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 5791
    .end local v8    # "e":Ljava/lang/SecurityException;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5792
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->clear()V

    .line 5793
    monitor-exit v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 5794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5795
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 5797
    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 5798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 5799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 5800
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestoreWithResult(I)V

    .line 5801
    const-string v22, "BackupManagerService"

    const-string v23, "Full restore pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .line 5754
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v21    # "streamHeader":[B
    :cond_11
    :try_start_f
    const-string v22, "BackupManagerService"

    const-string v23, "Didn\'t read the right header magic"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_5

    .line 5780
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v21    # "streamHeader":[B
    :catchall_0
    move-exception v22

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 5781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5784
    if-eqz v15, :cond_12

    :try_start_10
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 5785
    :cond_12
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 5786
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 5791
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5792
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    .line 5793
    monitor-exit v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 5794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5795
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 5797
    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 5798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 5799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 5800
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestoreWithResult(I)V

    .line 5801
    const-string v23, "BackupManagerService"

    const-string v24, "Full restore pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v22

    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v21    # "streamHeader":[B
    :cond_14
    move-object v10, v14

    .line 5762
    goto/16 :goto_6

    .line 5787
    .restart local v7    # "didRestore":I
    .restart local v10    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v8

    .line 5788
    .local v8, "e":Ljava/io/IOException;
    const-string v22, "BackupManagerService"

    const-string v23, "Close of restore data pipe threw"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 5793
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v22

    :try_start_13
    monitor-exit v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    throw v22

    .line 5797
    :catchall_2
    move-exception v22

    :try_start_14
    monitor-exit v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    throw v22

    .line 5787
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v7    # "didRestore":I
    .end local v9    # "headerLen":I
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "magicBytes":[B
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .end local v21    # "streamHeader":[B
    .restart local v8    # "e":Ljava/io/IOException;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    .line 5788
    const-string v22, "BackupManagerService"

    const-string v23, "Close of restore data pipe threw"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 5793
    :catchall_3
    move-exception v22

    :try_start_15
    monitor-exit v23
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v22

    .line 5797
    :catchall_4
    move-exception v22

    :try_start_16
    monitor-exit v23
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v22

    .line 5787
    .local v8, "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v8

    .line 5788
    .local v8, "e":Ljava/io/IOException;
    const-string v22, "BackupManagerService"

    const-string v23, "Close of restore data pipe threw"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 5793
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v22

    :try_start_17
    monitor-exit v23
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    throw v22

    .line 5797
    :catchall_6
    move-exception v22

    :try_start_18
    monitor-exit v23
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw v22

    .line 5787
    :catch_6
    move-exception v8

    .line 5788
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v23, "BackupManagerService"

    const-string v24, "Close of restore data pipe threw"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 5793
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v22

    :try_start_19
    monitor-exit v23
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    throw v22

    .line 5797
    :catchall_8
    move-exception v22

    :try_start_1a
    monitor-exit v23
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    throw v22

    .line 5780
    :catchall_9
    move-exception v22

    goto/16 :goto_a

    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catchall_a
    move-exception v22

    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 5777
    .end local v5    # "buffer":[B
    :catch_7
    move-exception v8

    goto/16 :goto_8

    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 5774
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method sendEndRestore()V
    .locals 3

    .prologue
    .line 6951
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 6953
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6959
    :cond_0
    :goto_0
    return-void

    .line 6954
    :catch_0
    move-exception v0

    .line 6955
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6956
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendEndRestoreWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 6961
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 6963
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestoreWithResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6969
    :cond_0
    :goto_0
    return-void

    .line 6964
    :catch_0
    move-exception v0

    .line 6965
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6966
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6939
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 6942
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6948
    :cond_0
    :goto_0
    return-void

    .line 6943
    :catch_0
    move-exception v0

    .line 6944
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6945
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 3

    .prologue
    .line 6928
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 6930
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6936
    :cond_0
    :goto_0
    return-void

    .line 6931
    :catch_0
    move-exception v0

    .line 6932
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6241
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 6242
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 9
    .param p1, "size"    # J
    .param p3, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 6456
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 6457
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 6458
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 6459
    .local v1, "needed":I
    new-array v0, v1, [B

    .line 6460
    .local v0, "buffer":[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 6461
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6464
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    .line 6462
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 6259
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_0

    .line 6262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6267
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6269
    const-string v1, "BackupManagerService"

    const-string v2, "Killing host process"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6270
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6277
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 6279
    :cond_0
    return-void

    .line 6272
    :cond_1
    :try_start_1
    const-string v1, "BackupManagerService"

    const-string v2, "Not killing after full restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6274
    :catch_0
    move-exception v0

    .line 6275
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method tearDownPipes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6245
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 6247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6248
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 6249
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6250
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6254
    :goto_0
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 6256
    :cond_0
    return-void

    .line 6251
    :catch_0
    move-exception v0

    .line 6252
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
