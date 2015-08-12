.class Lcom/android/internal/widget/MzActionBarOverlayLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzActionBarOverlayLayout.java"


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
    .line 97
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$002(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$102(Lcom/android/internal/widget/MzActionBarOverlayLayout;Z)Z

    .line 108
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$002(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$102(Lcom/android/internal/widget/MzActionBarOverlayLayout;Z)Z

    .line 102
    return-void
.end method
