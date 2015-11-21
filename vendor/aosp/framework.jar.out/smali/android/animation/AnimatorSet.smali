.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$Dependency;,
        Landroid/animation/AnimatorSet$AnimatorSetListener;,
        Landroid/animation/AnimatorSet$DependencyListener;
    }
.end annotation


# instance fields
.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDuration:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReversible:Z

.field private mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 92
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 94
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 103
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 109
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 115
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 125
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 127
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 1145
    return-void
.end method

.method static synthetic access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/animation/AnimatorSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Landroid/animation/AnimatorSet;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Landroid/animation/AnimatorSet;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Landroid/animation/AnimatorSet;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/animation/AnimatorSet;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return p1
.end method

.method static synthetic access$600(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Landroid/animation/AnimatorSet;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/animation/AnimatorSet;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    return p1
.end method

.method private sortNodes()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 884
    iget-boolean v11, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    if-eqz v11, :cond_7

    .line 885
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 886
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v9, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 888
    .local v6, "numNodes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 889
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 890
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 891
    :cond_0
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v10, "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 896
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 897
    .local v7, "numRoots":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    .line 898
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 899
    .local v8, "root":Landroid/animation/AnimatorSet$Node;
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 901
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 902
    .local v5, "numDependents":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 903
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 904
    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 905
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 906
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 897
    .end local v2    # "j":I
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v5    # "numDependents":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 911
    .end local v8    # "root":Landroid/animation/AnimatorSet$Node;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 912
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 913
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 915
    .end local v7    # "numRoots":I
    :cond_6
    iput-boolean v13, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 916
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_b

    .line 917
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 924
    .end local v1    # "i":I
    .end local v6    # "numNodes":I
    .end local v9    # "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .end local v10    # "tmpRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_7
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 925
    .restart local v6    # "numNodes":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_b

    .line 926
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 927
    .restart local v3    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 928
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 929
    .local v4, "numDependencies":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    if-ge v2, v4, :cond_a

    .line 930
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    .line 931
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v11, :cond_8

    .line 932
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 934
    :cond_8
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 935
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 941
    .end local v0    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v2    # "j":I
    .end local v4    # "numDependencies":I
    :cond_a
    iput-boolean v13, v3, Landroid/animation/AnimatorSet$Node;->done:Z

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 944
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_b
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 951
    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    if-nez v3, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v2

    .line 955
    :cond_1
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 956
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->canReverse()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    goto :goto_0

    .line 960
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 320
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 321
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 324
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 325
    .restart local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 326
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 329
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 338
    :cond_1
    if-eqz v3, :cond_3

    .line 339
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 340
    .restart local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 333
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_2
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 334
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 335
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    goto :goto_2

    .line 343
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 345
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 17

    .prologue
    .line 635
    invoke-super/range {p0 .. p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 644
    .local v1, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 645
    .local v14, "nodeCount":I
    const/4 v15, 0x1

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 646
    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 647
    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 648
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 649
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 650
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 651
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 652
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/animation/AnimatorSet;->mReversible:Z

    iput-boolean v15, v1, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 653
    const/4 v15, 0x0

    iput-object v15, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 659
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_0
    if-ge v11, v14, :cond_2

    .line 660
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$Node;

    .line 661
    .local v12, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v12}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v13

    .line 662
    .local v13, "nodeClone":Landroid/animation/AnimatorSet$Node;
    # setter for: Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;
    invoke-static {v12, v13}, Landroid/animation/AnimatorSet$Node;->access$202(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    .line 663
    iget-object v15, v1, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v15, v1, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v0, v13, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 667
    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 668
    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 669
    const/4 v15, 0x0

    iput-object v15, v13, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 673
    iget-object v15, v13, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    .line 674
    .local v4, "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v4, :cond_1

    .line 675
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v8, v15, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_1

    .line 676
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    .line 677
    .local v10, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v15, v10, Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v15, :cond_0

    .line 678
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 675
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 659
    .end local v8    # "i":I
    .end local v10    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 685
    .end local v4    # "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v12    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v13    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_6

    .line 686
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$Node;

    .line 687
    .restart local v12    # "node":Landroid/animation/AnimatorSet$Node;
    # getter for: Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;
    invoke-static {v12}, Landroid/animation/AnimatorSet$Node;->access$200(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v2

    .line 688
    .local v2, "clone":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v15, :cond_3

    .line 689
    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 690
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 691
    .local v6, "depSize":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v6, :cond_3

    .line 692
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Dependency;

    .line 693
    .local v7, "dependency":Landroid/animation/AnimatorSet$Dependency;
    new-instance v3, Landroid/animation/AnimatorSet$Dependency;

    iget-object v15, v7, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    # getter for: Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;
    invoke-static {v15}, Landroid/animation/AnimatorSet$Node;->access$200(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v15

    iget v0, v7, Landroid/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 695
    .local v3, "cloneDependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 698
    .end local v3    # "cloneDependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v6    # "depSize":I
    .end local v7    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    .end local v8    # "i":I
    :cond_3
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v15, :cond_4

    .line 699
    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 700
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 701
    .local v5, "dep":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    # getter for: Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;
    invoke-static {v5}, Landroid/animation/AnimatorSet$Node;->access$200(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 704
    .end local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    .line 705
    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 706
    iget-object v15, v12, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 707
    .restart local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    iget-object v15, v2, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    # getter for: Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;
    invoke-static {v5}, Landroid/animation/AnimatorSet$Node;->access$200(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 685
    .end local v5    # "dep":Landroid/animation/AnimatorSet$Node;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 711
    .end local v2    # "clone":Landroid/animation/AnimatorSet$Node;
    .end local v12    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_6
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v14, :cond_7

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/animation/AnimatorSet$Node;

    const/16 v16, 0x0

    # setter for: Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;
    invoke-static/range {v15 .. v16}, Landroid/animation/AnimatorSet$Node;->access$202(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    .line 711
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 714
    :cond_7
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 6

    .prologue
    .line 355
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 356
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 357
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 359
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    .line 360
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 361
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-nez v4, :cond_0

    .line 362
    new-instance v4, Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v4, p0, p0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v4, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 364
    :cond_0
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 367
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 368
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 370
    :cond_2
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 371
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 372
    .restart local v2    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 375
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_3
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 376
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 378
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 379
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2

    .line 382
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 384
    :cond_5
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 4

    .prologue
    .line 248
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    .line 249
    .local v0, "conf":I
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 250
    .local v2, "nodeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 251
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 219
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 441
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    .line 393
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 394
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const/4 v2, 0x1

    .line 398
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 478
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 479
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 480
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 482
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->pause()V

    .line 489
    :cond_0
    return-void

    .line 484
    :cond_1
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 485
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    goto :goto_0
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 306
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 196
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 198
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 206
    :cond_0
    return-void

    .line 200
    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 202
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 4
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 177
    array-length v1, p1

    if-ne v1, v3, :cond_1

    .line 178
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 186
    :cond_0
    return-void

    .line 180
    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 182
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 156
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 159
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 166
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 142
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 143
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 144
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 493
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 494
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 495
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-nez v3, :cond_0

    .line 496
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 497
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->resume()V

    .line 504
    :cond_0
    return-void

    .line 499
    :cond_1
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 500
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->resume()V

    goto :goto_0
.end method

.method public reverse()V
    .locals 3

    .prologue
    .line 968
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 970
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->reverse()V

    goto :goto_0

    .line 973
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 454
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 459
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 267
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 268
    return-void
.end method

.method public setStartDelay(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    .line 425
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 428
    :cond_0
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 429
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 233
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 234
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    .line 235
    .local v0, "animation":Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 236
    check-cast v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    .restart local v0    # "animation":Landroid/animation/Animator;
    :cond_1
    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 238
    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 3

    .prologue
    .line 471
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 472
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupEndValues()V

    goto :goto_0

    .line 474
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 3

    .prologue
    .line 464
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 465
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupStartValues()V

    goto :goto_0

    .line 467
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 22

    .prologue
    .line 516
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 517
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 518
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 521
    .local v10, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    goto :goto_0

    .line 524
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-ltz v17, :cond_1

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 529
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_1

    .line 532
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 534
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 539
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 542
    .local v14, "numSortedNodes":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v14, :cond_6

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 545
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v15

    .line 546
    .local v15, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 547
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    .local v4, "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Animator$AnimatorListener;

    .line 551
    .local v9, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v0, v9, Landroid/animation/AnimatorSet$DependencyListener;

    move/from16 v17, v0

    if-nez v17, :cond_4

    instance-of v0, v9, Landroid/animation/AnimatorSet$AnimatorSetListener;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 553
    :cond_4
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 542
    .end local v4    # "clonedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v9    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 563
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v15    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v11, "nodesToStart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v14, :cond_b

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 566
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 567
    new-instance v17, Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 569
    :cond_7
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_9

    .line 570
    :cond_8
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :goto_6
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 572
    :cond_9
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 573
    .local v12, "numDependencies":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_7
    if-ge v8, v12, :cond_a

    .line 574
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Dependency;

    .line 575
    .local v5, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v0, v5, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    new-instance v18, Landroid/animation/AnimatorSet$DependencyListener;

    iget v0, v5, Landroid/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Landroid/animation/AnimatorSet$DependencyListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 573
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 578
    .end local v5    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    :cond_a
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_6

    .line 583
    .end local v8    # "j":I
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v12    # "numDependencies":I
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-gtz v17, :cond_c

    .line 584
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 585
    .restart local v10    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/Animator;->start()V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 589
    .end local v10    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    invoke-static/range {v17 .. v17}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    new-instance v18, Landroid/animation/AnimatorSet$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->start()V

    .line 610
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 613
    .local v16, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 614
    .local v13, "numListeners":I
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v13, :cond_e

    .line 615
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 614
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 618
    .end local v13    # "numListeners":I
    .end local v16    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_f

    .line 621
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 625
    .restart local v16    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 626
    .restart local v13    # "numListeners":I
    const/4 v6, 0x0

    :goto_a
    if-ge v6, v13, :cond_f

    .line 627
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 626
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 631
    .end local v13    # "numListeners":I
    .end local v16    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_f
    return-void

    .line 589
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
