.class Lcom/android/server/wm/MoveWindowService$SimpleAnimatorListener;
.super Ljava/lang/Object;
.source "MoveWindowService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MoveWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MoveWindowService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/MoveWindowService;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService$SimpleAnimatorListener;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 519
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 514
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 524
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 509
    return-void
.end method
