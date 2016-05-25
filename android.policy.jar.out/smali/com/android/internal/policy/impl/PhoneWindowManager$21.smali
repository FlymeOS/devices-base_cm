.class Lcom/android/internal/policy/impl/PhoneWindowManager$21;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5973
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 5976
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5981
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->onChange(Z)V

    .line 5983
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v0, :cond_0

    .line 5984
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions;->updatePowerMenuActions()V

    .line 5990
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5991
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 5992
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    .line 5993
    monitor-exit v1

    .line 5995
    :cond_1
    return-void

    .line 5993
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
