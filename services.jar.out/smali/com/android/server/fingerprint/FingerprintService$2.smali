.class Lcom/android/server/fingerprint/FingerprintService$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 374
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 375
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 376
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 377
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 380
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mState:I
    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    .end local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "FingerprintService"

    const-string v6, "can\'t send message to client. Did it die?"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 388
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    return-void
.end method
