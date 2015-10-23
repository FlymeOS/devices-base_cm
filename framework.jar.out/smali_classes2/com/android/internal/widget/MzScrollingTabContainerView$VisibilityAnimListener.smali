.class public Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "MzScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;)V
    .locals 1

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 796
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 790
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 800
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iput-object p1, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 782
    iput-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 783
    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 774
    iput p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 775
    return-object p0
.end method
