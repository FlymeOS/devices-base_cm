.class Lcom/android/server/SambaClientService$ScanThread;
.super Ljava/lang/Thread;
.source "SambaClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanThread"
.end annotation


# static fields
.field private static final SAMBA_PORT:I = 0x1bd


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mRunning:Z

.field private mTaskList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/SambaClientService$Task;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaClientService;)V
    .locals 1

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaClientService$ScanThread;->mRunning:Z

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SambaClientService$ScanThread;->mRunning:Z

    .line 447
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 450
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/SambaClientService$ScanThread;->mRunning:Z

    .line 451
    iget-object v2, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/server/SambaClientService$ScanThread;->mTaskList:Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/server/SambaClientService$ScanThread;->mTaskList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 454
    .local v0, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/SambaClientService$Task;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SambaClientService$Task;

    .line 456
    .local v1, "task":Lcom/android/server/SambaClientService$Task;
    invoke-virtual {v1}, Lcom/android/server/SambaClientService$Task;->cancel()V

    goto :goto_0

    .line 459
    .end local v0    # "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/SambaClientService$Task;>;"
    .end local v1    # "task":Lcom/android/server/SambaClientService$Task;
    :cond_0
    iget-object v2, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 461
    iget-object v2, p0, Lcom/android/server/SambaClientService$ScanThread;->mTaskList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 464
    :cond_1
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 471
    iget-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    # getter for: Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/SambaClientService;->access$200(Lcom/android/server/SambaClientService;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    # getter for: Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/SambaClientService;->access$200(Lcom/android/server/SambaClientService;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "IP":Ljava/lang/String;
    const-string v8, "SambaClientService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IP:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 478
    .local v5, "lastPoint":I
    if-lez v5, :cond_0

    .line 481
    const/4 v8, 0x0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "ipHead":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "ipTail":Ljava/lang/String;
    const/4 v2, 0x0

    .line 485
    .local v2, "iTail":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 491
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 492
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->mTaskList:Ljava/util/Collection;

    .line 494
    const/4 v7, 0x0

    .line 495
    .local v7, "taskList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Long;>;>;"
    const/4 v6, 0x1

    .local v6, "tail":I
    :goto_1
    const/16 v8, 0xff

    if-ge v6, v8, :cond_3

    .line 496
    if-eq v6, v2, :cond_2

    .line 497
    iget-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->mTaskList:Ljava/util/Collection;

    new-instance v9, Lcom/android/server/SambaClientService$Task;

    iget-object v10, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    const/16 v11, 0x1bd

    invoke-direct {v9, v10, v3, v6, v11}, Lcom/android/server/SambaClientService$Task;-><init>(Lcom/android/server/SambaClientService;Ljava/lang/String;II)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 486
    .end local v6    # "tail":I
    .end local v7    # "taskList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Long;>;>;"
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "SambaClientService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NumberFormatException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "tail":I
    .restart local v7    # "taskList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Long;>;>;"
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/android/server/SambaClientService$ScanThread;->mTaskList:Ljava/util/Collection;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 507
    :goto_2
    iget-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 509
    iget-boolean v8, p0, Lcom/android/server/SambaClientService$ScanThread;->mRunning:Z

    if-eqz v8, :cond_4

    .line 510
    iget-object v8, p0, Lcom/android/server/SambaClientService$ScanThread;->this$0:Lcom/android/server/SambaClientService;

    const-string v9, "SCAN_STOPED"

    const-string v10, ""

    # invokes: Lcom/android/server/SambaClientService;->onScanNotify(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v10}, Lcom/android/server/SambaClientService;->access$300(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_4
    const-string v8, "SambaClientService"

    const-string v9, "ScanThread over"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    :catch_1
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
