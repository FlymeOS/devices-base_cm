.class public abstract Lcom/android/internal/widget/MzAbsActionBarView;
.super Landroid/view/ViewGroup;
.source "MzAbsActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field protected static final MAX_ACTIONS_ITEM:I = 0x5

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

.field protected mActionModeHeaderHidden:Z

.field protected mBackButton:Lcom/meizu/widget/KeyBackButton;

.field protected mBackIcon:Landroid/graphics/drawable/Drawable;

.field public mCompulsorySplit:Z

.field protected mContentHeight:I

.field private mCustomBackButton:Z

.field private mCustomHeight:I

.field protected mEnableBackButton:Z

.field protected mInActionMode:Z

.field protected mIsOverlay:Z

.field protected mMaxTitleWidth:I

.field protected mMenuView:Landroid/widget/MzActionMenuView;

.field protected mOrientatinPortrait:Z

.field protected mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

.field protected final mPopupContext:Landroid/content/Context;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MzAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance v1, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/MzAbsActionBarView;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    .line 69
    iput v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mInActionMode:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mIsOverlay:Z

    .line 75
    iput v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMaxTitleWidth:I

    .line 78
    iput-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mEnableBackButton:Z

    .line 80
    iput-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCompulsorySplit:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomBackButton:Z

    .line 101
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->initView()V

    .line 113
    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MzAbsActionBarView;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzAbsActionBarView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->onAnimationStartInner(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MzAbsActionBarView;Landroid/animation/Animator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzAbsActionBarView;
    .param p1, "x1"    # Landroid/animation/Animator;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzAbsActionBarView;->onAnimationEndInner(Landroid/animation/Animator;I)V

    return-void
.end method

.method private animateToVisibilityForMeizu(I)V
    .locals 11
    .param p1, "visibility"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 567
    if-nez p1, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MzAbsActionBarView;->setAlpha(F)V

    .line 570
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3, v7}, Landroid/widget/MzActionMenuView;->setAlpha(F)V

    .line 574
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_2

    .line 575
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_1

    .line 576
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 577
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 578
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 579
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 622
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v10, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 583
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 584
    sget-object v3, Lcom/android/internal/widget/MzAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 585
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_3

    .line 586
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 587
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 588
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 589
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 591
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 593
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 598
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_5

    .line 599
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_1

    .line 600
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 601
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 602
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 606
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 607
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 608
    sget-object v3, Lcom/android/internal/widget/MzAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_6

    .line 610
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 611
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 612
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 613
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 614
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 615
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 617
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 524
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    .line 525
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "mz_smartbar_auto_hide"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCompulsorySplit:Z

    .line 526
    return-void

    :cond_0
    move v1, v3

    .line 524
    goto :goto_0

    :cond_1
    move v2, v3

    .line 525
    goto :goto_1
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 316
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method

.method private onAnimationEndInner(Landroid/animation/Animator;I)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "finalVisibility"    # I

    .prologue
    .line 402
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, p2}, Landroid/widget/MzActionMenuView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    invoke-interface {v0, p2}, Landroid/app/ActionBar$VisibilityAnimationListener;->onAnimationEnd(I)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/MzAbsActionBarView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, p2}, Landroid/widget/MzActionMenuView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    invoke-interface {v0, p2}, Landroid/app/ActionBar$VisibilityAnimationListener;->onAnimationEnd(I)V

    goto :goto_0
.end method

.method private onAnimationStartInner(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 384
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onConfigurationChangedForMeizu(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 556
    iget v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    if-lez v0, :cond_0

    .line 557
    iget v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->setContentHeight(I)V

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->updateBackButton()V

    .line 560
    return-void
.end method

.method private setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isSystem"    # Z

    .prologue
    .line 672
    if-eqz p1, :cond_2

    .line 673
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 674
    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomBackButton:Z

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/MzActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    :cond_2
    return-void
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 533
    const/4 v0, 0x1

    .line 534
    .local v0, "portrait":Z
    if-eqz p1, :cond_0

    if-eqz p1, :cond_4

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v4, :cond_4

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 537
    .local v1, "resConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_1

    .line 538
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_3

    move v0, v2

    .line 543
    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    if-eq v2, v0, :cond_2

    .line 544
    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 548
    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    .line 549
    return-void

    .restart local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_3
    move v0, v3

    .line 538
    goto :goto_0

    .line 541
    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_4
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_5

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->animateToVisibilityForMeizu(I)V

    .line 195
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->dismissPopupMenus()Z

    .line 302
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompulsorySplit()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCompulsorySplit:Z

    return v0
.end method

.method public isInActionMode()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mInActionMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlay()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mIsOverlay:Z

    return v0
.end method

.method public isSplitWhenNarrow()Z
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitWhenNarrow:Z

    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 306
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 310
    sub-int/2addr p2, p4

    .line 312
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAfterIdentifyBackground(ZII)V
    .locals 3
    .param p1, "isSplit"    # Z
    .param p2, "backgroundColor"    # I
    .param p3, "splitBackgroundColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 663
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomBackButton:Z

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    if-ne p2, v2, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/MzAbsActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 666
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/MzAbsActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->setContentHeight(I)V

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    iget-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "split_action_bar_is_narrow"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->setSplitToolbar(Z)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/widget/MzActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->onConfigurationChangedForMeizu(Landroid/content/res/Configuration;)V

    .line 146
    return-void

    .line 136
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->setSplitToolbar(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 455
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->updateBackButton()V

    .line 457
    return-void
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuView;->onSmartBarConfigurationChanged()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->onSmartBarConfigurationChanged()V

    .line 520
    :cond_1
    return-void
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 321
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 322
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 324
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 325
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 330
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 327
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/android/internal/widget/MzAbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzAbsActionBarView$1;-><init>(Lcom/android/internal/widget/MzAbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionModeHeaderHidden:Z

    .line 427
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 498
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContentHeight:I

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->requestLayout()V

    .line 167
    return-void
.end method

.method public setEnableBackButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mEnableBackButton:Z

    if-eq v0, p1, :cond_0

    .line 653
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mEnableBackButton:Z

    .line 655
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 489
    iput p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->setContentHeight(I)V

    .line 491
    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .param p1, "inActionMode"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mInActionMode:Z

    .line 443
    return-void
.end method

.method public setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 504
    if-eqz p1, :cond_0

    .line 505
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 506
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/MzActionMenuPresenter;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    :cond_0
    return-void
.end method

.method public setOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mIsOverlay:Z

    .line 447
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    .line 154
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 175
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitWhenNarrow:Z

    .line 162
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 250
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$VisibilityAnimationListener;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    .line 435
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 460
    sget-object v1, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meizu/widget/KeyBackButton;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v1, :cond_4

    .line 470
    new-instance v1, Lcom/meizu/widget/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 471
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_action_bar_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/meizu/widget/KeyBackButton;->setPadding(IIII)V

    .line 473
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/KeyBackButton;->setMinimumWidth(I)V

    .line 480
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->addView(Landroid/view/View;)V

    .line 481
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/KeyBackButton;->setVisibility(I)V

    goto :goto_0

    .line 475
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1}, Lcom/meizu/widget/KeyBackButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 476
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 477
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
