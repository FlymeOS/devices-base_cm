.class Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->token:Ljava/lang/ref/WeakReference;

    .line 118
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string v0, "FingerprintService"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 125
    const-string v0, "FingerprintService"

    const-string v1, "binderDied(), cleaning up wake client!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;
    invoke-static {v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->access$102(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 128
    :cond_0
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->token:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->token:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method
