.class Lcom/android/server/power/ShutdownThread$8;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$done"    # [Z

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$8;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$8;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 860
    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "/cache/recovery/uncrypt_status"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 862
    :try_start_0
    const-string/jumbo v11, "/cache/recovery/uncrypt_status"

    const/16 v12, 0x180

    invoke-static {v11, v12}, Landroid/system/Os;->mkfifo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 868
    :goto_0
    const-string/jumbo v11, "ctl.start"

    const-string/jumbo v12, "uncrypt"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v12, 0x0

    const/4 v5, 0x0

    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    .line 872
    new-instance v11, Ljava/io/FileReader;

    const-string/jumbo v13, "/cache/recovery/uncrypt_status"

    invoke-direct {v11, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 874
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/high16 v3, -0x80000000

    .line 876
    .local v3, "lastStatus":I
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 878
    .local v8, "str":Ljava/lang/String;
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 881
    .local v7, "status":I
    if-ne v7, v3, :cond_1

    const/high16 v11, -0x80000000

    if-ne v3, v11, :cond_0

    .line 884
    :cond_1
    move v3, v7

    .line 886
    if-ltz v7, :cond_3

    const/16 v11, 0x64

    if-ge v7, v11, :cond_3

    .line 888
    const-string/jumbo v11, "ShutdownThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uncrypt read status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    int-to-double v14, v7

    const-wide/high16 v16, 0x4054000000000000L    # 80.0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    double-to-int v7, v14

    .line 891
    add-int/lit8 v7, v7, 0x14

    .line 892
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/ShutdownThread$8;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-get1(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v11

    .line 893
    const v13, 0x1040185

    .line 892
    invoke-virtual {v11, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 894
    .local v4, "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Lcom/android/server/power/ShutdownThread;

    move-result-object v11

    invoke-static {v11, v7, v4}, Lcom/android/server/power/ShutdownThread;->-wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 907
    .end local v4    # "msg":Ljava/lang/CharSequence;
    .end local v7    # "status":I
    :catch_0
    move-exception v10

    .line 908
    .local v10, "unused":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v11, "ShutdownThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uncrypt invalid status received: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 914
    .end local v10    # "unused":Ljava/lang/NumberFormatException;
    :goto_2
    if-eqz v6, :cond_2

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    if-eqz v12, :cond_6

    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 912
    :catch_1
    move-exception v9

    .local v9, "unused":Ljava/io/IOException;
    move-object v5, v6

    .line 913
    .end local v3    # "lastStatus":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "str":Ljava/lang/String;
    :goto_4
    const-string/jumbo v11, "ShutdownThread"

    const-string/jumbo v12, "IOException when reading \"/cache/recovery/uncrypt_status\"."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v9    # "unused":Ljava/io/IOException;
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/ShutdownThread$8;->val$done:[Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-boolean v12, v11, v13

    .line 858
    return-void

    .line 863
    :catch_2
    move-exception v2

    .line 864
    .local v2, "e":Landroid/system/ErrnoException;
    const-string/jumbo v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ErrnoException when creating named pipe \"/cache/recovery/uncrypt_status\": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 865
    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 864
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 895
    .end local v2    # "e":Landroid/system/ErrnoException;
    .restart local v3    # "lastStatus":I
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "status":I
    .restart local v8    # "str":Ljava/lang/String;
    :cond_3
    const/16 v11, 0x64

    if-ne v7, v11, :cond_5

    .line 896
    :try_start_7
    const-string/jumbo v11, "ShutdownThread"

    const-string/jumbo v13, "uncrypt successfully finished."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/ShutdownThread$8;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-get1(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v11

    .line 898
    const v13, 0x1040186

    .line 897
    invoke-virtual {v11, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 899
    .restart local v4    # "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Lcom/android/server/power/ShutdownThread;

    move-result-object v11

    invoke-static {v11, v7, v4}, Lcom/android/server/power/ShutdownThread;->-wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 914
    .end local v4    # "msg":Ljava/lang/CharSequence;
    .end local v7    # "status":I
    .end local v8    # "str":Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object v5, v6

    .end local v3    # "lastStatus":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_6
    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v12

    move-object/from16 v18, v12

    move-object v12, v11

    move-object/from16 v11, v18

    :goto_7
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_4
    :goto_8
    if-eqz v12, :cond_8

    :try_start_a
    throw v12
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 912
    :catch_4
    move-exception v9

    .restart local v9    # "unused":Ljava/io/IOException;
    goto :goto_4

    .line 904
    .end local v9    # "unused":Ljava/io/IOException;
    .restart local v3    # "lastStatus":I
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "status":I
    .restart local v8    # "str":Ljava/lang/String;
    :cond_5
    :try_start_b
    const-string/jumbo v11, "ShutdownThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uncrypt failed with status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 914
    .end local v7    # "status":I
    .end local v8    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_5
    move-exception v12

    goto/16 :goto_3

    :cond_6
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v3    # "lastStatus":I
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "str":Ljava/lang/String;
    :catch_6
    move-exception v13

    if-nez v12, :cond_7

    move-object v12, v13

    goto :goto_8

    :cond_7
    if-eq v12, v13, :cond_4

    :try_start_c
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_8
    throw v11
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .local v5, "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v11

    goto :goto_7

    :catch_7
    move-exception v11

    goto :goto_6
.end method
