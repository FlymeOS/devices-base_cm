.class Landroid/app/EnterTransitionCoordinator$7;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$7;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 464
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x0

    # setter for: Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;
    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->access$402(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 465
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 466
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    # invokes: Landroid/app/EnterTransitionCoordinator;->viewTransitionComplete()V
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->access$500(Landroid/app/EnterTransitionCoordinator;)V

    .line 467
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 468
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 455
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    # setter for: Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->access$402(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 456
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->val$transitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$7;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$7;->val$transitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 459
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 460
    return-void
.end method
