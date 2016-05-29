.class Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;
.super Landroid/content/BroadcastReceiver;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;
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
    .line 392
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$string;->global_action_power_restart:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$string;->global_action_shut_down:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_0
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    :cond_1
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 419
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$700(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    const-string v2, "com.meizu.font.change"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 424
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 426
    :cond_3
    return-void
.end method
