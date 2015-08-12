.class Lcom/android/internal/widget/MzActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "MzActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    # invokes: Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$300(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    # getter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$500(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    # getter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$400(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$002(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    # getter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    # getter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    # getter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Lcom/android/internal/widget/MzActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    # getter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$700(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$202(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 135
    :cond_0
    return-void
.end method
