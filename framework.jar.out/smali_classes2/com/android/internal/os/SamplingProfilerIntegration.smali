.class public Lcom/android/internal/os/SamplingProfilerIntegration;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/SamplingProfilerIntegration$1;
    }
.end annotation


# static fields
.field public static final SNAPSHOT_DIR:Ljava/lang/String; = "/data/snapshots"

.field private static final TAG:Ljava/lang/String; = "SamplingProfilerIntegration"

.field private static final enabled:Z

.field private static final pending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

.field private static final samplingProfilerDepth:I

.field private static final samplingProfilerMilliseconds:I

.field private static final snapshotWriter:Ljava/util/concurrent/Executor;

.field private static startMillis:J


# direct methods
.method static synthetic -get0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    const-string/jumbo v1, "persist.sys.profiler_ms"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    .line 57
    const-string/jumbo v1, "persist.sys.profiler_depth"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerDepth:I

    .line 58
    sget v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    if-lez v1, :cond_1

    .line 59
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/snapshots"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 64
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$1;

    invoke-direct {v1}, Lcom/android/internal/os/SamplingProfilerIntegration$1;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 71
    sput-boolean v4, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 72
    const-string/jumbo v1, "SamplingProfilerIntegration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Profiling enabled. Sampling interval ms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-void

    .line 75
    .restart local v0    # "dir":Ljava/io/File;
    :cond_0
    sput-object v5, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 76
    sput-boolean v4, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 77
    const-string/jumbo v1, "SamplingProfilerIntegration"

    const-string/jumbo v2, "Profiling setup failed. Could not create /data/snapshots"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    sput-object v5, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 81
    sput-boolean v3, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 82
    const-string/jumbo v1, "SamplingProfilerIntegration"

    const-string/jumbo v2, "Profiling disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateSnapshotHeader(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 216
    const-string/jumbo v0, "Version: 3"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package-Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 214
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    return v0
.end method

.method public static start()V
    .locals 8

    .prologue
    .line 100
    sget-boolean v2, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v2, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    sget-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    if-eqz v2, :cond_1

    .line 104
    const-string/jumbo v2, "SamplingProfilerIntegration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SamplingProfilerIntegration already started at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    sget-wide v6, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 108
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 109
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-static {v0}, Ldalvik/system/profiler/SamplingProfiler;->newThreadGroupThreadSet(Ljava/lang/ThreadGroup;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    move-result-object v1

    .line 110
    .local v1, "threadSet":Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    new-instance v2, Ldalvik/system/profiler/SamplingProfiler;

    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerDepth:I

    invoke-direct {v2, v3, v1}, Ldalvik/system/profiler/SamplingProfiler;-><init>(ILdalvik/system/profiler/SamplingProfiler$ThreadSet;)V

    sput-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    .line 111
    sget-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    invoke-virtual {v2, v3}, Ldalvik/system/profiler/SamplingProfiler;->start(I)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    .line 99
    return-void
.end method

.method public static writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    if-nez v0, :cond_1

    .line 123
    const-string/jumbo v0, "SamplingProfilerIntegration"

    const-string/jumbo v1, "SamplingProfilerIntegration is not started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 133
    :cond_1
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration$2;-><init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    :cond_2
    return-void
.end method

.method private static writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 14
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 163
    sget-boolean v10, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v10, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    sget-object v10, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    invoke-virtual {v10}, Ldalvik/system/profiler/SamplingProfiler;->stop()V

    .line 174
    const-string/jumbo v10, ":"

    const-string/jumbo v11, "."

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/data/snapshots/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".snapshot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "path":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 177
    .local v8, "start":J
    const/4 v5, 0x0

    .line 179
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v4, "out":Ljava/io/PrintStream;
    invoke-static {v1, p1, v4}, Lcom/android/internal/os/SamplingProfilerIntegration;->generateSnapshotHeader(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/PrintStream;)V

    .line 182
    invoke-virtual {v4}, Ljava/io/PrintStream;->checkError()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 183
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    .end local v4    # "out":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 187
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    const-string/jumbo v10, "SamplingProfilerIntegration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error writing snapshot to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 188
    return-void

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/PrintStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_3
    sget-object v10, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    invoke-virtual {v10}, Ldalvik/system/profiler/SamplingProfiler;->getHprofData()Ldalvik/system/profiler/HprofData;

    move-result-object v10

    invoke-static {v10, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v8

    .line 197
    .local v2, "elapsed":J
    const-string/jumbo v10, "SamplingProfilerIntegration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Wrote snapshot "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v10, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    sget v11, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    invoke-virtual {v10, v11}, Ldalvik/system/profiler/SamplingProfiler;->start(I)V

    .line 162
    return-void

    .line 189
    .end local v2    # "elapsed":J
    .end local v4    # "out":Ljava/io/PrintStream;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v10

    .line 190
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 189
    throw v10

    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 186
    .local v5, "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static writeZygoteSnapshot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    const-string/jumbo v0, "zygote"

    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 154
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    invoke-virtual {v0}, Ldalvik/system/profiler/SamplingProfiler;->shutdown()V

    .line 155
    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfiler:Ldalvik/system/profiler/SamplingProfiler;

    .line 156
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/SamplingProfilerIntegration;->startMillis:J

    .line 149
    return-void
.end method
