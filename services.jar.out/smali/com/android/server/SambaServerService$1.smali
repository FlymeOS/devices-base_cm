.class Lcom/android/server/SambaServerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SambaServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SambaServerService;


# direct methods
.method constructor <init>(Lcom/android/server/SambaServerService;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/SambaServerService$1;->this$0:Lcom/android/server/SambaServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SambaServerService$1;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mServerRunning:Z
    invoke-static {v1}, Lcom/android/server/SambaServerService;->access$000(Lcom/android/server/SambaServerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SambaServerService$1;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/SambaServerService;->access$100(Lcom/android/server/SambaServerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/server/SambaServerService$1;->this$0:Lcom/android/server/SambaServerService;

    # invokes: Lcom/android/server/SambaServerService;->getConnectedWifiIp()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/SambaServerService;->access$300(Lcom/android/server/SambaServerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SambaServerService$1;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$200(Lcom/android/server/SambaServerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/server/SambaServerService$1;->this$0:Lcom/android/server/SambaServerService;

    iget-object v2, p0, Lcom/android/server/SambaServerService$1;->this$0:Lcom/android/server/SambaServerService;

    # getter for: Lcom/android/server/SambaServerService;->mNotificationShown:Z
    invoke-static {v2}, Lcom/android/server/SambaServerService;->access$100(Lcom/android/server/SambaServerService;)Z

    move-result v2

    # invokes: Lcom/android/server/SambaServerService;->updateNotification(Z)V
    invoke-static {v1, v2}, Lcom/android/server/SambaServerService;->access$400(Lcom/android/server/SambaServerService;Z)V

    .line 260
    :cond_0
    return-void
.end method
