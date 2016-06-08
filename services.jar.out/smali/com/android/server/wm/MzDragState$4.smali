.class Lcom/android/server/wm/MzDragState$4;
.super Ljava/lang/Object;
.source "MzDragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MzDragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MzDragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MzDragState;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$4;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$4;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mDragObjectAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$4;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mDragObjectAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 279
    :cond_0
    return-void
.end method
