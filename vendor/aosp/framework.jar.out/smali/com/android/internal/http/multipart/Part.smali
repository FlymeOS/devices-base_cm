.class public abstract Lcom/android/internal/http/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/internal/http/multipart/Part;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    .line 73
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->BOUNDARY_BYTES:[B

    .line 79
    sget-object v0, Lcom/android/internal/http/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 85
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    .line 91
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    .line 98
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    .line 105
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 112
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 119
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CHARSET_BYTES:[B

    .line 126
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "----------------314159265358979323846"

    return-object v0
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;)J
    .locals 2
    .param p0, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, v0}, Lcom/android/internal/http/multipart/Part;->getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J
    .locals 8
    .param p0, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "getLengthOfParts(Parts[])"

    invoke-interface {v1, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 426
    if-nez p0, :cond_0

    .line 427
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_0
    const-wide/16 v4, 0x0

    .line 430
    .local v4, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 432
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/http/multipart/Part;->setPartBoundary([B)V

    .line 433
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/internal/http/multipart/Part;->length()J

    move-result-wide v2

    .line 434
    .local v2, "l":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 435
    const-wide/16 v6, -0x1

    .line 443
    .end local v2    # "l":J
    :goto_1
    return-wide v6

    .line 437
    .restart local v2    # "l":J
    :cond_1
    add-long/2addr v4, v2

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v2    # "l":J
    :cond_2
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 440
    array-length v1, p1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 441
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 442
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    move-wide v6, v4

    .line 443
    goto :goto_1
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, p1, v0}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    .line 367
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .param p2, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 387
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 391
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/http/multipart/Part;->setPartBoundary([B)V

    .line 392
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/http/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_3
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 395
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 396
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 397
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 398
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter length()"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->lengthOfData()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 334
    const-wide/16 v2, -0x1

    .line 343
    :goto_0
    return-wide v2

    .line 336
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 337
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->lengthOfData()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter send(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 320
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    sget-object v2, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter sendContentTypeHeader(OutputStream out)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 239
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 240
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 241
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 244
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 245
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 248
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 224
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 225
    sget-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 227
    sget-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 228
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEnd(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 300
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 301
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEndOfHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 274
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 275
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 276
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendStart(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 211
    sget-object v0, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 213
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter sendTransferEncodingHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 261
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 262
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 263
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 265
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .param p1, "boundaryBytes"    # [B

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
