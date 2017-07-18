.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeStatusBarEventReceiver"
.end annotation


# instance fields
.field private mPwm:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7492
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 7493
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 7492
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7499
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "meizu.intent.action.REQUEST_TRANSIENT_STATUSBAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7500
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 7501
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->flymeInvokeMethodRequestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7497
    :cond_0
    return-void
.end method
