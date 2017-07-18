.class Lcom/android/server/shrinker/LogsWriter;
.super Ljava/lang/Object;
.source "LogsWriter.java"


# static fields
.field private static final DAY:J = 0x5265c00L

.field private static final DIR:Ljava/lang/String; = "/data/anr/shrinker/"

.field private static final TAG:Ljava/lang/String; = "Shrinker"


# instance fields
.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/shrinker/LogsWriter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/shrinker/LogsWriter;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 24
    return-void
.end method

.method private getFileName(J)Ljava/io/File;
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/anr/shrinker/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/shrinker/LogsWriter;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, p1, p2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/shrinker/LogsWriter;->append(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public append(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "timestamp"    # Z

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    const-string/jumbo v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0}, Lcom/android/server/shrinker/LogsWriter;->getTime()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public commit()V
    .locals 18

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 46
    const-string/jumbo v14, "persist.sys.shrink_log"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 47
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 48
    .local v9, "s":Ljava/lang/String;
    const-string/jumbo v14, "Shrinker"

    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v9    # "s":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 51
    return-void

    .line 53
    .end local v10    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v14, "/data/anr/shrinker/"

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 55
    .local v11, "tracesDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 56
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 57
    invoke-static {v11}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 58
    return-void

    .line 61
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v14

    if-nez v14, :cond_3

    .line 63
    const-string/jumbo v14, "Shrinker"

    const-string/jumbo v15, "Create /data/anr/shrinker/ fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 66
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1ff

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 67
    return-void

    .line 69
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 70
    .local v12, "time":J
    const-wide/32 v14, 0x240c8400

    sub-long v14, v12, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/shrinker/LogsWriter;->getFileName(J)Ljava/io/File;

    move-result-object v6

    .line 71
    .local v6, "oldFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 72
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 73
    const-string/jumbo v14, "Shrinker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Delete "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_5
    const/4 v7, 0x0

    .line 78
    .local v7, "printer":Ljava/io/PrintWriter;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/shrinker/LogsWriter;->getFileName(J)Ljava/io/File;

    move-result-object v5

    .line 79
    .local v5, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 80
    .local v2, "create":Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_6

    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 83
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1b6

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 85
    :cond_6
    new-instance v8, Ljava/io/PrintWriter;

    new-instance v14, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    invoke-direct {v14, v5, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v8, "printer":Ljava/io/PrintWriter;
    if-eqz v2, :cond_7

    .line 87
    .end local v7    # "printer":Ljava/io/PrintWriter;
    :try_start_1
    invoke-static {}, Lcom/android/server/shrinker/PackageStateInfo;->dump()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 89
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 90
    .restart local v9    # "s":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 94
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v7, v8

    .line 95
    .end local v2    # "create":Z
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "printer":Ljava/io/PrintWriter;
    :goto_2
    :try_start_2
    const-string/jumbo v14, "Shrinker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Write logs fail "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    if-eqz v7, :cond_8

    .line 98
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 44
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "oldFile":Ljava/io/File;
    .end local v11    # "tracesDir":Ljava/io/File;
    .end local v12    # "time":J
    :cond_8
    :goto_3
    return-void

    .line 92
    .restart local v2    # "create":Z
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "oldFile":Ljava/io/File;
    .restart local v8    # "printer":Ljava/io/PrintWriter;
    .restart local v10    # "s$iterator":Ljava/util/Iterator;
    .restart local v11    # "tracesDir":Ljava/io/File;
    .restart local v12    # "time":J
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/shrinker/LogsWriter;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    if-eqz v8, :cond_8

    .line 98
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    goto :goto_3

    .line 96
    .end local v2    # "create":Z
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "printer":Ljava/io/PrintWriter;
    .end local v10    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v14

    .line 97
    :goto_4
    if-eqz v7, :cond_a

    .line 98
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 96
    :cond_a
    throw v14

    .restart local v2    # "create":Z
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "printer":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8    # "printer":Ljava/io/PrintWriter;
    .local v7, "printer":Ljava/io/PrintWriter;
    goto :goto_4

    .line 94
    .end local v2    # "create":Z
    .end local v5    # "file":Ljava/io/File;
    .local v7, "printer":Ljava/io/PrintWriter;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public getTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/shrinker/LogsWriter;->mTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
