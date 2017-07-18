.class final Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
.super Ljava/lang/Thread;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WakeupReasonThread"
.end annotation


# static fields
.field private static final MAX_REASON_SIZE:I = 0x200


# instance fields
.field private mDecoder:Ljava/nio/charset/CharsetDecoder;

.field private mUtf16Buffer:Ljava/nio/CharBuffer;

.field private mUtf8Buffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 1006
    const-string/jumbo v0, "BatteryStats_wakeupReason"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method private waitWakeup()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1035
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1036
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1038
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-wrap0(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1039
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    .line 1040
    const/4 v1, 0x0

    return-object v1

    .line 1041
    :cond_0
    if-nez v0, :cond_1

    .line 1042
    const-string/jumbo v1, "unknown"

    return-object v1

    .line 1046
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1050
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1051
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1054
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x200

    .line 1010
    const/4 v2, -0x2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1012
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 1014
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 1012
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 1015
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 1012
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 1016
    const-string/jumbo v3, "?"

    .line 1012
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 1018
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    .line 1019
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    .line 1023
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->waitWakeup()Ljava/lang/String;

    move-result-object v1

    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1028
    .end local v1    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "BatteryStatsService"

    const-string/jumbo v3, "Failure reading wakeup reasons"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void

    .line 1024
    .restart local v1    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
.end method
