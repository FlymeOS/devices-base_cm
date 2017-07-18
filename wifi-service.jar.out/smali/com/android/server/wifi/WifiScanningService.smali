.class public Lcom/android/server/wifi/WifiScanningService;
.super Lcom/android/server/SystemService;
.source "WifiScanningService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiScanningService"


# instance fields
.field mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 32
    const-string/jumbo v0, "WifiScanningService"

    const-string/jumbo v1, "Creating wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 45
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 46
    const-string/jumbo v0, "WifiScanningService"

    const-string/jumbo v1, "Registering wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->startService(Landroid/content/Context;)V

    .line 44
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    .line 39
    const-string/jumbo v0, "WifiScanningService"

    const-string/jumbo v1, "Starting wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string/jumbo v0, "wifiscanner"

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 36
    return-void
.end method
