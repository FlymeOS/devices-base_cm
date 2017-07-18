.class public Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "TemporaryBuffer.java"


# static fields
.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 28
    const-class v2, Landroid/graphics/TemporaryBuffer;

    monitor-enter v2

    .line 29
    :try_start_0
    sget-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 30
    .local v0, "buf":[C
    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/TemporaryBuffer;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 33
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    .line 37
    :cond_1
    return-object v0

    .line 28
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .prologue
    .line 41
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    return-void

    .line 43
    :cond_0
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    .line 44
    :try_start_0
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 40
    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
