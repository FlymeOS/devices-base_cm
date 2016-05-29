.class Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    sget-object v2, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    new-instance v1, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5$1;

    const-string v2, "Reboot"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5$1;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;Ljava/lang/String;)V

    .line 369
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 374
    .end local v1    # "thr":Ljava/lang/Thread;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$700(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 378
    :cond_0
    return-void

    .line 371
    :cond_1
    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 372
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0
.end method
