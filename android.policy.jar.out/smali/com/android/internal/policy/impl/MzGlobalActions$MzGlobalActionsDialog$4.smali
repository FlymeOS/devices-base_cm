.class Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$4;
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
    .line 339
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/MzGlobalActions;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$700(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    :cond_0
    return-void
.end method
