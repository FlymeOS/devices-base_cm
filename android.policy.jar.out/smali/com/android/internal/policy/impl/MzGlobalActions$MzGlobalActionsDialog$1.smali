.class Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;
.super Landroid/os/Handler;
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
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$000(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # setter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$002(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;Z)Z

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$100(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$200(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBlurAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v4, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$300(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v4, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$400(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v4, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->access$500(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
