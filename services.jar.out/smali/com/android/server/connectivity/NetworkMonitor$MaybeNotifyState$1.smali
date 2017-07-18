.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;
.super Landroid/net/ICaptivePortal$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .locals 3
    .param p1, "response"    # I

    .prologue
    .line 386
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    .line 388
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 389
    const-string/jumbo v2, "CaptivePortal"

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82009

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    .line 385
    return-void
.end method
