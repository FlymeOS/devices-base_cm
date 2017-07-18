.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private mConvertSessionId:I

.field private mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor <init>(Landroid/drm/DrmManagerClient;I)V
    .locals 0
    .param p1, "drmClient"    # Landroid/drm/DrmManagerClient;
    .param p2, "convertSessionId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 37
    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 35
    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v0, -0x1

    .line 50
    .local v0, "convertSessionId":I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-gez v0, :cond_3

    .line 70
    :cond_1
    return-object v8

    .line 52
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_2
    :try_start_0
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5

    .line 54
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    goto :goto_0

    .line 58
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v5, "DrmConvertSession"

    const-string/jumbo v6, "Could not access Open DrmFramework."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 61
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    .line 62
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :goto_2
    const-string/jumbo v5, "DrmConvertSession"

    .line 63
    const-string/jumbo v6, "DrmManagerClient instance could not be created, context is Illegal."

    .line 62
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_2
    move-exception v3

    .line 56
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string/jumbo v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Conversion of Mimetype: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 57
    const-string/jumbo v7, " is not supported."

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 64
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    move-object v1, v2

    .line 65
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :goto_3
    const-string/jumbo v5, "DrmConvertSession"

    const-string/jumbo v6, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    new-instance v5, Lcom/google/android/mms/util/DrmConvertSession;

    invoke-direct {v5, v1, v0}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    return-object v5

    .line 61
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 64
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3
.end method


# virtual methods
.method public close(Ljava/lang/String;)I
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    const/16 v6, 0x1eb

    .line 127
    .local v6, "result":I
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v9, :cond_1

    .line 129
    :try_start_0
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v10, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v9, v10}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    .line 130
    .local v0, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    if-eqz v0, :cond_0

    .line 131
    iget v9, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    .line 133
    :cond_0
    const/16 v6, 0x196

    .line 170
    .end local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :cond_1
    :goto_0
    return v6

    .line 132
    .restart local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :cond_2
    iget-object v9, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_0

    .line 135
    const/4 v7, 0x0

    .line 137
    .local v7, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rw"

    invoke-direct {v8, p1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v8, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_2
    iget v9, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    iget-object v9, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    const/16 v6, 0xc8

    .line 154
    if-eqz v8, :cond_1

    .line 156
    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    .line 159
    :try_start_4
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    const-string/jumbo v11, "."

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 165
    .end local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not close convertsession. Convertsession: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 167
    iget v11, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 166
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v5

    .line 151
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "e":Ljava/lang/SecurityException;
    :goto_1
    :try_start_5
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Access to File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 152
    const-string/jumbo v11, " was denied denied by SecurityManager."

    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    if-eqz v7, :cond_1

    .line 156
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 157
    :catch_3
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    .line 159
    :try_start_7
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    const-string/jumbo v11, "."

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/SecurityException;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    .line 148
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/16 v6, 0x1ec

    .line 149
    :try_start_8
    const-string/jumbo v9, "DrmConvertSession"

    const-string/jumbo v10, "Could not open file in mode: rw"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 154
    if-eqz v7, :cond_1

    .line 156
    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 157
    :catch_5
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    .line 159
    :try_start_a
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    const-string/jumbo v11, "."

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    .line 145
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    const/16 v6, 0x1ec

    .line 146
    :try_start_b
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not access File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 154
    if-eqz v7, :cond_1

    .line 156
    :try_start_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 157
    :catch_7
    move-exception v2

    .line 158
    const/16 v6, 0x1ec

    .line 159
    :try_start_d
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    const-string/jumbo v11, "."

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v1

    .line 142
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const/16 v6, 0x1ec

    .line 143
    :try_start_e
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " could not be found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 154
    if-eqz v7, :cond_1

    .line 156
    :try_start_f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    .line 157
    :catch_9
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    .line 159
    :try_start_10
    const-string/jumbo v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    const-string/jumbo v11, "."

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    .line 153
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 154
    :goto_5
    if-eqz v7, :cond_3

    .line 156
    :try_start_11
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1

    .line 153
    :cond_3
    :goto_6
    :try_start_12
    throw v9

    .line 157
    :catch_a
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    .line 159
    const-string/jumbo v10, "DrmConvertSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close File:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 160
    const-string/jumbo v12, "."

    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_1

    goto :goto_6

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v7, "rndAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 141
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_4

    .line 144
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object v7, v8

    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 150
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Ljava/lang/SecurityException;
    move-object v7, v8

    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method

.method public convert([BI)[B
    .locals 8
    .param p1, "inBuffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, "result":[B
    if-eqz p1, :cond_2

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :try_start_0
    array-length v5, p1

    if-eq p2, v5, :cond_1

    .line 89
    new-array v0, p2, [B

    .line 90
    .local v0, "buf":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v5, v0, v6, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v1

    .line 96
    .end local v0    # "buf":[B
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :goto_0
    if-eqz v1, :cond_0

    .line 97
    iget v5, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 98
    iget-object v5, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v5, :cond_0

    .line 99
    iget-object v4, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 111
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v4    # "result":[B
    :cond_0
    :goto_1
    return-object v4

    .line 93
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .restart local v4    # "result":[B
    :cond_1
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    goto :goto_0

    .line 104
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not convert data. Convertsession: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 106
    iget v7, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 101
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Buffer with data to convert is illegal. Convertsession: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 103
    iget v7, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Parameter inBuffer is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
