.class Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;
    .param p2, "x1"    # Lcom/android/internal/widget/AutoScrollHelper$1;

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 686
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # getter for: Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$100(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 714
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # getter for: Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$200(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # setter for: Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z
    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->access$202(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    .line 692
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # getter for: Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$300(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 695
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # getter for: Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$300(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v2

    .line 696
    .local v2, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # invokes: Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$400(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 697
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # setter for: Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z
    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->access$102(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    goto :goto_0

    .line 701
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # getter for: Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$500(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 702
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # setter for: Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z
    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->access$502(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    .line 703
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # invokes: Lcom/android/internal/widget/AutoScrollHelper;->cancelTargetTouch()V
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$600(Lcom/android/internal/widget/AutoScrollHelper;)V

    .line 706
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 708
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    .line 709
    .local v0, "deltaX":I
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    .line 710
    .local v1, "deltaY":I
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 713
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    # getter for: Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->access$700(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
