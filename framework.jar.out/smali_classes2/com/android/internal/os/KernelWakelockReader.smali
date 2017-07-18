.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 27
    return-void

    .line 33
    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 56
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 27
    return-void
.end method

.method private parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 24
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    .line 116
    const/16 v16, 0x0

    .line 120
    .local v16, "numUpdatedWlNames":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_0

    aget-byte v2, p1, v11

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v11

    if-eqz v2, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 121
    :cond_0
    add-int/lit8 v4, v11, 0x1

    .local v4, "endIndex":I
    move v3, v4

    .line 123
    .local v3, "startIndex":I
    monitor-enter p0

    .line 124
    :try_start_0
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 125
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_b

    .line 126
    move v4, v3

    .line 127
    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    aget-byte v2, p1, v4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    aget-byte v2, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 129
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 132
    add-int/lit8 v2, p2, -0x1

    if-lt v4, v2, :cond_2

    monitor-exit p0

    .line 133
    return-object p4

    .line 136
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 137
    .local v6, "nameStringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 141
    .local v7, "wlData":[J
    move v13, v3

    .local v13, "j":I
    :goto_3
    if-ge v13, v4, :cond_4

    .line 142
    aget-byte v2, p1, v13

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    aput-byte v2, p1, v13

    .line 141
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 145
    :cond_4
    if-eqz p3, :cond_6

    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 147
    :goto_4
    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 144
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v17

    .line 149
    .local v17, "parsed":Z
    const/4 v2, 0x0

    aget-object v15, v6, v2

    .line 150
    .local v15, "name":Ljava/lang/String;
    const/4 v2, 0x1

    aget-wide v20, v7, v2

    move-wide/from16 v0, v20

    long-to-int v9, v0

    .line 152
    .local v9, "count":I
    if-eqz p3, :cond_7

    .line 154
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x3e8

    mul-long v18, v20, v22

    .line 160
    .local v18, "totalTime":J
    :goto_5
    if-eqz v17, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 161
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 162
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 163
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 162
    move-wide/from16 v0, v18

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v16, v16, 0x1

    .line 185
    :cond_5
    :goto_6
    move v3, v4

    goto :goto_1

    .line 146
    .end local v9    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_6
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    goto :goto_4

    .line 157
    .restart local v9    # "count":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "parsed":Z
    :cond_7
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x1f4

    add-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    .restart local v18    # "totalTime":J
    goto :goto_5

    .line 166
    :cond_8
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 167
    .local v14, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v2, v5, :cond_9

    .line 168
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v2, v9

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 169
    iget-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 123
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v13    # "j":I
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 171
    .restart local v6    # "nameStringArray":[Ljava/lang/String;
    .restart local v7    # "wlData":[J
    .restart local v9    # "count":I
    .restart local v13    # "j":I
    .restart local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "parsed":Z
    .restart local v18    # "totalTime":J
    :cond_9
    :try_start_2
    iput v9, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 172
    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 173
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 177
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :cond_a
    if-nez v17, :cond_5

    .line 179
    :try_start_3
    const-string/jumbo v2, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse proc line: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 180
    new-instance v8, Ljava/lang/String;

    sub-int v20, v4, v3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v8, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 179
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 181
    :catch_0
    move-exception v10

    .line 182
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "KernelWakelockReader"

    const-string/jumbo v5, "Failed to parse proc line!"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 188
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "j":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->size()I

    move-result v2

    move/from16 v0, v16

    if-eq v2, v0, :cond_d

    .line 190
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 191
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_c
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 192
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v2, v5, :cond_c

    .line 193
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 198
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_d
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 199
    return-object p4
.end method


# virtual methods
.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 11
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    const/4 v10, 0x0

    .line 64
    const v8, 0x8000

    new-array v0, v8, [B

    .line 71
    .local v0, "buffer":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/proc/wakelocks"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .local v5, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 84
    .local v7, "wakeup_sources":Z
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 85
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    if-lez v6, :cond_1

    .line 92
    array-length v8, v0

    if-lt v6, v8, :cond_0

    .line 93
    const-string/jumbo v8, "KernelWakelockReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 97
    aget-byte v8, v0, v4

    if-nez v8, :cond_2

    .line 98
    move v6, v4

    .line 103
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v0, v6, v7, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v8

    return-object v8

    .line 73
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "wakeup_sources":Z
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/d/wakeup_sources"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    .restart local v5    # "is":Ljava/io/FileInputStream;
    const/4 v7, 0x1

    .restart local v7    # "wakeup_sources":Z
    goto :goto_0

    .line 77
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "wakeup_sources":Z
    :catch_1
    move-exception v3

    .line 78
    .local v3, "e2":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string/jumbo v8, "KernelWakelockReader"

    const-string/jumbo v9, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 80
    return-object v10

    .line 86
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "KernelWakelockReader"

    const-string/jumbo v9, "failed to read kernel wakelocks"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    return-object v10

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    .restart local v7    # "wakeup_sources":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
