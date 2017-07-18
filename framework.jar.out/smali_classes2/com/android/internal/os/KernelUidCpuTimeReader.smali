.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastPowerMaUs:Landroid/util/SparseLongArray;

.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 40
    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 37
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    .prologue
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v16, v30, v32

    .line 71
    .local v16, "nowUs":J
    const/16 v30, 0x0

    const/4 v15, 0x0

    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v31, "/proc/uid_cputime/show_uid_stat"

    move-object/from16 v0, v31

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .local v20, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v22, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 74
    .local v22, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 75
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v23

    .line 77
    .local v23, "uidStr":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, "uid":I
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    .line 79
    .local v28, "userTimeUs":J
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    .line 81
    .local v24, "systemTimeUs":J
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 82
    invoke-virtual/range {v22 .. v22}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v18, v32, v34

    .line 87
    .local v18, "powerMaUs":J
    :goto_1
    if-eqz p1, :cond_3

    .line 88
    move-wide/from16 v6, v28

    .line 89
    .local v6, "userTimeDeltaUs":J
    move-wide/from16 v8, v24

    .line 90
    .local v8, "systemTimeDeltaUs":J
    move-wide/from16 v10, v18

    .line 91
    .local v10, "powerDeltaMaUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v13

    .line 92
    .local v13, "index":I
    if-ltz v13, :cond_1

    .line 93
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v6, v6, v32

    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v8, v8, v32

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v10, v10, v32

    .line 97
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v32, v0

    sub-long v26, v16, v32

    .line 98
    .local v26, "timeDiffUs":J
    const-wide/16 v32, 0x0

    cmp-long v4, v6, v32

    if-ltz v4, :cond_0

    const-wide/16 v32, 0x0

    cmp-long v4, v8, v32

    if-gez v4, :cond_6

    .line 99
    :cond_0
    :goto_2
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Malformed cpu data for UID="

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v21, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v31, "!\n"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v4, "Time between reads: "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-wide/16 v32, 0x3e8

    div-long v32, v26, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 103
    const-string/jumbo v4, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v4, "Previous times: u="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 106
    const-string/jumbo v4, " s="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 108
    const-string/jumbo v4, " p="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v4, "mAms\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v4, "Current times: u="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-wide/16 v32, 0x3e8

    div-long v32, v28, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 113
    const-string/jumbo v4, " s="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-wide/16 v32, 0x3e8

    div-long v32, v24, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 115
    const-string/jumbo v4, " p="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v32, 0x3e8

    div-long v32, v18, v32

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v4, "mAms\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v4, "Delta: u="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-wide/16 v32, 0x3e8

    div-long v32, v6, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 119
    const-string/jumbo v4, " s="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 121
    const-string/jumbo v4, " p="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v31, "mAms"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-wide/16 v6, 0x0

    .line 125
    const-wide/16 v8, 0x0

    .line 126
    const-wide/16 v10, 0x0

    .line 130
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v26    # "timeDiffUs":J
    :cond_1
    const-wide/16 v32, 0x0

    cmp-long v4, v6, v32

    if-nez v4, :cond_2

    const-wide/16 v32, 0x0

    cmp-long v4, v8, v32

    if-eqz v4, :cond_7

    :cond_2
    :goto_3
    move-object/from16 v4, p1

    .line 131
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJJ)V

    .line 135
    .end local v6    # "userTimeDeltaUs":J
    .end local v8    # "systemTimeDeltaUs":J
    .end local v10    # "powerDeltaMaUs":J
    .end local v13    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v24

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_0

    .line 141
    .end local v5    # "uid":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "powerMaUs":J
    .end local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v23    # "uidStr":Ljava/lang/String;
    .end local v24    # "systemTimeUs":J
    .end local v28    # "userTimeUs":J
    :catch_0
    move-exception v4

    move-object/from16 v15, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v30

    move-object/from16 v36, v30

    move-object/from16 v30, v4

    move-object/from16 v4, v36

    :goto_5
    if-eqz v15, :cond_4

    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_6
    if-eqz v30, :cond_c

    :try_start_4
    throw v30
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 139
    :catch_1
    move-exception v12

    .line 140
    .local v12, "e":Ljava/io/IOException;
    :goto_7
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Failed to read uid_cputime: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v12    # "e":Ljava/io/IOException;
    :goto_8
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 69
    return-void

    .line 84
    .restart local v5    # "uid":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .restart local v23    # "uidStr":Ljava/lang/String;
    .restart local v24    # "systemTimeUs":J
    .restart local v28    # "userTimeUs":J
    :cond_5
    const-wide/16 v18, 0x0

    .restart local v18    # "powerMaUs":J
    goto/16 :goto_1

    .line 98
    .restart local v6    # "userTimeDeltaUs":J
    .restart local v8    # "systemTimeDeltaUs":J
    .restart local v10    # "powerDeltaMaUs":J
    .restart local v13    # "index":I
    .restart local v26    # "timeDiffUs":J
    :cond_6
    const-wide/16 v32, 0x0

    cmp-long v4, v10, v32

    if-gez v4, :cond_1

    goto/16 :goto_2

    .line 130
    .end local v26    # "timeDiffUs":J
    :cond_7
    const-wide/16 v32, 0x0

    cmp-long v4, v10, v32

    if-eqz v4, :cond_3

    goto :goto_3

    .line 141
    .end local v5    # "uid":I
    .end local v6    # "userTimeDeltaUs":J
    .end local v8    # "systemTimeDeltaUs":J
    .end local v10    # "powerDeltaMaUs":J
    .end local v13    # "index":I
    .end local v18    # "powerMaUs":J
    .end local v23    # "uidStr":Ljava/lang/String;
    .end local v24    # "systemTimeUs":J
    .end local v28    # "userTimeUs":J
    :cond_8
    if-eqz v20, :cond_9

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    :goto_9
    if-eqz v30, :cond_a

    :try_start_6
    throw v30
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 139
    :catch_2
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    move-object/from16 v15, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 141
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v30

    goto :goto_9

    :cond_a
    move-object/from16 v15, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v31

    if-nez v30, :cond_b

    move-object/from16 v30, v31

    goto :goto_6

    :cond_b
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_4

    :try_start_7
    invoke-virtual/range {v30 .. v31}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .local v15, "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    goto :goto_5

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v4

    move-object/from16 v15, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .local v15, "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    goto :goto_4
.end method

.method public removeUid(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 150
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 151
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 152
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 153
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 154
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 157
    :cond_0
    const/4 v2, 0x0

    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v4, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 161
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_1
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    const-string/jumbo v5, "failed to remove uid from uid_cputime module"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 162
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v5

    goto :goto_0

    :cond_2
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_2

    .local v2, "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 160
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_4

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method
