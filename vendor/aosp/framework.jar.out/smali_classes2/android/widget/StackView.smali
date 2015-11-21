.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 164
    const v0, 0x101043e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    const-string v1, "StackView"

    iput-object v1, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 130
    iput v4, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 131
    iput v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 137
    iput-boolean v4, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 144
    iput-boolean v4, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 146
    iput-boolean v4, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 147
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 179
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mResOutColor:I

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mClickColor:I

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 189
    return-void
.end method

.method static synthetic access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/StackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 54
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/StackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .prologue
    .line 54
    iget v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .locals 12
    .param p1, "deltaY"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 659
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    iget v11, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v10, v11, :cond_0

    iget v10, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v10, :cond_0

    .line 660
    const/4 v10, 0x0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_1

    move v5, v7

    .line 661
    .local v5, "swipeGestureType":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 662
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 664
    iget-object v10, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v10, :cond_2

    .line 704
    .end local v5    # "swipeGestureType":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v8

    .line 660
    goto :goto_0

    .line 665
    .restart local v5    # "swipeGestureType":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v1

    .line 668
    .local v1, "adapterCount":I
    iget v10, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v10, :cond_8

    .line 669
    if-ne v5, v8, :cond_7

    move v0, v9

    .line 674
    .local v0, "activeIndex":I
    :goto_2
    iget-boolean v10, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v10, :cond_a

    if-ne v1, v7, :cond_a

    iget v10, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v10, :cond_3

    if-eq v5, v7, :cond_4

    :cond_3
    iget v10, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v10, v7, :cond_a

    if-ne v5, v8, :cond_a

    :cond_4
    move v3, v7

    .line 677
    .local v3, "endOfStack":Z
    :goto_3
    iget-boolean v10, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v10, :cond_b

    if-ne v1, v7, :cond_b

    iget v10, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v10, v7, :cond_5

    if-eq v5, v7, :cond_6

    :cond_5
    iget v10, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v10, :cond_b

    if-ne v5, v8, :cond_b

    :cond_6
    move v2, v7

    .line 682
    .local v2, "beginningOfStack":Z
    :goto_4
    iget-boolean v8, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v8, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    .line 683
    const/4 v4, 0x0

    .line 693
    .local v4, "stackMode":I
    :goto_5
    if-nez v4, :cond_11

    :goto_6
    iput-boolean v7, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 695
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 696
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 698
    invoke-direct {p0, v6, v4}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 701
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 702
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    goto :goto_1

    .end local v0    # "activeIndex":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    move v0, v7

    .line 669
    goto :goto_2

    .line 671
    :cond_8
    if-ne v5, v8, :cond_9

    move v0, v7

    .restart local v0    # "activeIndex":I
    :goto_7
    goto :goto_2

    .end local v0    # "activeIndex":I
    :cond_9
    move v0, v9

    goto :goto_7

    .restart local v0    # "activeIndex":I
    :cond_a
    move v3, v9

    .line 674
    goto :goto_3

    .restart local v3    # "endOfStack":Z
    :cond_b
    move v2, v9

    .line 677
    goto :goto_4

    .line 684
    .restart local v2    # "beginningOfStack":Z
    :cond_c
    iget v8, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    const/4 v10, -0x1

    if-eq v8, v10, :cond_d

    if-eqz v2, :cond_e

    .line 685
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 686
    const/4 v4, 0x1

    .restart local v4    # "stackMode":I
    goto :goto_5

    .line 687
    .end local v4    # "stackMode":I
    :cond_e
    iget v8, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    add-int/lit8 v10, v1, -0x1

    if-eq v8, v10, :cond_f

    if-eqz v3, :cond_10

    .line 688
    :cond_f
    const/4 v4, 0x2

    .restart local v4    # "stackMode":I
    goto :goto_5

    .line 690
    .end local v4    # "stackMode":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "stackMode":I
    goto :goto_5

    :cond_11
    move v7, v9

    .line 693
    goto :goto_6
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 812
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 813
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 814
    .local v4, "newY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v9, v4, v9

    float-to-int v1, v9

    .line 815
    .local v1, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 817
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 818
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 819
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 822
    :cond_0
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 823
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 824
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 827
    :cond_1
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    if-le v1, v9, :cond_4

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_4

    .line 831
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 834
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_3

    .line 835
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 839
    :goto_0
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    .line 892
    :cond_2
    :goto_1
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 893
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 894
    return-void

    .line 837
    :cond_3
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0

    .line 840
    :cond_4
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v9, v9

    if-ge v1, v9, :cond_6

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_6

    .line 844
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 847
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_5

    .line 848
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 853
    :goto_2
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_1

    .line 850
    :cond_5
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_2

    .line 854
    :cond_6
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 857
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    .line 858
    .local v3, "finalYProgress":F
    :goto_3
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_9

    .line 859
    :cond_7
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 864
    .local v2, "duration":I
    :goto_4
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 865
    .local v0, "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 866
    .local v8, "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 867
    .local v7, "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 869
    .local v5, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 870
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 871
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 857
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 861
    .restart local v3    # "finalYProgress":F
    :cond_9
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_4

    .line 872
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    :cond_a
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 874
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    const/4 v3, 0x0

    .line 876
    .restart local v3    # "finalYProgress":F
    :goto_5
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_d

    .line 877
    :cond_b
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 882
    .restart local v2    # "duration":I
    :goto_6
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 883
    .restart local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 885
    .restart local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 886
    .restart local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 888
    .restart local v5    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 889
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 874
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    .line 879
    .restart local v3    # "finalYProgress":F
    :cond_d
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_6
.end method

.method private initStackView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 192
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v6}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 193
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 194
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    .line 197
    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 199
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 200
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 203
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 204
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 206
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 210
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_0

    .line 211
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 213
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 214
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 219
    iput v6, p0, Landroid/widget/StackView;->mStackMode:I

    .line 222
    iput v5, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 226
    iget-object v2, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 227
    .local v1, "density":F
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/StackView;->mFramePadding:I

    .line 228
    return-void
.end method

.method private measureChildren()V
    .locals 13

    .prologue
    .line 1134
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v5

    .line 1136
    .local v5, "count":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v10

    .line 1137
    .local v10, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v9

    .line 1139
    .local v9, "measuredHeight":I
    int-to-float v11, v10

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int v4, v11, v12

    .line 1141
    .local v4, "childWidth":I
    int-to-float v11, v9

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 1144
    .local v1, "childHeight":I
    const/4 v8, 0x0

    .line 1145
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    .line 1147
    .local v7, "maxHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1148
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    .local v0, "child":Landroid/view/View;
    const/high16 v11, -0x80000000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1152
    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    .line 1153
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1154
    .local v3, "childMeasuredWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1155
    .local v2, "childMeasuredHeight":I
    if-le v3, v8, :cond_0

    .line 1156
    move v8, v3

    .line 1158
    :cond_0
    if-le v2, v7, :cond_1

    .line 1159
    move v7, v2

    .line 1147
    .end local v2    # "childMeasuredHeight":I
    .end local v3    # "childMeasuredWidth":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1164
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const v11, 0x3dcccccd    # 0.1f

    int-to-float v12, v10

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1165
    const v11, 0x3dcccccd    # 0.1f

    int-to-float v12, v9

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1168
    if-lez v8, :cond_3

    if-lez v5, :cond_3

    if-ge v8, v4, :cond_3

    .line 1169
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1172
    :cond_3
    if-lez v7, :cond_4

    if-lez v5, :cond_4

    if-ge v7, v1, :cond_4

    .line 1173
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1175
    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 3

    .prologue
    .line 564
    iget-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v1, :cond_0

    .line 565
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 566
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 569
    :cond_0
    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 570
    .local v0, "newSlideAmount":I
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    .line 571
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    .line 572
    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 575
    :cond_1
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 578
    :cond_2
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 579
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 580
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 582
    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 769
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 770
    .local v5, "pointerId":I
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v5, v9, :cond_0

    .line 772
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v1, 0x0

    .line 774
    .local v1, "activeViewIndex":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 775
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_2

    .line 809
    .end local v1    # "activeViewIndex":I
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 772
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 781
    .restart local v1    # "activeViewIndex":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 782
    if-eq v2, v0, :cond_3

    .line 784
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 785
    .local v7, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 787
    .local v8, "y":F
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 788
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 789
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 790
    .local v3, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 793
    .local v4, "oldY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialY:F

    .line 794
    iget v9, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialX:F

    .line 796
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 797
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 798
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 781
    .end local v3    # "oldX":F
    .end local v4    # "oldY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 807
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private pacedScroll(Z)V
    .locals 6
    .param p1, "up"    # Z

    .prologue
    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long v0, v2, v4

    .line 606
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 607
    if-eqz p1, :cond_1

    .line 608
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 612
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    .line 614
    :cond_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 374
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v2, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 378
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 379
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 380
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 382
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :cond_0
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 322
    .local v3, "maxPerspectiveShiftY":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 324
    .local v2, "maxPerspectiveShiftX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mStackMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v17, v0

    sub-int v17, v17, p1

    add-int/lit8 p1, v17, -0x1

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 332
    :cond_0
    :goto_0
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 334
    .local v7, "r":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v7

    mul-float v18, v18, v19

    sub-float v8, v17, v18

    .line 336
    .local v8, "scale":F
    mul-float v6, v7, v3

    .line 337
    .local v6, "perspectiveTranslationY":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v8, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666    # 0.9f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    mul-float v12, v17, v18

    .line 339
    .local v12, "scaleShiftCorrectionY":F
    add-float v14, v6, v12

    .line 341
    .local v14, "transY":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v7

    mul-float v5, v17, v2

    .line 342
    .local v5, "perspectiveTranslationX":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666    # 0.9f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    mul-float v11, v17, v18

    .line 344
    .local v11, "scaleShiftCorrectionX":F
    add-float v13, v5, v11

    .line 348
    .local v13, "transX":F
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, p2

    .line 349
    check-cast v17, Landroid/widget/StackView$StackFrame;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 352
    :cond_1
    if-eqz p3, :cond_4

    .line 353
    const-string v17, "translationX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v13, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 354
    .local v15, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v14, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 355
    .local v16, "translationY":Landroid/animation/PropertyValuesHolder;
    const-string v17, "scaleX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 356
    .local v9, "scalePropX":Landroid/animation/PropertyValuesHolder;
    const-string v17, "scaleY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 358
    .local v10, "scalePropY":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    const/16 v18, 0x2

    aput-object v16, v17, v18

    const/16 v18, 0x3

    aput-object v15, v17, v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 360
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 361
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 362
    check-cast p2, Landroid/widget/StackView$StackFrame;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 364
    :cond_2
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 371
    .end local v4    # "oa":Landroid/animation/ObjectAnimator;
    .end local v9    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "translationY":Landroid/animation/PropertyValuesHolder;
    :goto_1
    return-void

    .line 328
    .end local v5    # "perspectiveTranslationX":F
    .end local v6    # "perspectiveTranslationY":F
    .end local v7    # "r":F
    .end local v8    # "scale":F
    .end local v11    # "scaleShiftCorrectionX":F
    .end local v12    # "scaleShiftCorrectionY":F
    .end local v13    # "transX":F
    .end local v14    # "transY":F
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 329
    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 366
    .restart local v5    # "perspectiveTranslationX":F
    .restart local v6    # "perspectiveTranslationY":F
    .restart local v7    # "r":F
    .restart local v8    # "scale":F
    .restart local v11    # "scaleShiftCorrectionX":F
    .restart local v12    # "scaleShiftCorrectionY":F
    .restart local v13    # "transX":F
    .restart local v14    # "transY":F
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 367
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 368
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 369
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1
.end method

.method private updateChildTransforms()V
    .locals 3

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 473
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 474
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 475
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 8

    .prologue
    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long v2, v4, v6

    .line 1123
    .local v2, "timeSinceLastInteraction":J
    iget-object v1, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v0

    .line 1125
    .local v0, "adapterCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-nez v1, :cond_0

    .line 1127
    :cond_2
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v1, :cond_0

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1129
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 530
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1088
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1089
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1090
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1091
    .local v1, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1092
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1093
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1094
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1097
    .end local v1    # "lp":Landroid/widget/StackView$LayoutParams;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 534
    const/4 v3, 0x0

    .line 536
    .local v3, "expandClipRegion":Z
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 537
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    .line 538
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 539
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 541
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_0

    iget v6, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 543
    :cond_1
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 545
    :cond_2
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 546
    .local v2, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 547
    const/4 v3, 0x1

    .line 548
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 538
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childInvalidateRect":Landroid/graphics/Rect;
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    .line 554
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 555
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 556
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 561
    :goto_1
    return-void

    .line 559
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    .line 521
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 522
    .local v0, "fl":Landroid/widget/StackView$StackFrame;
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 523
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 467
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 469
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 600
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 589
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 590
    .local v0, "vscroll":F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    .line 591
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/StackView;->pacedScroll(Z)V

    goto :goto_0

    .line 593
    :cond_1
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 594
    invoke-direct {p0, v1}, Landroid/widget/StackView;->pacedScroll(Z)V

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1231
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1232
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1233
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1237
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1238
    const-class v1, Landroid/widget/StackView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1239
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1240
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1242
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1244
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_1

    .line 1245
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1248
    :cond_1
    return-void

    .line 1239
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 622
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    return v4

    .line 624
    :pswitch_1
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mInitialX:F

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mInitialY:F

    .line 627
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    goto :goto_0

    .line 632
    :pswitch_2
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 633
    .local v3, "pointerIndex":I
    if-ne v3, v6, :cond_2

    .line 635
    const-string v5, "StackView"

    const-string v6, "Error: No data for our primary pointer."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 638
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 639
    .local v2, "newY":F
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v1, v2, v5

    .line 641
    .local v1, "deltaY":F
    invoke-direct {p0, v1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    goto :goto_0

    .line 645
    .end local v1    # "deltaY":F
    .end local v2    # "newY":F
    .end local v3    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 650
    :pswitch_4
    iput v6, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 651
    iput v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1102
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1104
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    .line 1105
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1106
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, "child":Landroid/view/View;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v6, v7

    .line 1109
    .local v3, "childRight":I
    iget v6, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 1110
    .local v1, "childBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 1112
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1105
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1116
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    .line 1117
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1180
    .local v8, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1181
    .local v5, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1182
    .local v7, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1184
    .local v4, "heightSpecMode":I
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v2, 0x1

    .line 1188
    .local v2, "haveChildRefSize":Z
    :goto_0
    const v1, 0x3f8e38e4

    .line 1189
    .local v1, "factorY":F
    if-nez v4, :cond_4

    .line 1190
    if-eqz v2, :cond_3

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int v5, v9, v10

    .line 1208
    :cond_0
    :goto_1
    const v0, 0x3f8e38e4

    .line 1209
    .local v0, "factorX":F
    if-nez v7, :cond_8

    .line 1210
    if-eqz v2, :cond_7

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 1225
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v5}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1226
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    .line 1227
    return-void

    .line 1184
    .end local v0    # "factorX":F
    .end local v1    # "factorY":F
    .end local v2    # "haveChildRefSize":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1190
    .restart local v1    # "factorY":F
    .restart local v2    # "haveChildRefSize":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1193
    :cond_4
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_0

    .line 1194
    if-eqz v2, :cond_6

    .line 1195
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int v3, v9, v10

    .line 1197
    .local v3, "height":I
    if-gt v3, v5, :cond_5

    .line 1198
    move v5, v3

    goto :goto_1

    .line 1200
    :cond_5
    const/high16 v9, 0x1000000

    or-int/2addr v5, v9

    goto :goto_1

    .line 1204
    .end local v3    # "height":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1210
    .restart local v0    # "factorX":F
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1213
    :cond_8
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_1

    .line 1214
    if-eqz v2, :cond_a

    .line 1215
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget v10, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int v6, v9, v10

    .line 1216
    .local v6, "width":I
    if-gt v6, v8, :cond_9

    .line 1217
    move v8, v6

    goto :goto_2

    .line 1219
    :cond_9
    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    goto :goto_2

    .line 1222
    .end local v6    # "width":I
    :cond_a
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 711
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 714
    .local v0, "action":I
    iget v10, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 715
    .local v5, "pointerIndex":I
    if-ne v5, v12, :cond_0

    .line 717
    const-string v9, "StackView"

    const-string v10, "Error: No data for our primary pointer."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    return v8

    .line 721
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 722
    .local v4, "newY":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 723
    .local v3, "newX":F
    iget v10, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v2, v4, v10

    .line 724
    .local v2, "deltaY":F
    iget v10, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v1, v3, v10

    .line 725
    .local v1, "deltaX":F
    iget-object v10, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 726
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 728
    :cond_1
    iget-object v10, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 730
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v8, v9

    .line 764
    goto :goto_0

    .line 732
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 734
    iget v8, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float v7, v1, v8

    .line 735
    .local v7, "rx":F
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 736
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    sub-float v8, v2, v8

    iget v10, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 737
    .local v6, "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v9, :cond_3

    sub-float v6, v11, v6

    .line 738
    :cond_3
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v8, v10}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 739
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 740
    goto :goto_0

    .line 741
    .end local v6    # "r":F
    :cond_4
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v8, v9, :cond_2

    .line 742
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v8, v2

    neg-float v8, v8

    iget v10, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 743
    .restart local v6    # "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v9, :cond_5

    sub-float v6, v11, v6

    .line 744
    :cond_5
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v6}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 745
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 746
    goto :goto_0

    .line 751
    .end local v6    # "r":F
    .end local v7    # "rx":F
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 755
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 759
    :pswitch_4
    iput v12, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 760
    iput v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_1

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1252
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1272
    :goto_0
    return v0

    .line 1255
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1256
    goto :goto_0

    .line 1258
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1272
    goto :goto_0

    .line 1260
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1261
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1264
    goto :goto_0

    .line 1266
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v2

    if-lez v2, :cond_3

    .line 1267
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1270
    goto :goto_0

    .line 1258
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public showNext()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 394
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 396
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 398
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 399
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 400
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 403
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    goto :goto_0
.end method

.method showOnly(IZ)V
    .locals 7
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 426
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 429
    iget v0, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt v0, v4, :cond_1

    .line 430
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/StackView;->modulo(II)I

    move-result v1

    .line 431
    .local v1, "index":I
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 432
    .local v3, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_0

    .line 433
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 434
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 429
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 437
    .end local v1    # "index":I
    .end local v3    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 438
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 440
    :cond_2
    iput-boolean v6, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 441
    iput-boolean v6, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 442
    return-void
.end method

.method public showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 412
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 414
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 415
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 416
    invoke-direct {p0, v0, v2}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 417
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 418
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 421
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    goto :goto_0
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 460
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 462
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 463
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    .line 234
    if-nez p4, :cond_0

    move-object/from16 v13, p3

    .line 235
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 236
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 238
    .local v6, "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 239
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 242
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 243
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 244
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 315
    :cond_1
    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_2

    .line 316
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 318
    :cond_2
    return-void

    .line 246
    :cond_3
    if-nez p1, :cond_5

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_5

    move-object/from16 v13, p3

    .line 248
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 249
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 252
    .local v5, "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 253
    .local v4, "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 255
    if-eqz p4, :cond_4

    .line 256
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 257
    .local v9, "slideInY":Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 258
    .local v8, "slideInX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 260
    .local v7, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 262
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v7}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 263
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 265
    .end local v7    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v8    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "slideInY":Landroid/animation/PropertyValuesHolder;
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 266
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 268
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_5
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    if-nez p2, :cond_7

    move-object/from16 v13, p3

    .line 270
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 273
    .restart local v5    # "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 274
    .restart local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 275
    if-eqz p4, :cond_6

    .line 276
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 277
    .local v12, "slideOutY":Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 278
    .local v11, "slideOutX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 280
    .local v10, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 282
    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13, v10}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 283
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 285
    .end local v10    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v11    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    :cond_6
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 286
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 288
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_7
    if-nez p2, :cond_8

    .line 290
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 291
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 292
    :cond_8
    if-eqz p1, :cond_9

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    :cond_9
    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_a

    .line 293
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 295
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/StackView$LayoutParams;

    .line 297
    .restart local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 298
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto/16 :goto_0

    .line 299
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_a
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    .line 300
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 301
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 302
    :cond_b
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 303
    if-eqz p4, :cond_c

    .line 304
    new-instance v13, Landroid/widget/StackView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 310
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method updateClickFeedback()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 445
    iget-boolean v1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v1, :cond_1

    .line 446
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v3, p0, Landroid/widget/StackView;->mClickColor:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 450
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 451
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 453
    :cond_0
    iput-boolean v4, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 455
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
