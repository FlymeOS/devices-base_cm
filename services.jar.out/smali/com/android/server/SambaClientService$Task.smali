.class Lcom/android/server/SambaClientService$Task;
.super Ljava/lang/Object;
.source "SambaClientService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private ipHead:Ljava/lang/String;

.field private ipTail:I

.field private mCanceled:Z

.field private port:I

.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method public constructor <init>(Lcom/android/server/SambaClientService;Ljava/lang/String;II)V
    .locals 1
    .param p2, "ipHead"    # Ljava/lang/String;
    .param p3, "ipTail"    # I
    .param p4, "port"    # I

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaClientService$Task;->mCanceled:Z

    .line 581
    iput-object p2, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    .line 582
    iput p3, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    .line 583
    iput p4, p0, Lcom/android/server/SambaClientService$Task;->port:I

    .line 585
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 10

    .prologue
    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 597
    .local v4, "start":J
    const/4 v2, 0x0

    .line 598
    .local v2, "exist":Z
    const/4 v3, 0x0

    .line 609
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/SambaClientService;->getNetbiosName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 613
    :goto_0
    if-eqz v3, :cond_0

    .line 614
    iget-object v6, p0, Lcom/android/server/SambaClientService$Task;->this$0:Lcom/android/server/SambaClientService;

    const-string v7, "SCAN_NEW_SERVER"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/SambaClientService$Task;->ipHead:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/SambaClientService$Task;->ipTail:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/SambaClientService;->onScanNotify(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/SambaClientService;->access$300(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 618
    .local v0, "end":J
    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6

    .line 610
    .end local v0    # "end":J
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/server/SambaClientService$Task;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/SambaClientService$Task;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/SambaClientService$Task;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
