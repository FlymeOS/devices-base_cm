.class Lcom/android/internal/widget/WaveView$2;
.super Ljava/lang/Object;
.source "WaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/WaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/WaveView;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseX:F
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$100(Lcom/android/internal/widget/WaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterX:F
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$200(Lcom/android/internal/widget/WaveView;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v10, v2

    .line 439
    .local v10, "distX":D
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseY:F
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$300(Lcom/android/internal/widget/WaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterY:F
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$400(Lcom/android/internal/widget/WaveView;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v12, v2

    .line 440
    .local v12, "distY":D
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 441
    .local v0, "dragDistance":I
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockState:I
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$000(Lcom/android/internal/widget/WaveView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mSnapRadius:I
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$500(Lcom/android/internal/widget/WaveView;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$600(Lcom/android/internal/widget/WaveView;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    const-wide/16 v4, 0x7d0

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$600(Lcom/android/internal/widget/WaveView;)J

    move-result-wide v6

    const-wide/16 v8, 0xf

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    # setter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/widget/WaveView;->access$602(Lcom/android/internal/widget/WaveView;J)J

    .line 445
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$800(Lcom/android/internal/widget/WaveView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mCurrentWave:I
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$700(Lcom/android/internal/widget/WaveView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    .line 446
    .local v1, "wave":Lcom/android/internal/widget/DrawableHolder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 447
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 448
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 449
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseX:F
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$100(Lcom/android/internal/widget/WaveView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 450
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mMouseY:F
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$300(Lcom/android/internal/widget/WaveView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 452
    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "x"

    iget-object v7, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterX:F
    invoke-static {v7}, Lcom/android/internal/widget/WaveView;->access$200(Lcom/android/internal/widget/WaveView;)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 453
    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "y"

    iget-object v7, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mLockCenterY:F
    invoke-static {v7}, Lcom/android/internal/widget/WaveView;->access$400(Lcom/android/internal/widget/WaveView;)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 454
    const-wide/16 v2, 0x535

    const-wide/16 v4, 0x0

    const-string v6, "alpha"

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 455
    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "scaleX"

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 456
    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "scaleY"

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 458
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x514

    const-string v6, "alpha"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 459
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mCurrentWave:I
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$700(Lcom/android/internal/widget/WaveView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveCount:I
    invoke-static {v4}, Lcom/android/internal/widget/WaveView;->access$900(Lcom/android/internal/widget/WaveView;)I

    move-result v4

    rem-int/2addr v3, v4

    # setter for: Lcom/android/internal/widget/WaveView;->mCurrentWave:I
    invoke-static {v2, v3}, Lcom/android/internal/widget/WaveView;->access$702(Lcom/android/internal/widget/WaveView;I)I

    .line 466
    .end local v1    # "wave":Lcom/android/internal/widget/DrawableHolder;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mFinishWaves:Z
    invoke-static {v2}, Lcom/android/internal/widget/WaveView;->access$1000(Lcom/android/internal/widget/WaveView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/widget/WaveView;->mWavesRunning:Z
    invoke-static {v2, v3}, Lcom/android/internal/widget/WaveView;->access$1102(Lcom/android/internal/widget/WaveView;Z)Z

    .line 472
    :goto_1
    return-void

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    const-wide/16 v4, 0xc

    # += operator for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/widget/WaveView;->access$614(Lcom/android/internal/widget/WaveView;J)J

    goto :goto_0

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    iget-object v3, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/internal/widget/WaveView;->access$1200(Lcom/android/internal/widget/WaveView;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/WaveView$2;->this$0:Lcom/android/internal/widget/WaveView;

    # getter for: Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J
    invoke-static {v4}, Lcom/android/internal/widget/WaveView;->access$600(Lcom/android/internal/widget/WaveView;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
