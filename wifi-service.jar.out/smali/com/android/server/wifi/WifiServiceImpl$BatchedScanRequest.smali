.class Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
.super Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedScanRequest"
.end annotation


# instance fields
.field final pid:I

.field final settings:Landroid/net/wifi/BatchedScanSettings;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;

.field final uid:I

.field final workSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 6
    .param p2, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    const/4 v3, 0x0

    .line 451
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 452
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 453
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    .line 454
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->uid:I

    .line 455
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->pid:I

    .line 456
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->workSource:Landroid/os/WorkSource;

    .line 457
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    iget v2, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->uid:I

    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->pid:I

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/BatchedScanSettings;II)V

    .line 460
    return-void
.end method

.method public isSameApp(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 466
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->uid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->pid:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatchedScanRequest{settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
