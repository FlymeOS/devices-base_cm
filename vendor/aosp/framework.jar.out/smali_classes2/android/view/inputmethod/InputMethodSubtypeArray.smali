.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 70
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 58
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 52
    return-void
.end method

.method private static compress([B)[B
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 201
    const/4 v1, 0x0

    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "resultStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 203
    .local v4, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 204
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 205
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v8

    .line 209
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 206
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .line 207
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :goto_2
    const-string/jumbo v5, "InputMethodSubtypeArray"

    const-string/jumbo v6, "Failed to compress the data."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-object v7

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v5

    if-eqz v6, :cond_2

    if-eq v6, v5, :cond_1

    :try_start_6
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v5, v6

    goto :goto_1

    .line 205
    :cond_3
    return-object v8

    .line 209
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception v5

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    move-object v8, v6

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    move-object v6, v8

    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    :try_start_a
    throw v6

    .line 206
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    if-eqz v6, :cond_5

    if-eq v6, v8, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v6

    goto :goto_5

    :catch_6
    move-exception v6

    if-eqz v8, :cond_7

    if-eq v8, v6, :cond_6

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v8

    goto :goto_6

    :cond_8
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v5

    move-object v6, v7

    goto :goto_4

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v5

    move-object v6, v7

    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v5

    move-object v6, v7

    move-object v3, v4

    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method private static decompress([BI)[B
    .locals 14
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    .prologue
    const/4 v11, 0x0

    .line 213
    const/4 v1, 0x0

    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 215
    .local v8, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-array v5, p1, [B

    .line 216
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 217
    .local v6, "totalReadBytes":I
    :goto_0
    array-length v9, v5

    if-ge v6, v9, :cond_0

    .line 218
    array-length v9, v5

    sub-int v4, v9, v6

    .line 219
    .local v4, "restBytes":I
    invoke-virtual {v8, v5, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v3

    .line 220
    .local v3, "readBytes":I
    if-gez v3, :cond_4

    .line 225
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :cond_0
    if-eq p1, v6, :cond_6

    .line 232
    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v10, v11

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    move-object v9, v10

    :cond_3
    :goto_2
    if-eqz v9, :cond_5

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .line 230
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :goto_3
    const-string/jumbo v9, "InputMethodSubtypeArray"

    const-string/jumbo v10, "Failed to decompress the data."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    return-object v11

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "readBytes":I
    .restart local v4    # "restBytes":I
    .restart local v5    # "result":[B
    .restart local v6    # "totalReadBytes":I
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_4
    add-int/2addr v6, v3

    goto :goto_0

    .line 232
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :catch_1
    move-exception v10

    goto :goto_1

    :catch_2
    move-exception v9

    if-eqz v10, :cond_3

    if-eq v10, v9, :cond_2

    :try_start_6
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v9, v10

    goto :goto_2

    .line 226
    :cond_5
    return-object v11

    .line 232
    :cond_6
    if-eqz v8, :cond_7

    :try_start_7
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_7
    move-object v10, v11

    :goto_4
    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    move-object v9, v10

    :cond_9
    :goto_5
    if-eqz v9, :cond_a

    :try_start_9
    throw v9

    :catch_3
    move-exception v10

    goto :goto_4

    :catch_4
    move-exception v9

    if-eqz v10, :cond_9

    if-eq v10, v9, :cond_8

    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object v9, v10

    goto :goto_5

    .line 228
    :cond_a
    return-object v5

    .line 232
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_5
    move-exception v9

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :goto_6
    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_7
    if-eqz v7, :cond_b

    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_b
    move-object v12, v10

    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_d
    move-object v10, v12

    :cond_e
    :goto_9
    if-eqz v10, :cond_f

    :try_start_d
    throw v10

    .line 229
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v12

    if-eqz v10, :cond_c

    if-eq v10, v12, :cond_b

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v12, v10

    goto :goto_8

    :catch_8
    move-exception v10

    if-eqz v12, :cond_e

    if-eq v12, v10, :cond_d

    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v12

    goto :goto_9

    :cond_f
    throw v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v9

    move-object v10, v11

    goto :goto_7

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v9

    move-object v10, v11

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v9

    move-object v10, v11

    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_9
    move-exception v9

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_a
    move-exception v9

    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_6
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .locals 2
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    const/4 v0, 0x0

    .line 176
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    .line 178
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    const/4 v0, 0x0

    .line 177
    :cond_1
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 191
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    const/4 v0, 0x0

    .line 191
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    return-object v1

    .line 192
    :catchall_0
    move-exception v1

    .line 193
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    const/4 v0, 0x0

    .line 192
    :cond_1
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 131
    if-ltz p1, :cond_0

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-gt v2, p1, :cond_1

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 134
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 135
    .local v1, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v1, :cond_3

    .line 136
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 138
    if-nez v1, :cond_2

    .line 140
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-static {v2, v4}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v0

    .line 142
    .local v0, "decompressedData":[B
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 144
    if-eqz v0, :cond_4

    .line 145
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 150
    :goto_0
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "decompressedData":[B
    :cond_2
    monitor-exit v3

    .line 154
    :cond_3
    aget-object v2, v1, p1

    return-object v2

    .line 147
    .restart local v0    # "decompressedData":[B
    :cond_4
    :try_start_1
    const-string/jumbo v2, "InputMethodSubtypeArray"

    const-string/jumbo v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "decompressedData":[B
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 86
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v3, :cond_0

    .line 87
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 92
    .local v0, "compressedData":[B
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 93
    .local v2, "decompressedSize":I
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 94
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 96
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 97
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 98
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v1

    .line 99
    .local v1, "decompressedData":[B
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v0

    .line 100
    if-nez v0, :cond_3

    .line 101
    const/4 v2, -0x1

    .line 102
    const-string/jumbo v3, "InputMethodSubtypeArray"

    const-string/jumbo v5, "Failed to compress data."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 107
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "decompressedData":[B
    :cond_1
    monitor-exit v4

    .line 112
    :cond_2
    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    .line 113
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 85
    :goto_1
    return-void

    .line 104
    .restart local v1    # "decompressedData":[B
    :cond_3
    :try_start_1
    array-length v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v1    # "decompressedData":[B
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 117
    :cond_4
    const-string/jumbo v3, "InputMethodSubtypeArray"

    const-string/jumbo v4, "Unexpected state. Behaving as an empty array."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
