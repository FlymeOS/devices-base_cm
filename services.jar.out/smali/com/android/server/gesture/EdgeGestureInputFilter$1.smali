.class Lcom/android/server/gesture/EdgeGestureInputFilter$1;
.super Ljava/lang/Object;
.source "EdgeGestureInputFilter.java"

# interfaces
.implements Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/gesture/EdgeGestureInputFilter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gesture/EdgeGestureInputFilter;


# direct methods
.method constructor <init>(Lcom/android/server/gesture/EdgeGestureInputFilter;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$1;->this$0:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivation(Landroid/view/MotionEvent;IILcom/android/internal/util/gesture/EdgeGesturePosition;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I
    .param p4, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$1;->this$0:Lcom/android/server/gesture/EdgeGestureInputFilter;

    # getter for: Lcom/android/server/gesture/EdgeGestureInputFilter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->access$000(Lcom/android/server/gesture/EdgeGestureInputFilter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d17

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$1;->this$0:Lcom/android/server/gesture/EdgeGestureInputFilter;

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    # setter for: Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    invoke-static {v0, v1}, Lcom/android/server/gesture/EdgeGestureInputFilter;->access$102(Lcom/android/server/gesture/EdgeGestureInputFilter;Lcom/android/server/gesture/EdgeGestureInputFilter$State;)Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 185
    return-void
.end method
