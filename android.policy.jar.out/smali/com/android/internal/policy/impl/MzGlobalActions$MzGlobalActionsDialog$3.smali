.class Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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
    .line 292
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBlurAlpha(F)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBlurIntensity(F)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->enableBlurGlassFeature(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # setter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$002(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;Z)Z

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 326
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$002(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;Z)Z

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$800(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$800(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$800(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$900(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$900(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$900(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 312
    :cond_4
    return-void
.end method
