.class Lcom/android/server/wm/MzDragState$6;
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
    .line 512
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$6;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$6;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$6;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$6;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 519
    :cond_0
    return-void
.end method
