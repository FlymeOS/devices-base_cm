.class Lcom/android/server/SambaClientService$2;
.super Landroid/content/BroadcastReceiver;
.source "SambaClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SambaClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SambaClientService;


# direct methods
.method constructor <init>(Lcom/android/server/SambaClientService;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/server/SambaClientService$2;->this$0:Lcom/android/server/SambaClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 730
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SambaClientService$2;->this$0:Lcom/android/server/SambaClientService;

    # getter for: Lcom/android/server/SambaClientService;->mListerningIp:Z
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$600(Lcom/android/server/SambaClientService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/android/server/SambaClientService$2;->this$0:Lcom/android/server/SambaClientService;

    iget-object v3, p0, Lcom/android/server/SambaClientService$2;->this$0:Lcom/android/server/SambaClientService;

    # invokes: Lcom/android/server/SambaClientService;->getConnectedWifiIp()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/SambaClientService;->access$800(Lcom/android/server/SambaClientService;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/SambaClientService;->mIp:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/SambaClientService;->access$702(Lcom/android/server/SambaClientService;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    iget-object v2, p0, Lcom/android/server/SambaClientService$2;->this$0:Lcom/android/server/SambaClientService;

    # getter for: Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/SambaClientService;->access$900(Lcom/android/server/SambaClientService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meizu_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SambaClientService$2;->this$0:Lcom/android/server/SambaClientService;

    # invokes: Lcom/android/server/SambaClientService;->setNetbiosName(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/SambaClientService;->access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;)V

    .line 741
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method
