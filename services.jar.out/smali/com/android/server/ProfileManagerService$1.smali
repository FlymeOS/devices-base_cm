.class Lcom/android/server/ProfileManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ProfileManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ProfileManagerService;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    # invokes: Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lcom/android/server/ProfileManagerService;->access$000(Lcom/android/server/ProfileManagerService;)V

    .line 88
    iget-object v1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    # invokes: Lcom/android/server/ProfileManagerService;->initialize()V
    invoke-static {v1}, Lcom/android/server/ProfileManagerService;->access$100(Lcom/android/server/ProfileManagerService;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    # invokes: Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lcom/android/server/ProfileManagerService;->access$000(Lcom/android/server/ProfileManagerService;)V

    goto :goto_0
.end method
