.class final Landroid/widget/Editor$FlymeInjector;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hideSelectionModifierCursorController(Landroid/widget/Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6348
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 6349
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 6350
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 6347
    :cond_0
    return-void
.end method

.method static initFlymeExtraFields(Landroid/widget/Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6307
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mEnableDragSelection:Z

    .line 6306
    return-void
.end method

.method static injectDrawHardwareAccelerated(Landroid/widget/Editor;Landroid/text/Layout;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 6334
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 6335
    .local v0, "layoutHeight":I
    iget v1, p0, Landroid/widget/Editor;->mLastLayoutHeight:I

    if-eq v1, v0, :cond_0

    .line 6336
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 6337
    iput v0, p0, Landroid/widget/Editor;->mLastLayoutHeight:I

    .line 6333
    :cond_0
    return-void
.end method

.method static isFlymeCursorVisible(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6324
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v0

    return v0
.end method

.method static removeSelectonActionModeRunnable(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6342
    iget-object v0, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6343
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6341
    :cond_0
    return-void
.end method

.method static stopDragSelectionMode(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    const/4 v1, 0x0

    .line 6315
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v0, :cond_0

    .line 6316
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    .line 6317
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6318
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6314
    :cond_0
    return-void
.end method

.method static updateBackground(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6311
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->updateBackground(Z)V

    .line 6310
    return-void
.end method
