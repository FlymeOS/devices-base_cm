.class Lcom/android/server/wm/MoveWindowService$5;
.super Ljava/lang/Object;
.source "MoveWindowService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MoveWindowService;->moveWinNormal(I)V
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


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 165
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MoveWindowService$5;->intEvaluator:Landroid/animation/IntEvaluator;

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v1, v1, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/MoveWindowService$5;->displayContent:Lcom/android/server/wm/DisplayContent;

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v1, v1, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v1, v1, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/MoveWindowService$5;->rotated:Z

    .line 170
    iget-boolean v0, p0, Lcom/android/server/wm/MoveWindowService$5;->rotated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$5;->displayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    iput v0, p0, Lcom/android/server/wm/MoveWindowService$5;->realdh:I

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/server/wm/MoveWindowService$5;->fromY:I

    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$5;->displayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    .line 172
    :cond_3
    iget v0, p0, Lcom/android/server/wm/MoveWindowService$5;->realdh:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    # getter for: Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Lcom/android/server/wm/MoveWindowService;->access$000(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    const-string v2, "Move_Win"

    const-string v3, "Move normal animator cancel"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 182
    .local v0, "f":F
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$5;->intEvaluator:Landroid/animation/IntEvaluator;

    iget v3, p0, Lcom/android/server/wm/MoveWindowService$5;->fromY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "jY":I
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$5;->this$0:Lcom/android/server/wm/MoveWindowService;

    # invokes: Lcom/android/server/wm/MoveWindowService;->moveTopAppShowFrame(II)V
    invoke-static {v2, v5, v1}, Lcom/android/server/wm/MoveWindowService;->access$400(Lcom/android/server/wm/MoveWindowService;II)V

    goto :goto_0
.end method
