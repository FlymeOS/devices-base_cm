.class Lcom/android/server/pm/MultiTaskDealer$2;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MultiTaskDealer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/MultiTaskDealer;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/MultiTaskDealer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/MultiTaskDealer;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/pm/MultiTaskDealer;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # J
    .param p6, "$anonymous3"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "$anonymous5"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 91
    .local p7, "$anonymous4":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/pm/MultiTaskDealer$2;->this$0:Lcom/android/server/pm/MultiTaskDealer;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer$2;->this$0:Lcom/android/server/pm/MultiTaskDealer;

    invoke-static {v0, p1}, Lcom/android/server/pm/MultiTaskDealer;->-wrap0(Lcom/android/server/pm/MultiTaskDealer;Ljava/lang/Runnable;)V

    .line 99
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method
