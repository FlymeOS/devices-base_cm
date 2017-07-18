.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 28
    return-void
.end method


# virtual methods
.method animateValue(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 69
    return-void
.end method

.method animationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 41
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_0

    .line 42
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v2, p1, v0

    .line 43
    .local v2, "totalTime":J
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    const-wide/16 v4, 0x0

    .line 44
    .local v4, "deltaTime":J
    :goto_0
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 45
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    .line 47
    .end local v2    # "totalTime":J
    .end local v4    # "deltaTime":J
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 43
    .restart local v2    # "totalTime":J
    :cond_1
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    .restart local v4    # "deltaTime":J
    goto :goto_0
.end method

.method initAnimation()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    .prologue
    .line 52
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, "currentTime":J
    iget-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v4, v0, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/TimeAnimator;->mStartTimeCommitted:Z

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/animation/TimeAnimator;->animationFrame(J)Z

    .line 51
    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/TimeAnimator$TimeListener;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 64
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 36
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 34
    return-void
.end method
