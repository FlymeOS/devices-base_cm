.class Lcom/android/server/wm/MoveWindowService$3;
.super Ljava/lang/Object;
.source "MoveWindowService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MoveWindowService;->moveWinDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final displayContent:Lcom/android/server/wm/DisplayContent;

.field fromY:I

.field final intEvaluator:Landroid/animation/IntEvaluator;

.field final realdh:I

.field final rotated:Z

.field final synthetic this$0:Lcom/android/server/wm/MoveWindowService;

.field toY:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v2, Landroid/animation/IntEvaluator;

    invoke-direct {v2}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->intEvaluator:Landroid/animation/IntEvaluator;

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v2, v2, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->displayContent:Lcom/android/server/wm/DisplayContent;

    .line 122
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v2, v2, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v2, v2, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/MoveWindowService$3;->rotated:Z

    .line 124
    iget-boolean v0, p0, Lcom/android/server/wm/MoveWindowService$3;->rotated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->displayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    iput v0, p0, Lcom/android/server/wm/MoveWindowService$3;->realdh:I

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/android/server/wm/MoveWindowService$3;->fromY:I

    .line 127
    iget v0, p0, Lcom/android/server/wm/MoveWindowService$3;->realdh:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/MoveWindowService$3;->toY:I

    return-void

    :cond_2
    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->displayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 136
    .local v0, "f":F
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->intEvaluator:Landroid/animation/IntEvaluator;

    iget v3, p0, Lcom/android/server/wm/MoveWindowService$3;->fromY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/MoveWindowService$3;->toY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    .local v1, "jY":I
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/wm/MoveWindowService;->moveTopAppShowFrame(II)V
    invoke-static {v2, v3, v1}, Lcom/android/server/wm/MoveWindowService;->access$400(Lcom/android/server/wm/MoveWindowService;II)V

    goto :goto_0
.end method
