.class final Lcom/android/server/wm/InputMonitor$FlymeInjector;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setInputFocusLw(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p0, "inputMonitor"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->flymeGetFieldService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    .line 530
    .local v1, "service":Lcom/android/server/wm/WindowManagerService;
    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 535
    .local v0, "dragBinder":Landroid/os/IBinder;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-boolean v2, v2, Lcom/android/server/wm/DragState;->mMzOnTouching:Z

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->mzCancelDragLw()V

    .line 539
    .end local v0    # "dragBinder":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method static updateInputWindowsLw(Lcom/android/server/wm/InputMonitor;)V
    .locals 9
    .param p0, "inputMonitor"    # Lcom/android/server/wm/InputMonitor;

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->flymeGetFieldService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    .line 545
    .local v4, "service":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 546
    .local v0, "N":I
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 547
    .local v3, "list":Lcom/android/server/wm/WindowList;
    const/4 v5, 0x0

    .line 548
    .local v5, "specialWindow":Lcom/android/server/wm/WindowState;
    const/4 v1, -0x1

    .line 549
    .local v1, "insertPos":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_2

    .line 550
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 551
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7fb

    if-ne v7, v8, :cond_0

    .line 553
    move-object v5, v6

    .line 555
    :cond_0
    if-eqz v5, :cond_1

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v7, :cond_1

    iget v7, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v7, v8, :cond_1

    .line 557
    move v1, v2

    .line 549
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 560
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    if-eqz v5, :cond_3

    .line 561
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v3, v1, v5}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 564
    :cond_3
    return-void
.end method
