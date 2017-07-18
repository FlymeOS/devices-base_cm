.class Landroid/view/ViewPropertyAnimatorRT;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorRT.java"


# static fields
.field private static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimators:[Landroid/view/RenderNodeAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 32
    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/RenderNodeAnimator;

    iput-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    .line 41
    iput-object p1, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    .line 40
    return-void
.end method

.method private canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    return v1

    .line 115
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    return v1

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->hasActions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    return v1

    .line 123
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private cancelAnimators(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mPendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    const/4 v5, 0x0

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 128
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 130
    .local v0, "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v4, v0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    invoke-static {v4}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    move-result v2

    .line 131
    .local v2, "property":I
    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 133
    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aput-object v5, v4, v2

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    .end local v2    # "property":I
    :cond_1
    return-void
.end method

.method private doStartAnimation(Landroid/view/ViewPropertyAnimator;)V
    .locals 14
    .param p1, "parent"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 67
    iget-object v12, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 69
    .local v9, "size":I
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v10

    .line 70
    .local v10, "startDelay":J
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    .line 71
    .local v2, "duration":J
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    .line 72
    .local v6, "interpolator":Landroid/animation/TimeInterpolator;
    if-nez v6, :cond_0

    .line 74
    sget-object v6, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    :cond_0
    invoke-static {v6}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 77
    new-instance v7, Lcom/android/internal/view/animation/FallbackLUTInterpolator;

    invoke-direct {v7, v6, v2, v3}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;-><init>(Landroid/animation/TimeInterpolator;J)V

    .end local v6    # "interpolator":Landroid/animation/TimeInterpolator;
    .local v7, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v6, v7

    .line 79
    .end local v7    # "interpolator":Landroid/animation/TimeInterpolator;
    .restart local v6    # "interpolator":Landroid/animation/TimeInterpolator;
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 80
    iget-object v12, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 81
    .local v4, "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v12, v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    invoke-static {v12}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    move-result v8

    .line 83
    .local v8, "property":I
    iget v12, v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iget v13, v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    add-float v1, v12, v13

    .line 84
    .local v1, "finalValue":F
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, v8, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 85
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 87
    invoke-virtual {v0, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    iget-object v12, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 89
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 91
    iget-object v12, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aput-object v0, v12, v8

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "animator":Landroid/view/RenderNodeAnimator;
    .end local v1    # "finalValue":F
    .end local v4    # "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    .end local v8    # "property":I
    :cond_2
    iget-object v12, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 66
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 61
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    aput-object v2, v1, v0

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public startAnimation(Landroid/view/ViewPropertyAnimator;)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 49
    iget-object v0, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/view/ViewPropertyAnimatorRT;->cancelAnimators(Ljava/util/ArrayList;)V

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->doStartAnimation(Landroid/view/ViewPropertyAnimator;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method
