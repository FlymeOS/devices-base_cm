.class public Lcom/android/server/FlymeExtLockSettingsService;
.super Lcom/android/server/LockSettingsService;
.source "FlymeExtLockSettingsService.java"


# static fields
.field private static final APP_LOCK_PASSWORD_FILE_NAME:Ljava/lang/String; = "app_lock.key"

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.FlymeExtILockSettings"

.field private static final DOCUMENT_LOCK_PASSWORD_FILE_NAME:Ljava/lang/String; = "document_lock.key"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PRIVATE_MODE_PASSWORD_FILE_NAME:Ljava/lang/String; = "private_mode.key"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "FlymeExtLockSettingsService"

.field private static final TYPE_APP_LOCK:I = 0x0

.field private static final TYPE_DOCUMENT:I = 0x1

.field private static final TYPE_PRIVATE_MODE:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/FlymeExtLockSettingsService;->mFileWriteLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/FlymeExtLockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    iput-object p1, p0, Lcom/android/server/FlymeExtLockSettingsService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private checkFlymePassword(ILjava/lang/String;I)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p3}, Lcom/android/server/FlymeExtLockSettingsService;->checkPasswordReadPermission(I)V

    .line 105
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 106
    return v2

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/server/FlymeExtLockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 109
    .local v0, "hash":[B
    invoke-direct {p0, p1, p3}, Lcom/android/server/FlymeExtLockSettingsService;->readPasswordHash(II)[B

    move-result-object v1

    .line 110
    .local v1, "storedHash":[B
    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/FlymeExtLockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "FlymePasswordRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/FlymeExtLockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "FlymePasswordWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private clearFlymePassword(II)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0, p2}, Lcom/android/server/FlymeExtLockSettingsService;->checkWritePermission(I)V

    .line 115
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 116
    return v3

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FlymeExtLockSettingsService;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    return v3

    .line 122
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2, v1}, Lcom/android/server/FlymeExtLockSettingsService;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 142
    :pswitch_0
    const-string/jumbo v0, "app_lock.key"

    return-object v0

    .line 144
    :pswitch_1
    const-string/jumbo v0, "document_lock.key"

    return-object v0

    .line 146
    :pswitch_2
    const-string/jumbo v0, "private_mode.key"

    return-object v0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "basename"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/FlymeExtLockSettingsService;->getUserParentOrSelfId(I)I

    move-result p1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "/system/"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUserParentOrSelfId(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/server/FlymeExtLockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 178
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 179
    .local v0, "pi":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 180
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 183
    .end local v0    # "pi":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    return p1
.end method

.method private hasFlymePassword(II)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct {p0, p2}, Lcom/android/server/FlymeExtLockSettingsService;->checkPasswordReadPermission(I)V

    .line 128
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 129
    return v2

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FlymeExtLockSettingsService;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    return v2

    .line 135
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/android/server/FlymeExtLockSettingsService;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/FlymeExtLockSettingsService;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 136
    .local v0, "contents":[B
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 190
    .local v3, "stored":[B
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v3, v4, [B

    .line 192
    .local v3, "stored":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 193
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    if-eqz v2, :cond_0

    .line 199
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 205
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    :cond_1
    :goto_1
    return-object v3

    .line 200
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "stored":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "stored":[B
    :catch_1
    move-exception v0

    .line 197
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v1, :cond_1

    .line 199
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 200
    :catch_2
    move-exception v0

    goto :goto_1

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "stored":[B
    :catchall_0
    move-exception v4

    .line 197
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    :goto_3
    if-eqz v1, :cond_2

    .line 199
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 196
    :cond_2
    :goto_4
    throw v4

    .line 200
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 194
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private readPasswordHash(II)[B
    .locals 4
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/FlymeExtLockSettingsService;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    return-object v3

    .line 157
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/FlymeExtLockSettingsService;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/FlymeExtLockSettingsService;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 158
    .local v1, "stored":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 159
    return-object v1

    .line 161
    :cond_1
    return-object v3
.end method

.method private setFlymePassword(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 95
    invoke-direct {p0, p3}, Lcom/android/server/FlymeExtLockSettingsService;->checkWritePermission(I)V

    .line 96
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/FlymeExtLockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/FlymeExtLockSettingsService;->writePasswordHash([BII)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 217
    iget-object v4, p0, Lcom/android/server/FlymeExtLockSettingsService;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    :try_start_1
    array-length v3, p2

    if-nez v3, :cond_3

    .line 222
    :cond_0
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 226
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 230
    if-eqz v2, :cond_1

    .line 232
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :goto_1
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_2
    monitor-exit v4

    .line 216
    return-void

    .line 224
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    :try_start_3
    array-length v3, p2

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 230
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    if-eqz v1, :cond_2

    .line 232
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 233
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v3

    .line 230
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v1, :cond_4

    .line 232
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :cond_4
    :goto_5
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 217
    :catchall_1
    move-exception v3

    :goto_6
    monitor-exit v4

    throw v3

    .line 233
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 229
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 227
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method private writePasswordHash([BII)V
    .locals 2
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "userId"    # I

    .prologue
    .line 209
    invoke-direct {p0, p2}, Lcom/android/server/FlymeExtLockSettingsService;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    invoke-direct {p0, p3, v0}, Lcom/android/server/FlymeExtLockSettingsService;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/FlymeExtLockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 208
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 53
    :pswitch_0
    const-string/jumbo v8, "com.android.internal.widget.FlymeExtILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, "_arg2":I
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/FlymeExtLockSettingsService;->setFlymePassword(ILjava/lang/String;I)Z

    move-result v4

    .line 58
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v7

    .line 63
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_1
    const-string/jumbo v8, "com.android.internal.widget.FlymeExtILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg2":I
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/FlymeExtLockSettingsService;->checkFlymePassword(ILjava/lang/String;I)Z

    move-result v4

    .line 68
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v7

    .line 73
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_2
    const-string/jumbo v8, "com.android.internal.widget.FlymeExtILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "_arg1":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/FlymeExtLockSettingsService;->hasFlymePassword(II)Z

    move-result v4

    .line 77
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v7

    .line 82
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3
    const-string/jumbo v8, "com.android.internal.widget.FlymeExtILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .restart local v1    # "_arg1":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/FlymeExtLockSettingsService;->clearFlymePassword(II)Z

    move-result v5

    .line 86
    .local v5, "_result3":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v5, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v7

    .line 51
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
