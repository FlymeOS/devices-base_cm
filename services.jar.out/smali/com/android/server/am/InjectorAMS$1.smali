.class final Lcom/android/server/am/InjectorAMS$1;
.super Ljava/lang/Thread;
.source "InjectorAMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/InjectorAMS;->reportApplicationError(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dump:Ljava/lang/StringBuilder;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$processName:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p2, p0, Lcom/android/server/am/InjectorAMS$1;->val$report:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/InjectorAMS$1;->val$dump:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/InjectorAMS$1;->val$logFile:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/am/InjectorAMS$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p6, p0, Lcom/android/server/am/InjectorAMS$1;->val$eventType:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/InjectorAMS$1;->val$packageName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/InjectorAMS$1;->val$processName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/InjectorAMS$1;->val$subject:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$dump:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/InjectorAMS$1;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$logFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$dump:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/InjectorAMS$1;->val$logFile:Ljava/io/File;

    const/high16 v2, 0x40000

    const-string v3, "\n\n[[TRUNCATED]]"

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$dump:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/InjectorAMS$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$dump:Ljava/lang/StringBuilder;

    const-string v1, "\n\n----------Logcat----------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v0, "anr"

    iget-object v1, p0, Lcom/android/server/am/InjectorAMS$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "watchdog"

    iget-object v1, p0, Lcom/android/server/am/InjectorAMS$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    :cond_3
    const/16 v11, 0x7d0

    .line 151
    .local v11, "logLines":I
    :goto_1
    const/4 v9, 0x0

    .line 153
    .local v9, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "-b"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "events"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "-b"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "system"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "-b"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "main"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "-t"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "-d"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 158
    .local v12, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :goto_2
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    :goto_3
    :try_start_4
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .local v10, "input":Ljava/io/InputStreamReader;
    const/16 v0, 0x2000

    :try_start_5
    new-array v7, v0, [C

    .line 169
    .local v7, "buf":[C
    :goto_4
    invoke-virtual {v10, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v13

    .local v13, "num":I
    if-lez v13, :cond_6

    .line 170
    iget-object v0, p0, Lcom/android/server/am/InjectorAMS$1;->val$dump:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 171
    .end local v7    # "buf":[C
    .end local v13    # "num":I
    :catch_0
    move-exception v8

    move-object v9, v10

    .line 172
    .end local v10    # "input":Ljava/io/InputStreamReader;
    .end local v12    # "logcat":Ljava/lang/Process;
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    :goto_5
    :try_start_6
    # getter for: Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error running logcat"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    if-eqz v9, :cond_4

    .line 176
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 180
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    # getter for: Lcom/android/server/am/InjectorAMS;->mErrorListenerLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->access$000()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 182
    :try_start_8
    # getter for: Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->access$100()Landroid/app/IApplicationErrorListener;
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    if-nez v0, :cond_8

    .line 183
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 194
    :goto_7
    return-void

    .line 137
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .end local v11    # "logLines":I
    :catch_1
    move-exception v8

    .line 138
    .restart local v8    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/InjectorAMS$1;->val$logFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 149
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    const/16 v11, 0x3e8

    .restart local v11    # "logLines":I
    goto/16 :goto_1

    .line 174
    .restart local v7    # "buf":[C
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v12    # "logcat":Ljava/lang/Process;
    .restart local v13    # "num":I
    :cond_6
    if-eqz v10, :cond_9

    .line 176
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-object v9, v10

    .line 178
    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 177
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v0

    move-object v9, v10

    .line 178
    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 174
    .end local v7    # "buf":[C
    .end local v12    # "logcat":Ljava/lang/Process;
    .end local v13    # "num":I
    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v9, :cond_7

    .line 176
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 178
    :cond_7
    :goto_9
    throw v0

    .line 185
    :cond_8
    :try_start_c
    # getter for: Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->access$100()Landroid/app/IApplicationErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/InjectorAMS$1;->val$eventType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/InjectorAMS$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/InjectorAMS$1;->val$processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/InjectorAMS$1;->val$subject:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/InjectorAMS$1;->val$dump:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/InjectorAMS$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationErrorListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 193
    :goto_a
    :try_start_d
    monitor-exit v14

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 187
    :catch_3
    move-exception v8

    .line 188
    .local v8, "e":Landroid/os/DeadObjectException;
    :try_start_e
    invoke-virtual {v8}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 189
    const/4 v0, 0x0

    # setter for: Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;
    invoke-static {v0}, Lcom/android/server/am/InjectorAMS;->access$102(Landroid/app/IApplicationErrorListener;)Landroid/app/IApplicationErrorListener;

    goto :goto_a

    .line 190
    .end local v8    # "e":Landroid/os/DeadObjectException;
    :catch_4
    move-exception v8

    .line 191
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_a

    .line 177
    .local v8, "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    goto :goto_6

    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    goto :goto_9

    .line 174
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v12    # "logcat":Ljava/lang/Process;
    :catchall_2
    move-exception v0

    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    goto :goto_8

    .line 171
    .end local v12    # "logcat":Ljava/lang/Process;
    :catch_7
    move-exception v8

    goto/16 :goto_5

    .line 163
    .restart local v12    # "logcat":Ljava/lang/Process;
    :catch_8
    move-exception v0

    goto/16 :goto_3

    .line 159
    :catch_9
    move-exception v0

    goto/16 :goto_2

    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v7    # "buf":[C
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v13    # "num":I
    :cond_9
    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    goto :goto_6
.end method
