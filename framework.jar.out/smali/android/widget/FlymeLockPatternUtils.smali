.class public Landroid/widget/FlymeLockPatternUtils;
.super Ljava/lang/Object;
.source "FlymeLockPatternUtils.java"


# static fields
.field public static final PASSWORD_FILE_CHILD_MODE:Ljava/lang/String; = "child_mode"

.field public static final PASSWORD_FILE_SECRETS_MODE:Ljava/lang/String; = "secrets_mode"

.field private static final PASSWORD_FILE_SUFFIX:Ljava/lang/String; = ".key"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field public static final SYSTEM_MODE_CHILD:Ljava/lang/String; = "1"

.field public static final SYSTEM_MODE_NORMAL:Ljava/lang/String; = "0"

.field public static final SYSTEM_MODE_SECRETS:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "FlymeLockPatternUtils"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPathPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Landroid/widget/FlymeLockPatternUtils;->init(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FlymeLockPatternUtils;->init(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 48
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 153
    iget-object v0, p0, Landroid/widget/FlymeLockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 158
    iget-object v0, p0, Landroid/widget/FlymeLockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private getCurrentUserId()I
    .locals 2

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    return v1
.end method

.method private getPasswordFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPasswordFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/FlymeLockPatternUtils;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Landroid/widget/FlymeLockPatternUtils;->getPasswordFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/widget/FlymeLockPatternUtils;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Landroid/widget/FlymeLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "/system/"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FlymeLockPatternUtils;->mPathPrefix:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private writeFile(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    const/4 v5, 0x0

    .line 126
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v1, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 129
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 133
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 134
    const/4 v2, 0x1

    return v2

    .line 131
    :cond_1
    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "FlymeLockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error writing to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v5
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "passwordFileName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/FlymeLockPatternUtils;->getCurrentUserId()I

    move-result v0

    .line 62
    .local v0, "userId":I
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/FlymeLockPatternUtils;->checkPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public checkPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "passwordFileName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 66
    invoke-direct {p0, p3}, Landroid/widget/FlymeLockPatternUtils;->checkPasswordReadPermission(I)V

    .line 68
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroid/widget/FlymeLockPatternUtils;->getPasswordFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v4, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v4, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v5, v6, [B

    .line 72
    .local v5, "stored":[B
    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 73
    .local v2, "got":I
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 74
    if-gtz v2, :cond_0

    .line 75
    return v8

    .line 78
    :cond_0
    iget-object v6, p0, Landroid/widget/FlymeLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v3

    .line 80
    .local v3, "hash":[B
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    .line 81
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "got":I
    .end local v3    # "hash":[B
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .end local v5    # "stored":[B
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    return v8
.end method

.method public isPasswordEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "passwordFileName"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/FlymeLockPatternUtils;->getCurrentUserId()I

    move-result v0

    .line 114
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Landroid/widget/FlymeLockPatternUtils;->isPasswordEnabled(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isPasswordEnabled(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "passwordFileName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 118
    invoke-direct {p0, p2}, Landroid/widget/FlymeLockPatternUtils;->checkPasswordReadPermission(I)V

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Landroid/widget/FlymeLockPatternUtils;->getPasswordFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "passwordFileName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/FlymeLockPatternUtils;->getCurrentUserId()I

    move-result v0

    .line 91
    .local v0, "userId":I
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/FlymeLockPatternUtils;->savePassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "passwordFileName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 96
    invoke-direct {p0, p3}, Landroid/widget/FlymeLockPatternUtils;->checkWritePermission(I)V

    .line 98
    invoke-direct {p0, p1, p3}, Landroid/widget/FlymeLockPatternUtils;->getPasswordFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "path":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    .line 104
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 107
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Landroid/widget/FlymeLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FlymeLockPatternUtils;->writeFile(Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method
