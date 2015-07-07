.class public Landroid/animation/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mLastMatch:Landroid/animation/StateListAnimator$Tuple;

.field private mRunningAnimator:Landroid/animation/Animator;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 51
    iput-object v1, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 53
    iput-object v1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 57
    new-instance v0, Landroid/animation/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$1;-><init>(Landroid/animation/StateListAnimator;)V

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Landroid/animation/StateListAnimator;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$002(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Landroid/animation/StateListAnimator;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 47
    iput-object p1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 164
    :cond_0
    return-void
.end method

.method private clearTarget()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 119
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator$Tuple;

    iget-object v2, v2, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iput-object v3, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 123
    iput-object v3, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 124
    iput-object v3, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 125
    return-void
.end method

.method private start(Landroid/animation/StateListAnimator$Tuple;)V
    .locals 2
    .param p1, "match"    # Landroid/animation/StateListAnimator$Tuple;

    .prologue
    .line 154
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 156
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 157
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/Animator;)V
    .locals 3
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 75
    new-instance v0, Landroid/animation/StateListAnimator$Tuple;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator$1;)V

    .line 76
    .local v0, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v1, v0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public getRunningAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getTuples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 182
    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 5
    .param p1, "state"    # [I

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "match":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    .line 136
    .local v3, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    move-object v2, v3

    .line 141
    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_0
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    if-ne v2, v4, :cond_3

    .line 151
    :cond_1
    :goto_1
    return-void

    .line 134
    .restart local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_3
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    if-eqz v4, :cond_4

    .line 145
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->cancel()V

    .line 147
    :cond_4
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 148
    if-eqz v2, :cond_1

    .line 149
    invoke-direct {p0, v2}, Landroid/animation/StateListAnimator;->start(Landroid/animation/StateListAnimator$Tuple;)V

    goto :goto_1
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "current":Landroid/view/View;
    if-ne v0, p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->clearTarget()V

    .line 110
    :cond_2
    if-eqz p1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
