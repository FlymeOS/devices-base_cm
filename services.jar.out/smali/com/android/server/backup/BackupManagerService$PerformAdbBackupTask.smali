.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field mCompress:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mDomainTokens:[Ljava/lang/String;

.field mEncryptPassword:Ljava/lang/String;

.field mExcludeFilesRegex:Ljava/lang/String;

.field mIgnoreEncryptionPasswordCheck:Z

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mNoninteractive:Z

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mShouldKillAfterBackup:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;[Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 3
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "packages"    # [Ljava/lang/String;
    .param p14, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p15, "domainTokens"    # [Ljava/lang/String;
    .param p16, "excludeFilesRegex"    # Ljava/lang/String;
    .param p17, "shouldKillAfterBackup"    # Z
    .param p18, "noninteractive"    # Z
    .param p19, "ignoreEncryptionPasswordCheck"    # Z

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 3550
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 3551
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3553
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 3554
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    .line 3555
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    .line 3556
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    .line 3557
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    .line 3558
    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    .line 3559
    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    .line 3560
    if-nez p13, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 3563
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 3568
    if-eqz p9, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3569
    :cond_0
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 3573
    :goto_1
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    .line 3574
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIgnoreEncryptionPasswordCheck:Z

    .line 3575
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDomainTokens:[Ljava/lang/String;

    .line 3576
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mExcludeFilesRegex:Ljava/lang/String;

    .line 3577
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mShouldKillAfterBackup:Z

    .line 3578
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mNoninteractive:Z

    .line 3579
    return-void

    .line 3560
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p13 .. p13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 3571
    :cond_2
    iput-object p9, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_1
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 23
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v17

    .line 3602
    .local v17, "newUserSalt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$1400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    .line 3606
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 3607
    .local v13, "masterPw":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->access$1500(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v9

    .line 3611
    .local v9, "checksumSalt":[B
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 3612
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3613
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3614
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 3617
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3621
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3624
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3626
    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3627
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3630
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 3631
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3633
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 3634
    .local v5, "IV":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3635
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3647
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 3648
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 3649
    .local v14, "mk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->access$1700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    .line 3652
    .local v8, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3654
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3655
    .local v16, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3656
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 3657
    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3658
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 3659
    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3660
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 3661
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 3662
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    .line 3663
    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3666
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 3672
    const/16 v2, 0x400

    :try_start_0
    new-array v1, v2, [B

    .line 3673
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3677
    .end local v1    # "eof":[B
    :goto_0
    return-void

    .line 3674
    :catch_0
    move-exception v0

    .line 3675
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3582
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3583
    .local v4, "result":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3584
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3586
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3588
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3589
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 3590
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    const/4 v4, -0x2

    goto :goto_0

    .line 3595
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public run()V
    .locals 31

    .prologue
    .line 3681
    const-string v3, "BackupManagerService"

    const-string v4, "--- Performing full-dataset adb backup ---"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    new-instance v27, Ljava/util/TreeMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/TreeMap;-><init>()V

    .line 3684
    .local v27, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v24, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 3685
    .local v24, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 3686
    const/16 v30, 0x0

    .line 3687
    .local v30, "result":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    .line 3690
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    if-eqz v3, :cond_2

    .line 3691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v12

    .line 3693
    .local v12, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 3694
    move/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/PackageInfo;

    .line 3696
    .local v28, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 3698
    :cond_0
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3693
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 3705
    .end local v12    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v21    # "i":I
    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v3, :cond_3

    .line 3706
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v29

    .line 3708
    .local v29, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v29, :cond_3

    .line 3720
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)I

    move-result v11

    .line 3721
    .local v11, "addPackageResult":I
    if-eqz v11, :cond_3

    .line 3722
    move/from16 v30, v11

    .line 3731
    .end local v11    # "addPackageResult":I
    .end local v29    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 3732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)I

    move-result v11

    .line 3733
    .restart local v11    # "addPackageResult":I
    if-eqz v11, :cond_4

    .line 3734
    move/from16 v30, v11

    .line 3741
    .end local v11    # "addPackageResult":I
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 3742
    .local v23, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_5
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3743
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/PackageInfo;

    .line 3744
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mNoninteractive:Z

    if-nez v3, :cond_5

    .line 3745
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3750
    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3752
    .local v13, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v26, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3753
    .local v26, "ofstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 3755
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v28, 0x0

    .line 3757
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    const/16 v16, 0x1

    .line 3760
    .local v16, "encrypting":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v16, :cond_9

    .line 3761
    const-string v3, "BackupManagerService"

    const-string v4, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 3875
    if-eqz v5, :cond_7

    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3876
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .line 3880
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3881
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3882
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3884
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3886
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3888
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackupWithResult(I)V

    .line 3889
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3890
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3893
    .end local v16    # "encrypting":Z
    :goto_4
    return-void

    .line 3757
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    .line 3882
    .restart local v16    # "encrypting":Z
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 3886
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 3765
    :cond_9
    move-object/from16 v17, v26

    .line 3769
    .local v17, "finalOutput":Ljava/io/OutputStream;
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIgnoreEncryptionPasswordCheck:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3770
    const-string v3, "BackupManagerService"

    const-string v4, "Backup password mismatch; aborting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Backup password mismatch; aborting"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 3863
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    :catch_0
    move-exception v15

    .line 3864
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v3, "BackupManagerService"

    const-string v4, "App died during full backup"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 3865
    const/16 v30, -0x1

    .line 3875
    if-eqz v5, :cond_a

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3876
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 3880
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3881
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3882
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3884
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3886
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3888
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackupWithResult(I)V

    .line 3889
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3890
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4

    .line 3799
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    :cond_b
    :try_start_b
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3801
    .local v20, "headerbuf":Ljava/lang/StringBuilder;
    const-string v3, "ANDROID BACKUP\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3802
    const/4 v3, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3803
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    if-eqz v3, :cond_e

    const-string v3, "\n1\n"

    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 3807
    if-eqz v16, :cond_f

    .line 3808
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    move-result-object v17

    move-object/from16 v18, v17

    .line 3813
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .local v18, "finalOutput":Ljava/io/OutputStream;
    :goto_7
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 3814
    .local v19, "header":[B
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3817
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    if-eqz v3, :cond_17

    .line 3818
    new-instance v14, Ljava/util/zip/Deflater;

    const/16 v3, 0x9

    invoke-direct {v14, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 3819
    .local v14, "deflater":Ljava/util/zip/Deflater;
    new-instance v17, Ljava/util/zip/DeflaterOutputStream;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 3822
    .end local v14    # "deflater":Ljava/util/zip/Deflater;
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    :goto_8
    move-object/from16 v5, v17

    .line 3830
    .end local v19    # "header":[B
    :goto_9
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    if-eqz v3, :cond_c

    .line 3832
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.sharedstoragebackup"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v28

    .line 3833
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 3840
    :cond_c
    :goto_a
    :try_start_10
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3841
    .local v10, "N":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_b
    move/from16 v0, v21

    if-ge v0, v10, :cond_13

    .line 3842
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v28, v0

    .line 3843
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.sharedstoragebackup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 3846
    .local v22, "isSharedStorage":Z
    new-instance v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v28

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDomainTokens:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mExcludeFilesRegex:Ljava/lang/String;

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Z[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    .line 3848
    if-eqz v22, :cond_11

    const-string v3, "Shared storage"

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 3849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mShouldKillAfterBackup:Z

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;Z)I

    .line 3853
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    if-eqz v3, :cond_12

    .line 3854
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v25

    .line 3855
    .local v25, "obbOkay":Z
    if-nez v25, :cond_12

    .line 3856
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure writing OBB stack for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 3866
    .end local v10    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v21    # "i":I
    .end local v22    # "isSharedStorage":Z
    .end local v25    # "obbOkay":Z
    :catch_1
    move-exception v15

    .line 3867
    .local v15, "e":Ljava/lang/SecurityException;
    const/16 v30, -0x4

    .line 3875
    if-eqz v5, :cond_d

    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3876
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 3880
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3881
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3882
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3884
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3886
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3888
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackupWithResult(I)V

    .line 3889
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3890
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4

    .line 3803
    .end local v15    # "e":Ljava/lang/SecurityException;
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_e
    :try_start_14
    const-string v3, "\n0\n"
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto/16 :goto_6

    .line 3810
    :cond_f
    :try_start_15
    const-string v3, "none\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    move-object/from16 v18, v17

    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_7

    .line 3823
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    :catch_2
    move-exception v15

    .line 3825
    .local v15, "e":Ljava/lang/Exception;
    :goto_e
    :try_start_16
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to emit archive header"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3826
    const/16 v30, -0x2

    goto/16 :goto_9

    .line 3834
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    .line 3835
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to find shared-storage backup handler"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    goto/16 :goto_a

    .line 3868
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v15

    .line 3869
    .local v15, "e":Ljava/util/concurrent/TimeoutException;
    const/16 v30, -0x3

    .line 3875
    if-eqz v5, :cond_10

    :try_start_17
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3876
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    .line 3880
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3881
    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3882
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3884
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3886
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3888
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackupWithResult(I)V

    .line 3889
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3890
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4

    .line 3848
    .end local v15    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v10    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v21    # "i":I
    .restart local v22    # "isSharedStorage":Z
    :cond_11
    :try_start_1a
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_c

    .line 3841
    :cond_12
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    .line 3862
    .end local v22    # "isSharedStorage":Z
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 3875
    if-eqz v5, :cond_14

    :try_start_1b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3876
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    .line 3880
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3881
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3882
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3884
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3886
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3888
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackupWithResult(I)V

    .line 3889
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3890
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4

    .line 3882
    :catchall_2
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    throw v3

    .line 3886
    :catchall_3
    move-exception v3

    :try_start_1f
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    throw v3

    .line 3882
    .end local v10    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v21    # "i":I
    .local v15, "e":Landroid/os/RemoteException;
    :catchall_4
    move-exception v3

    :try_start_20
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    throw v3

    .line 3886
    :catchall_5
    move-exception v3

    :try_start_21
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    throw v3

    .line 3882
    .local v15, "e":Ljava/lang/SecurityException;
    :catchall_6
    move-exception v3

    :try_start_22
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    throw v3

    .line 3886
    :catchall_7
    move-exception v3

    :try_start_23
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    throw v3

    .line 3882
    .local v15, "e":Ljava/util/concurrent/TimeoutException;
    :catchall_8
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    throw v3

    .line 3886
    :catchall_9
    move-exception v3

    :try_start_25
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    throw v3

    .line 3870
    .end local v15    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_5
    move-exception v15

    .line 3871
    .local v15, "e":Ljava/lang/Exception;
    :try_start_26
    const-string v3, "BackupManagerService"

    const-string v4, "Internal exception during full backup"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 3872
    const/16 v30, -0x1

    .line 3875
    if-eqz v5, :cond_15

    :try_start_27
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3876
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_7

    .line 3880
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3881
    :try_start_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3882
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3884
    :try_start_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3886
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3888
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackupWithResult(I)V

    .line 3889
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3890
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4

    .line 3882
    :catchall_a
    move-exception v3

    :try_start_2a
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    throw v3

    .line 3886
    :catchall_b
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    throw v3

    .line 3874
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_c
    move-exception v3

    .line 3875
    if-eqz v5, :cond_16

    :try_start_2c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3876
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_6

    .line 3880
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3881
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 3882
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    .line 3883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 3884
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 3886
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    .line 3887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3888
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackupWithResult(I)V

    .line 3889
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3890
    const-string v4, "BackupManagerService"

    const-string v6, "Full backup pass complete."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 3882
    :catchall_d
    move-exception v3

    :try_start_2f
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    throw v3

    .line 3886
    :catchall_e
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    throw v3

    .line 3877
    :catch_6
    move-exception v4

    goto :goto_12

    .restart local v15    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    goto/16 :goto_11

    .local v15, "e":Ljava/util/concurrent/TimeoutException;
    :catch_8
    move-exception v3

    goto/16 :goto_f

    .local v15, "e":Ljava/lang/SecurityException;
    :catch_9
    move-exception v3

    goto/16 :goto_d

    .local v15, "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v3

    goto/16 :goto_5

    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v10    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v21    # "i":I
    :catch_b
    move-exception v3

    goto/16 :goto_10

    .line 3823
    .end local v10    # "N":I
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "i":I
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :catch_c
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_e

    .line 3877
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_d
    move-exception v3

    goto/16 :goto_3

    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "header":[B
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_17
    move-object/from16 v17, v18

    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_8
.end method
