.class Lcom/android/server/wifi/WifiScanningServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;->startService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 244
    const-string/jumbo v1, "scan_enabled"

    .line 243
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v1

    const v2, 0x27106

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-ne v0, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v1

    const v2, 0x27107

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
