.class public final Landroid/graphics/pdf/PdfRenderer;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfRenderer$1;,
        Landroid/graphics/pdf/PdfRenderer$Page;
    }
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

.field private mInput:Landroid/os/ParcelFileDescriptor;

.field private final mNativeDocument:J

.field private final mPageCount:I

.field private final mTempPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 104
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "input cannot be null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const-wide/16 v6, 0x0

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v4, v6, v7, v5}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 147
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v1, v4}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v2, "size":J
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 153
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfRenderer;->nativeCreate(IJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    .line 154
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->nativeGetPageCount(J)I

    move-result v1

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    .line 155
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v4, "close"

    invoke-virtual {v1, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 156
    return-void

    .line 148
    .end local v2    # "size":J
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "file descriptor not seekable"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/pdf/PdfRenderer;

    .prologue
    .line 101
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Landroid/graphics/pdf/PdfRenderer;)J
    .locals 2
    .param p0, "x0"    # Landroid/graphics/pdf/PdfRenderer;

    .prologue
    .line 101
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    return-wide v0
.end method

.method static synthetic access$300(JILandroid/graphics/Point;)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/graphics/Point;

    .prologue
    .line 101
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/pdf/PdfRenderer;->nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(JJJIIIIJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # I
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # J
    .param p12, "x8"    # I

    .prologue
    .line 101
    invoke-static/range {p0 .. p12}, Landroid/graphics/pdf/PdfRenderer;->nativeRenderPage(JJJIIIIJI)V

    return-void
.end method

.method static synthetic access$500(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 101
    invoke-static {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->nativeClosePage(J)V

    return-void
.end method

.method static synthetic access$602(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p1, "x1"    # Landroid/graphics/pdf/PdfRenderer$Page;

    .prologue
    .line 101
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    return-object p1
.end method

.method private doClose()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 223
    :cond_0
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 230
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeClosePage(J)V
.end method

.method private static native nativeCreate(IJ)J
.end method

.method private static native nativeGetPageCount(J)I
.end method

.method private static native nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J
.end method

.method private static native nativeRenderPage(JJJIIIIJI)V
.end method

.method private static native nativeScaleForPrinting(J)Z
.end method

.method private throwIfClosed()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    return-void
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 246
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    if-lt p1, v0, :cond_1

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    return-void
.end method

.method private throwIfPageOpened()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current page not closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 164
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    .line 165
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    .line 166
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 211
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 175
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    return v0
.end method

.method public openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 201
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    .line 202
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageNotInDocument(I)V

    .line 203
    new-instance v0, Landroid/graphics/pdf/PdfRenderer$Page;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$1;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 204
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    return-object v0
.end method

.method public shouldScaleForPrinting()Z
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 188
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->nativeScaleForPrinting(J)Z

    move-result v0

    return v0
.end method
