.class Landroid/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mLayerTypeChanged:Z

.field private mPausedAlpha:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 146
    iput-boolean v1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mCanceled:Z

    .line 147
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    .line 148
    iput-boolean v1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 151
    iput-object p1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 152
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mCanceled:Z

    .line 165
    iget v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 175
    :cond_0
    iget-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 178
    :cond_1
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 182
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    iput v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    .line 183
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 184
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 188
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 189
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 158
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 160
    :cond_0
    return-void
.end method
