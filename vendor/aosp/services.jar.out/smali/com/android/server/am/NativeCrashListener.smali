.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x7d0L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 98
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_1

    .line 184
    add-int v2, p2, v1

    invoke-static {p0, p1, v2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 185
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 189
    const/4 v2, -0x1

    return v2

    .line 191
    :cond_0
    sub-int/2addr p3, v0

    .line 192
    add-int/2addr v1, v0

    goto :goto_0

    .line 194
    .end local v0    # "n":I
    :cond_1
    return v1
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 173
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 174
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 175
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 176
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 177
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/16 v10, 0x1000

    const/16 v12, 0x8

    .line 200
    new-array v0, v10, [B

    .line 201
    .local v0, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 204
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v10, 0x7d0

    :try_start_0
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v9

    .line 205
    .local v9, "timeout":Landroid/system/StructTimeval;
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 206
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 209
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 210
    .local v3, "headerBytes":I
    if-eq v3, v12, :cond_0

    .line 212
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 216
    :cond_0
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    .line 217
    .local v5, "pid":I
    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    .line 223
    .local v8, "signal":I
    if-lez v5, :cond_6

    .line 225
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v6, "pr":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    monitor-exit v11

    .line 228
    if-eqz v6, :cond_5

    .line 230
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v10, :cond_3

    .line 234
    return-void

    .line 225
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v3    # "headerBytes":I
    .end local v5    # "pid":I
    .end local v8    # "signal":I
    .end local v9    # "timeout":Landroid/system/StructTimeval;
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 252
    .local v1, "bytes":I
    .restart local v3    # "headerBytes":I
    .restart local v5    # "pid":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "signal":I
    .restart local v9    # "timeout":Landroid/system/StructTimeval;
    :cond_1
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 254
    :cond_2
    if-lez v1, :cond_4

    .line 240
    .end local v1    # "bytes":I
    :cond_3
    array-length v10, v0

    const/4 v11, 0x0

    invoke-static {p1, v0, v11, v10}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 241
    .restart local v1    # "bytes":I
    if-lez v1, :cond_2

    .line 247
    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_1

    .line 248
    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 263
    :cond_4
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 264
    const/4 v10, 0x1

    :try_start_4
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 265
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v11

    .line 271
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 272
    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V

    goto :goto_0

    .line 263
    .end local v7    # "reportString":Ljava/lang/String;
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 274
    .end local v1    # "bytes":I
    :cond_5
    const-string/jumbo v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 104
    new-array v0, v9, [B

    .line 112
    .local v0, "ackSignal":[B
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/ndebugsocket"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v8, "socketFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 114
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 119
    :cond_0
    :try_start_0
    sget v9, Landroid/system/OsConstants;->AF_UNIX:I

    sget v10, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v6

    .line 120
    .local v6, "serverFd":Ljava/io/FileDescriptor;
    new-instance v7, Ljava/net/InetUnixAddress;

    const-string/jumbo v9, "/data/system/ndebugsocket"

    invoke-direct {v7, v9}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    .line 121
    .local v7, "sockAddr":Ljava/net/InetUnixAddress;
    const/4 v9, 0x0

    invoke-static {v6, v7, v9}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 122
    const/4 v9, 0x1

    invoke-static {v6, v9}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 125
    :cond_1
    :goto_0
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 126
    .local v4, "peer":Ljava/net/InetSocketAddress;
    const/4 v5, 0x0

    .line 129
    .local v5, "peerFd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v6, v4}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 131
    .local v5, "peerFd":Ljava/io/FileDescriptor;
    if-eqz v5, :cond_2

    .line 134
    sget v9, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v10, Landroid/system/OsConstants;->SO_PEERCRED:I

    invoke-static {v5, v9, v10}, Landroid/system/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    move-result-object v1

    .line 135
    .local v1, "credentials":Landroid/system/StructUcred;
    iget v9, v1, Landroid/system/StructUcred;->uid:I

    if-nez v9, :cond_2

    .line 138
    invoke-virtual {p0, v5}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v1    # "credentials":Landroid/system/StructUcred;
    :cond_2
    if-eqz v5, :cond_1

    .line 148
    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_2
    invoke-static {v5, v0, v9, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    :goto_1
    :try_start_3
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/system/ErrnoException;
    goto :goto_0

    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "peerFd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v3

    .line 142
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v9, "NativeCrashListener"

    const-string/jumbo v10, "Error handling connection"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    if-eqz v5, :cond_1

    .line 148
    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_5
    invoke-static {v5, v0, v9, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 156
    :goto_2
    :try_start_6
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 157
    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_0

    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_4
    move-exception v3

    goto :goto_2

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 146
    if-eqz v5, :cond_3

    .line 148
    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_7
    invoke-static {v5, v0, v10, v11}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 156
    :goto_3
    :try_start_8
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 143
    :cond_3
    :goto_4
    :try_start_9
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 165
    .end local v4    # "peer":Ljava/net/InetSocketAddress;
    .end local v6    # "serverFd":Ljava/io/FileDescriptor;
    .end local v7    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_5
    move-exception v3

    .line 166
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "NativeCrashListener"

    const-string/jumbo v10, "Unable to init native debug socket!"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return-void

    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "peer":Ljava/net/InetSocketAddress;
    .restart local v6    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v7    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_4
.end method
