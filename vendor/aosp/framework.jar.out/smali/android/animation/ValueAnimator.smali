.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimationHandler;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field protected static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPauseTime:J

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/animation/ValueAnimator;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Landroid/animation/ValueAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 140
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 139
    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 144
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 143
    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 308
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 118
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 131
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 150
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 165
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 175
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 191
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 201
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 207
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 214
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 220
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 227
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 228
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    .line 231
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 232
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    .line 236
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 243
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 250
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 308
    return-void
.end method

.method public static clearAllAnimations()V
    .locals 2

    .prologue
    .line 1542
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1543
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    .line 1544
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1545
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1546
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1541
    :cond_0
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1291
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v2, :cond_0

    .line 1292
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1293
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1295
    :cond_0
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v2, :cond_2

    .line 1296
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1297
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1299
    :cond_1
    return v7

    .line 1300
    :cond_2
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v2, :cond_3

    .line 1301
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1302
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1304
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1307
    :cond_3
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v2

    .line 1308
    .local v0, "deltaTime":J
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 1310
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1311
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1312
    iput v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1313
    return v6

    .line 1315
    :cond_4
    return v7
.end method

.method public static getCurrentAnimationsCount()I
    .locals 2

    .prologue
    .line 1531
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1532
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDurationScale()F
    .locals 1

    .prologue
    .line 300
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 850
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1551
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1552
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_0

    .line 1553
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .end local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    invoke-direct {v0, v2}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 1554
    .restart local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1556
    :cond_0
    return-object v0
.end method

.method private notifyStartListeners()V
    .locals 4

    .prologue
    .line 1043
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz v3, :cond_1

    .line 1051
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1042
    return-void

    .line 1045
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1046
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1047
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1048
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 340
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 341
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 342
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 343
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .prologue
    .line 358
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 359
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 360
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 323
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 324
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 325
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 395
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 396
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 398
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 372
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 373
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 374
    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    .prologue
    .line 293
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 292
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 866
    invoke-static {p0, p1}, Landroid/view/Choreographer;->setFrameDelay(J)V

    .line 865
    return-void
.end method

.method private start(Z)V
    .locals 10
    .param p1, "playBackwards"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1068
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1069
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "Animators may only be run on Looper threads"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1071
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1072
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1073
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    .line 1074
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_6

    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    if-nez v2, :cond_6

    .line 1076
    iput v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1082
    :goto_0
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-int v2, v2

    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1083
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    rem-float/2addr v2, v7

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1085
    :cond_1
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    if-lez v2, :cond_3

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 1086
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v5, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    if-lt v2, v5, :cond_2

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-ne v2, v8, :cond_3

    .line 1089
    :cond_2
    if-eqz p1, :cond_9

    .line 1090
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1095
    :cond_3
    :goto_2
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1096
    .local v1, "prevPlayingState":I
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1097
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1098
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1099
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1100
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    .line 1101
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 1102
    .local v0, "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v2, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    .line 1105
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 1106
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 1108
    :cond_4
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1109
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1110
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1112
    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator$AnimationHandler;->start()V

    .line 1067
    return-void

    .line 1077
    .end local v0    # "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    .end local v1    # "prevPlayingState":I
    :cond_6
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-ne v2, v8, :cond_7

    .line 1078
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    rem-float/2addr v2, v7

    sub-float v2, v7, v2

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .line 1080
    :cond_7
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v5, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    int-to-float v5, v5

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    add-float/2addr v5, v6

    sub-float/2addr v2, v5

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    :cond_8
    move v2, v4

    .line 1090
    goto :goto_1

    .line 1092
    :cond_9
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_3
.end method

.method private startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 4
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v2, 0x8

    .line 1259
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 1260
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1263
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1264
    iget-object v0, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1268
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1258
    :cond_1
    return-void
.end method

.method private updateScaledDuration()V
    .locals 2

    .prologue
    .line 564
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 563
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 958
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 961
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 1454
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1455
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1456
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1457
    .local v2, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1458
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1461
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1462
    .local v1, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1463
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1453
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1347
    const/4 v0, 0x0

    .line 1348
    .local v0, "done":Z
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1388
    :goto_0
    return v0

    .line 1351
    :pswitch_0
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v6, v10

    if-lez v4, :cond_2

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v6, p1, v6

    long-to-float v4, v6

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v6, v6

    div-float v1, v4, v6

    .line 1352
    .local v1, "fraction":F
    :goto_1
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v6, v10

    if-nez v4, :cond_0

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-eq v4, v9, :cond_0

    .line 1354
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1355
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-nez v4, :cond_0

    .line 1356
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1359
    :cond_0
    cmpl-float v4, v1, v8

    if-ltz v4, :cond_5

    .line 1360
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v6, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v6, :cond_1

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-ne v4, v9, :cond_8

    .line 1362
    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1363
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1364
    .local v3, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1365
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1364
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1351
    .end local v1    # "fraction":F
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "fraction":F
    goto :goto_1

    .line 1368
    :cond_3
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 1369
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1371
    :cond_4
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1372
    rem-float/2addr v1, v8

    .line 1373
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1381
    :cond_5
    :goto_4
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_6

    .line 1382
    sub-float v1, v8, v1

    .line 1384
    :cond_6
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_0

    .line 1369
    :cond_7
    const/4 v4, 0x1

    goto :goto_3

    .line 1377
    :cond_8
    const/4 v0, 0x1

    .line 1378
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    .line 1348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 1124
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 1125
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1126
    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1125
    if-nez v4, :cond_0

    .line 1127
    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1125
    if-eqz v4, :cond_4

    .line 1129
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1130
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v4, :cond_2

    .line 1132
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1135
    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1136
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 1137
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1140
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 1121
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1469
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 1470
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1471
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1472
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1474
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1475
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1476
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1477
    iput v7, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1478
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1479
    iput v7, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1480
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1481
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1482
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1483
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1484
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1485
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1486
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1487
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1488
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1489
    const/4 v5, 0x0

    iput v5, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1490
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1492
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1493
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    .line 1494
    array-length v3, v4

    .line 1495
    .local v3, "numValues":I
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1496
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1498
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1499
    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    .line 1500
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1503
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method commitAnimationFrame(J)V
    .locals 3
    .param p1, "adjustment"    # J

    .prologue
    const/4 v1, 0x1

    .line 1323
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v0, :cond_0

    .line 1324
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1325
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1326
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1322
    :cond_0
    return-void
.end method

.method final doAnimationFrame(J)Z
    .locals 9
    .param p1, "frameTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 1398
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1399
    const/4 v4, 0x1

    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1400
    iget v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 1401
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1407
    :goto_0
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1409
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v4, :cond_3

    .line 1410
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1411
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1413
    :cond_1
    return v8

    .line 1403
    :cond_2
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v4, v4

    iget v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v4, v5

    float-to-long v2, v4

    .line 1404
    .local v2, "seekTime":J
    sub-long v4, p1, v2

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1405
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .line 1414
    .end local v2    # "seekTime":J
    :cond_3
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v4, :cond_4

    .line 1415
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1416
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 1418
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1419
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1426
    :cond_4
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1427
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v4

    return v4
.end method

.method public end()V
    .locals 2

    .prologue
    .line 1146
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 1147
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1152
    :cond_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v1, :cond_1

    .line 1153
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1155
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1156
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 1145
    return-void

    .line 1149
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1150
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 1151
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    goto :goto_0

    .line 1155
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method protected endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 8
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v6, 0x8

    const/4 v4, 0x0

    .line 1225
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1226
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1227
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1228
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1229
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1230
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1231
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_1

    .line 1233
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1236
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1237
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1238
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1239
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1243
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1244
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1245
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1246
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1247
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1249
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    .line 1250
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1249
    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1224
    :cond_3
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1437
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 883
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 886
    :cond_0
    return-object v2
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 900
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 901
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 905
    :cond_0
    return-object v2
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 653
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 654
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 656
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 574
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    const-string/jumbo v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 947
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 822
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 533
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 534
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 535
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 536
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 532
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1179
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    :cond_0
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1169
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1170
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1171
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1172
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1173
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1168
    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 968
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 969
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 972
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 967
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v1, 0x0

    .line 982
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 983
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 986
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 987
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 981
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1164
    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1160
    return-void
.end method

.method public reverse()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1196
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1197
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v8, :cond_2

    .line 1198
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1199
    .local v2, "currentTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v10

    .line 1200
    .local v0, "currentPlayTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mDuration:J

    sub-long v4, v10, v0

    .line 1201
    .local v4, "timeLeft":J
    sub-long v10, v2, v4

    iput-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1202
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1203
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v6, :cond_1

    :goto_1
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1195
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_2
    return-void

    :cond_0
    move v6, v8

    .line 1196
    goto :goto_0

    .restart local v0    # "currentPlayTime":J
    .restart local v2    # "currentTime":J
    .restart local v4    # "timeLeft":J
    :cond_1
    move v7, v8

    .line 1203
    goto :goto_1

    .line 1204
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :cond_2
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v6, :cond_3

    .line 1205
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_2

    .line 1207
    :cond_3
    invoke-direct {p0, v8}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_2
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 1605
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 12
    .param p1, "fraction"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    .line 610
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 611
    const/4 v7, 0x0

    cmpg-float v7, p1, v7

    if-gez v7, :cond_0

    .line 612
    const/4 p1, 0x0

    .line 614
    :cond_0
    float-to-int v2, p1

    .line 615
    .local v2, "iteration":I
    cmpl-float v7, p1, v10

    if-nez v7, :cond_3

    .line 616
    add-int/lit8 v2, v2, -0x1

    .line 630
    :goto_0
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 631
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v3, v8

    mul-float/2addr v3, p1

    float-to-long v4, v3

    .line 632
    .local v4, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 633
    .local v0, "currentTime":J
    sub-long v8, v0, v4

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 634
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 635
    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v3, v6, :cond_1

    .line 636
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 637
    iput v11, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 639
    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v3, :cond_2

    .line 640
    sub-float p1, v10, p1

    .line 642
    :cond_2
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 609
    return-void

    .line 617
    .end local v0    # "currentTime":J
    .end local v4    # "seekTime":J
    :cond_3
    cmpl-float v7, p1, v10

    if-lez v7, :cond_8

    .line 618
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v7, v7, 0x1

    if-lt v2, v7, :cond_4

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 619
    :cond_4
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v7, v11, :cond_6

    .line 620
    rem-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_5

    move v3, v6

    :cond_5
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 622
    :cond_6
    rem-float/2addr p1, v10

    .line 618
    goto :goto_0

    .line 624
    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 625
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 628
    :cond_8
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    .prologue
    .line 588
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    long-to-float v1, p1

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 589
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 587
    return-void

    .line 588
    .end local v0    # "fraction":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "fraction":F
    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 554
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    .line 559
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    .line 560
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .prologue
    const/4 v1, 0x0

    .line 1037
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1036
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 444
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 445
    :cond_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 448
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 454
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 443
    return-void

    .line 450
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 451
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    const/4 v3, 0x0

    .line 416
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 417
    :cond_0
    return-void

    .line 419
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 420
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 426
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 415
    return-void

    .line 422
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 423
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 1003
    if-eqz p1, :cond_0

    .line 1004
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1002
    :goto_0
    return-void

    .line 1006
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 476
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 477
    :cond_0
    return-void

    .line 479
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 480
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, v4, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 486
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 475
    return-void

    .line 482
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 483
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 918
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 917
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 938
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 937
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 833
    long-to-float v0, p1

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 834
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    .line 832
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 498
    array-length v1, p1

    .line 499
    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 500
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 502
    aget-object v2, p1, v0

    .line 503
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 497
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1567
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
