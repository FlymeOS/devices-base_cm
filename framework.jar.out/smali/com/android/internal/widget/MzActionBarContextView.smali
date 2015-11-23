.class public Lcom/android/internal/widget/MzActionBarContextView;
.super Lcom/android/internal/widget/MzAbsActionBarView;
.source "MzActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MzActionBarContextView"


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const v0, #android:attr@actionModeStyle#t

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MzActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MzActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    sget-object v1, Landroid/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleStyleRes:I

    .line 99
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitleStyleRes:I

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mContentHeight:I

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 108
    const/4 v1, 0x5

    const v2, #android:layout@action_mode_close_item#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCloseItemLayout:I

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 335
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 337
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 339
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 211
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 213
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, #android:layout@action_bar_title_item#t

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MzActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 215
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, #android:id@action_bar_title#t

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 216
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, #android:id@action_bar_subtitle#t

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 217
    iget v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 220
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 225
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 229
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 230
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 233
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MzActionBarContextView;->addView(Landroid/view/View;)V

    .line 237
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContextView;->setTitleUpVisibility()V

    .line 239
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 228
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 229
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 230
    goto :goto_2
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 481
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 483
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 484
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 485
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 489
    .local v7, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 491
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v8, :cond_0

    .line 492
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v4

    .line 493
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 494
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ltz v5, :cond_0

    .line 495
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8, v5}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 496
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 497
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 498
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 499
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 494
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    return-object v7

    .line 497
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 508
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    new-array v10, v14, [F

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 510
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 511
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 512
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 514
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 515
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 517
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v7, :cond_0

    .line 518
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v7}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v4

    .line 519
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 520
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gez v5, :cond_0

    .line 521
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v7, v5}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 522
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 523
    const-string/jumbo v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 524
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 525
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 520
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_0
    return-object v6
.end method

.method private setTitleUpVisibility()V
    .locals 3

    .prologue
    .line 661
    sget-object v1, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionModeHeaderHidden:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, #android:id@up#t

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 664
    .local v0, "titleUpView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 665
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 668
    .end local v0    # "titleUpView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 318
    iget v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->killMode()V

    goto :goto_0

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContextView;->finishAnimation()V

    .line 328
    iput v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimationMode:I

    .line 329
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 380
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 385
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    if-nez v5, :cond_3

    .line 243
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 244
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCloseItemLayout:I

    invoke-virtual {v1, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    .line 245
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/MzActionBarContextView;->addView(Landroid/view/View;)V

    .line 250
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    const v6, #android:id@action_mode_close_button#t

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "closeButton":Landroid/view/View;
    new-instance v5, Lcom/android/internal/widget/MzActionBarContextView$1;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/widget/MzActionBarContextView$1;-><init>(Lcom/android/internal/widget/MzActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuBuilder;

    .line 258
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v5, :cond_1

    .line 259
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5}, Landroid/widget/MzActionMenuPresenter;->dismissPopupMenus()Z

    .line 261
    :cond_1
    new-instance v5, Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/MzActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    .line 262
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, v8}, Landroid/widget/MzActionMenuPresenter;->setReserveOverflow(Z)V

    .line 266
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V

    .line 267
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContextView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContextView;->mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-boolean v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionModeHeaderHidden:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 270
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 272
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_2

    .line 273
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 274
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 280
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitActionBar:Z

    if-nez v5, :cond_4

    .line 281
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 282
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, p0}, Landroid/widget/MzActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Landroid/widget/MzActionMenuView;

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    .line 283
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/widget/MzActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->updateBackButton()V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->updateSplitBackButtonEnable()V

    .line 314
    iput-boolean v8, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimateInOnLayout:Z

    .line 315
    return-void

    .line 246
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/MzActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 287
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6, v8}, Landroid/widget/MzActionMenuPresenter;->setWidthLimit(IZ)V

    .line 290
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    .line 292
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 297
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    .line 299
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 300
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, p0}, Landroid/widget/MzActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v5

    check-cast v5, Landroid/widget/MzActionMenuView;

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    .line 301
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v5, v7, v7}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonEnable(ZZ)V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContextView;->finishAnimation()V

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->removeAllViews()V

    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    .line 348
    iput-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimateInOnLayout:Z

    .line 350
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 601
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 593
    iget v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->killMode()V

    .line 596
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimationMode:I

    .line 597
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 605
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 589
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 637
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 638
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionModeHeaderHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mInActionMode:Z

    if-eqz v0, :cond_0

    .line 639
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitActionBar:Z

    if-eqz v0, :cond_1

    .line 640
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContextView;->setVisibility(I)V

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContextView;->setAlpha(F)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContextView;->setVisibility(I)V

    .line 644
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->onDetachedFromWindow()V

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideSubMenus()Z

    .line 122
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 616
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 617
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->isLayoutRtl()Z

    move-result v7

    .line 536
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_5

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 537
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 538
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 544
    .local v4, "contentHeight":I
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionModeHeaderHidden:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0}, Lcom/meizu/widget/KeyBackButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v2, v0

    .line 547
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MzActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 550
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionModeHeaderHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 553
    .local v8, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v7, :cond_6

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 554
    .local v9, "startMargin":I
    :goto_1
    if-eqz v7, :cond_7

    iget v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 555
    .local v6, "endMargin":I
    :goto_2
    invoke-static {v2, v9, v7}, Lcom/android/internal/widget/MzActionBarContextView;->next(IIZ)I

    move-result v2

    .line 556
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MzActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 557
    invoke-static {v2, v6, v7}, Lcom/android/internal/widget/MzActionBarContextView;->next(IIZ)I

    move-result v2

    .line 559
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_1

    .line 560
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimationMode:I

    .line 561
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mAnimateInOnLayout:Z

    .line 568
    .end local v6    # "endMargin":I
    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "startMargin":I
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mOrientatinPortrait:Z

    if-eqz v0, :cond_8

    const/4 v10, 0x0

    .line 570
    .local v10, "startOffset":I
    :goto_3
    invoke-static {v2, v10, v7}, Lcom/android/internal/widget/MzActionBarContextView;->next(IIZ)I

    move-result v2

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MzActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 577
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MzActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 580
    :cond_3
    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 582
    :goto_4
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_4

    .line 583
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-nez v7, :cond_a

    const/4 v5, 0x1

    :goto_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MzActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 585
    :cond_4
    return-void

    .line 536
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    .end local v10    # "startOffset":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 553
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 554
    .restart local v9    # "startMargin":I
    :cond_7
    iget v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 568
    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "startMargin":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_action_bar_title_margin_left_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_3

    .line 580
    .restart local v10    # "startOffset":I
    :cond_9
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_4

    .line 583
    :cond_a
    const/4 v5, 0x0

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 390
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 391
    .local v23, "widthMode":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 392
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 396
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 397
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 398
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 402
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 404
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzActionBarContextView;->mContentHeight:I

    .line 407
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 408
    .local v22, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 409
    .local v3, "availableWidth":I
    sub-int v11, v15, v22

    .line 410
    .local v11, "height":I
    const/high16 v24, -0x80000000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 416
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mActionModeHeaderHidden:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/MzActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/widget/KeyBackButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 420
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 423
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mActionModeHeaderHidden:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/MzActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 427
    .restart local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 430
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_4

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/MzActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 435
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    .line 436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 437
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 438
    .local v20, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 440
    .local v19, "titleWidth":I
    move/from16 v0, v19

    if-gt v0, v3, :cond_a

    const/16 v18, 0x1

    .line 441
    .local v18, "titleFits":Z
    :goto_1
    if-eqz v18, :cond_5

    .line 442
    sub-int v3, v3, v19

    .line 444
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_b

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 452
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    const/high16 v10, 0x40000000    # 2.0f

    .line 454
    .local v10, "customWidthMode":I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_e

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 456
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/high16 v8, 0x40000000    # 2.0f

    .line 458
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_10

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 460
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 464
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_12

    .line 465
    const/16 v16, 0x0

    .line 466
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContextView;->getChildCount()I

    move-result v6

    .line 467
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_11

    .line 468
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/MzActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 469
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 470
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_8

    .line 471
    move/from16 v16, v17

    .line 467
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 404
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "verticalPadding":I
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 440
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v15    # "maxHeight":I
    .restart local v19    # "titleWidth":I
    .restart local v20    # "titleWidthSpec":I
    .restart local v22    # "verticalPadding":I
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 444
    .restart local v18    # "titleFits":Z
    :cond_b
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 446
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/MzActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 452
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    const/high16 v10, -0x80000000

    goto/16 :goto_4

    .restart local v10    # "customWidthMode":I
    :cond_e
    move v9, v3

    .line 454
    goto :goto_5

    .line 456
    .restart local v9    # "customWidth":I
    :cond_f
    const/high16 v8, -0x80000000

    goto :goto_6

    .restart local v8    # "customHeightMode":I
    :cond_10
    move v7, v11

    .line 458
    goto :goto_7

    .line 474
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/MzActionBarContextView;->setMeasuredDimension(II)V

    .line 478
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_9
    return-void

    .line 476
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/internal/widget/MzActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mContentHeight:I

    .line 175
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContextView;->removeView(Landroid/view/View;)V

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mCustomView:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarContextView;->removeView(Landroid/view/View;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 186
    :cond_1
    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->addView(Landroid/view/View;)V

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->requestLayout()V

    .line 190
    return-void
.end method

.method public setEnableBackButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mEnableBackButton:Z

    if-eq v0, p1, :cond_0

    .line 672
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mEnableBackButton:Z

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->updateSplitBackButtonEnable()V

    .line 674
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->reflashMenu()V

    .line 678
    :cond_0
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 126
    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 127
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 129
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 131
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 132
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/MzActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/MzActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    .line 133
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/MzActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v2}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/MzActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->setSplitToolbar(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->updateSplitBackButtonEnable()V

    .line 171
    :cond_2
    return-void

    .line 139
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/MzActionMenuPresenter;->setWidthLimit(IZ)V

    .line 142
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    .line 144
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    .line 151
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/MzActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/MzActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    .line 152
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/MzActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v2}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 154
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mInActionMode:Z

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContextView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 199
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContextView;->initTitle()V

    .line 200
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 194
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContextView;->initTitle()V

    .line 195
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContextView;->requestLayout()V

    .line 629
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mTitleOptional:Z

    .line 630
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSplitBackButtonEnable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 650
    sget-object v0, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mSplitActionBar:Z

    if-nez v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, v2, v2}, Landroid/widget/MzActionMenuPresenter;->setBackButtonEnable(ZZ)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContextView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContextView;->mEnableBackButton:Z

    invoke-virtual {v0, v1, v2}, Landroid/widget/MzActionMenuPresenter;->setBackButtonEnable(ZZ)V

    goto :goto_0
.end method
