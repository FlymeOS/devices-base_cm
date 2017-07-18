.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 414
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-wrap0(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;)V

    invoke-static {v1, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-wrap1(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;Ljava/lang/Runnable;)V

    .line 427
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get6(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$2;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;)V

    .line 432
    const-wide/16 v4, 0x64

    .line 427
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    :goto_0
    return-void

    .line 434
    :cond_0
    sget-object v1, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-wrap3(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get5(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get5(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    :goto_1
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get3()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 442
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get6(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v1

    .line 439
    const-wide/16 v2, 0x320

    .line 438
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
