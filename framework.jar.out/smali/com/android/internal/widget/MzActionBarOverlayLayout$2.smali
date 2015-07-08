.class Lcom/android/internal/widget/MzActionBarOverlayLayout$2;
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
    .line 112
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$202(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$102(Lcom/android/internal/widget/MzActionBarOverlayLayout;Z)Z

    .line 123
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$202(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;->this$0:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->access$102(Lcom/android/internal/widget/MzActionBarOverlayLayout;Z)Z

    .line 117
    return-void
.end method
