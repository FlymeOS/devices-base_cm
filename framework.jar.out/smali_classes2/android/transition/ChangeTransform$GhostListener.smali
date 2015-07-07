.class Landroid/transition/ChangeTransform$GhostListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mEndMatrix:Landroid/graphics/Matrix;

.field private mGhostView:Landroid/view/GhostView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/GhostView;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ghostView"    # Landroid/view/GhostView;
    .param p3, "endMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 436
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 437
    iput-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 438
    iput-object p2, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    .line 439
    iput-object p3, p0, Landroid/transition/ChangeTransform$GhostListener;->mEndMatrix:Landroid/graphics/Matrix;

    .line 440
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v2, 0x0

    .line 444
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 445
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x1020046

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 447
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x1020047

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 448
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 452
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 453
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 457
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 458
    return-void
.end method
