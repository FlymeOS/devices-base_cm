.class Lcom/android/server/TorchService$1;
.super Landroid/content/BroadcastReceiver;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TorchService;


# direct methods
.method constructor <init>(Lcom/android/server/TorchService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/TorchService$1;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    const-string v0, "com.android.server.TorchService.ACTION_TURN_FLASHLIGHT_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/server/TorchService$1;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$100(Lcom/android/server/TorchService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TorchService$1;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/TorchService;->access$000(Lcom/android/server/TorchService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/TorchService$1;->this$0:Lcom/android/server/TorchService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/TorchService;->setNotificationShown(Z)V
    invoke-static {v0, v1}, Lcom/android/server/TorchService;->access$200(Lcom/android/server/TorchService;Z)V

    goto :goto_0
.end method
