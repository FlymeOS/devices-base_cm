.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "DrmOutputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final mClient:Landroid/drm/DrmManagerClient;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 62
    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    .line 63
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 64
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    .line 66
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 67
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open DRM session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 127
    const-string v0, "DrmOutputStream"

    const-string v1, "Closing stream without finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 131
    return-void
.end method

.method public finish()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v11, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v12, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v11, v12}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v10

    .line 74
    .local v10, "status":Landroid/drm/DrmConvertedStatus;
    iget v11, v10, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 76
    :try_start_0
    iget-object v11, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget v12, v10, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v12, v12

    sget v14, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v11, v12, v13, v14}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    const/4 v5, 0x0

    .line 83
    .local v5, "ipStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 85
    .local v7, "path":Ljava/lang/String;
    :try_start_1
    iget-object v4, v10, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 86
    .local v4, "filePath":[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v7    # "path":Ljava/lang/String;
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v5    # "ipStream":Ljava/io/InputStream;
    .local v6, "ipStream":Ljava/io/InputStream;
    move-object v5, v6

    .line 88
    .end local v6    # "ipStream":Ljava/io/InputStream;
    .restart local v5    # "ipStream":Ljava/io/InputStream;
    :cond_0
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 89
    .local v0, "buffer":[B
    const/4 v9, 0x0

    .line 91
    .local v9, "size":I
    :cond_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 92
    if-lez v9, :cond_2

    .line 93
    iget-object v11, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    const/4 v12, 0x0

    invoke-static {v11, v0, v12, v9}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :cond_2
    if-gtz v9, :cond_1

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "file":Ljava/io/File;
    if-eqz v8, :cond_3

    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    move-object v2, v3

    .line 109
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 110
    const-string v11, "DrmOutputStream"

    const-string v12, "deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object v7, v8

    .line 118
    .end local v0    # "buffer":[B
    .end local v4    # "filePath":[B
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "size":I
    .restart local v7    # "path":Ljava/lang/String;
    :goto_2
    const/4 v11, -0x1

    iput v11, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 122
    return-void

    .line 77
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "ipStream":Ljava/io/InputStream;
    .end local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto :goto_0

    .line 112
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filePath":[B
    .restart local v5    # "ipStream":Ljava/io/InputStream;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "size":I
    :cond_4
    :try_start_4
    const-string v11, "DrmOutputStream"

    const-string v12, "could not deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 114
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "DrmOutputStream"

    const-string v12, "exeption"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 117
    .end local v8    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    goto :goto_2

    .line 96
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "filePath":[B
    .end local v9    # "size":I
    :catch_2
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v11, "DrmOutputStream"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " could not be found."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    const/4 v2, 0x0

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v7, :cond_5

    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .line 109
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 110
    const-string v11, "DrmOutputStream"

    const-string v12, "deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 114
    :catch_3
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "DrmOutputStream"

    const-string v12, "exeption"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 112
    .local v1, "e":Ljava/io/FileNotFoundException;
    :cond_6
    :try_start_7
    const-string v11, "DrmOutputStream"

    const-string v12, "could not deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 98
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v11, "DrmOutputStream"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not access File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 107
    const/4 v2, 0x0

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v7, :cond_7

    :try_start_9
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .line 109
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 110
    const-string v11, "DrmOutputStream"

    const-string v12, "deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 114
    :catch_5
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "DrmOutputStream"

    const-string v12, "exeption"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 112
    .local v1, "e":Ljava/io/IOException;
    :cond_8
    :try_start_a
    const-string v11, "DrmOutputStream"

    const-string v12, "could not deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_6
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    :try_start_b
    const-string v11, "DrmOutputStream"

    const-string v12, "Could not open file in mode: rw"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 107
    const/4 v2, 0x0

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v7, :cond_9

    :try_start_c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .line 109
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 110
    const-string v11, "DrmOutputStream"

    const-string v12, "deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_2

    .line 114
    :catch_7
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "DrmOutputStream"

    const-string v12, "exeption"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 112
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :cond_a
    :try_start_d
    const-string v11, "DrmOutputStream"

    const-string v12, "could not deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_2

    .line 102
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "file":Ljava/io/File;
    :catch_8
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_6
    :try_start_e
    const-string v11, "DrmOutputStream"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Access to File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was denied denied by SecurityManager."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 107
    const/4 v2, 0x0

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v7, :cond_b

    :try_start_f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .line 109
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 110
    const-string v11, "DrmOutputStream"

    const-string v12, "deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_2

    .line 114
    :catch_9
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "DrmOutputStream"

    const-string v12, "exeption"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 112
    .local v1, "e":Ljava/lang/SecurityException;
    :cond_c
    :try_start_10
    const-string v11, "DrmOutputStream"

    const-string v12, "could not deleted the temp file "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_2

    .line 106
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v11

    .line 107
    :goto_7
    const/4 v2, 0x0

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v7, :cond_d

    :try_start_11
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .line 109
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 110
    const-string v12, "DrmOutputStream"

    const-string v13, "deleted the temp file "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 116
    :goto_8
    throw v11

    .line 112
    :cond_e
    :try_start_12
    const-string v12, "DrmOutputStream"

    const-string v13, "could not deleted the temp file "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_8

    .line 114
    :catch_a
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "DrmOutputStream"

    const-string v13, "exeption"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "ipStream":Ljava/io/InputStream;
    .end local v7    # "path":Ljava/lang/String;
    :cond_f
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected DRM status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 106
    .restart local v4    # "filePath":[B
    .restart local v5    # "ipStream":Ljava/io/InputStream;
    .restart local v8    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    goto :goto_7

    .line 102
    .end local v7    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_b
    move-exception v1

    move-object v7, v8

    .end local v8    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    goto/16 :goto_6

    .line 100
    .end local v7    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_c
    move-exception v1

    move-object v7, v8

    .end local v8    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    goto/16 :goto_5

    .line 98
    .end local v7    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_d
    move-exception v1

    move-object v7, v8

    .end local v8    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    goto/16 :goto_4

    .line 96
    .end local v7    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_e
    move-exception v1

    move-object v7, v8

    .end local v8    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 157
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 138
    array-length v2, p1

    if-ne p3, v2, :cond_0

    .line 139
    move-object v0, p1

    .line 145
    .local v0, "exactBuffer":[B
    :goto_0
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v2, v3, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v1

    .line 146
    .local v1, "status":Landroid/drm/DrmConvertedStatus;
    iget v2, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 152
    return-void

    .line 141
    .end local v0    # "exactBuffer":[B
    .end local v1    # "status":Landroid/drm/DrmConvertedStatus;
    :cond_0
    new-array v0, p3, [B

    .line 142
    .restart local v0    # "exactBuffer":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 150
    .restart local v1    # "status":Landroid/drm/DrmConvertedStatus;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected DRM status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
