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
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 75
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 79
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
    .line 57
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 63
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0
.end method

.method private static compress([B)[B
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 209
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "resultStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v4, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    if-eqz v4, :cond_0

    .line 217
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    move-object v3, v4

    .line 225
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    if-eqz v2, :cond_1

    .line 226
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    move-object v1, v2

    .line 234
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :cond_2
    :goto_2
    return-object v5

    .line 219
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 221
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 230
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v3, :cond_3

    .line 217
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 225
    :cond_3
    :goto_4
    if-eqz v1, :cond_2

    .line 226
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 228
    :catch_3
    move-exception v0

    .line 229
    const/4 v1, 0x0

    .line 230
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 219
    :catch_4
    move-exception v0

    .line 220
    const/4 v3, 0x0

    .line 221
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 216
    :goto_5
    if-eqz v3, :cond_4

    .line 217
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 225
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 226
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 232
    :cond_5
    :goto_7
    throw v5

    .line 219
    :catch_5
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 221
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 230
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 212
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method private static decompress([BI)[B
    .locals 12
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    .prologue
    const/4 v9, 0x0

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    .line 241
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v8, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-array v5, p1, [B

    .line 244
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 245
    .local v6, "totalReadBytes":I
    :goto_0
    array-length v10, v5

    if-ge v6, v10, :cond_0

    .line 246
    array-length v10, v5

    sub-int v4, v10, v6

    .line 247
    .local v4, "restBytes":I
    invoke-virtual {v8, v5, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 248
    .local v3, "readBytes":I
    if-gez v3, :cond_3

    .line 253
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :cond_0
    if-eq p1, v6, :cond_4

    .line 261
    if-eqz v8, :cond_1

    .line 262
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 270
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    move-object v5, v9

    .line 275
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    :goto_3
    return-object v5

    .line 251
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "readBytes":I
    .restart local v4    # "restBytes":I
    .restart local v5    # "result":[B
    .restart local v6    # "totalReadBytes":I
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_3
    add-int/2addr v6, v3

    .line 252
    goto :goto_0

    .line 264
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    if-eqz v8, :cond_5

    .line 262
    :try_start_5
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 269
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 270
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_5
    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .line 275
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 264
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_2
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "InputMethodSubtypeArray"

    const-string v10, "Failed to close the stream."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "InputMethodSubtypeArray"

    const-string v10, "Failed to close the stream."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_4
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    if-eqz v7, :cond_7

    .line 262
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 269
    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    .line 270
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_8
    :goto_8
    move-object v5, v9

    .line 275
    goto :goto_3

    .line 264
    :catch_5
    move-exception v0

    .line 265
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 272
    :catch_6
    move-exception v0

    .line 273
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 261
    :goto_9
    if-eqz v7, :cond_9

    .line 262
    :try_start_9
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 269
    :cond_9
    :goto_a
    if-eqz v1, :cond_a

    .line 270
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 275
    :cond_a
    :goto_b
    throw v9

    .line 264
    :catch_7
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .line 257
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_a
    move-exception v0

    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_6
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .locals 2
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    const/4 v0, 0x0

    :cond_0
    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    const/4 v0, 0x0

    :cond_1
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 196
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    const/4 v0, 0x0

    :cond_0
    return-object v1

    .line 198
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    const/4 v0, 0x0

    :cond_1
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 136
    if-ltz p1, :cond_0

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-gt v2, p1, :cond_1

    .line 137
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 139
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 140
    .local v1, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v1, :cond_3

    .line 141
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 143
    if-nez v1, :cond_2

    .line 144
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-static {v2, v4}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v0

    .line 147
    .local v0, "decompressedData":[B
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 148
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 149
    if-eqz v0, :cond_4

    .line 150
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 155
    :goto_0
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 157
    .end local v0    # "decompressedData":[B
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_3
    aget-object v2, v1, p1

    return-object v2

    .line 152
    .restart local v0    # "decompressedData":[B
    :cond_4
    :try_start_1
    const-string v2, "InputMethodSubtypeArray"

    const-string v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 157
    .end local v0    # "decompressedData":[B
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 91
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v3, :cond_0

    .line 92
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 97
    .local v0, "compressedData":[B
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 98
    .local v2, "decompressedSize":I
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 99
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 101
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 102
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 103
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v1

    .line 104
    .local v1, "decompressedData":[B
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    const/4 v2, -0x1

    .line 107
    const-string v3, "InputMethodSubtypeArray"

    const-string v5, "Failed to compress data."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 112
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 114
    .end local v1    # "decompressedData":[B
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_2
    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    .line 118
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 109
    .restart local v1    # "decompressedData":[B
    :cond_3
    :try_start_1
    array-length v2, v1

    goto :goto_1

    .line 114
    .end local v1    # "decompressedData":[B
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 122
    :cond_4
    const-string v3, "InputMethodSubtypeArray"

    const-string v4, "Unexpected state. Behaving as an empty array."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
