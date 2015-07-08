.class public Lcom/android/server/wm/InjectorWMS;
.super Ljava/lang/Object;
.source "InjectorWMS.java"


# static fields
.field private static final DEBUG_ANIM:Z = false

.field private static final TAG:Ljava/lang/String; = "InjectorWMS"

.field private static mAnimArray:Landroid/util/SparseIntArray;

.field private static mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v1, Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    .line 37
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "activity_open_enter"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_activity_to_next_open_enter:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "activity_open_exit"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_activity_to_next_open_exit:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "activity_close_enter"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_activity_to_next_close_enter:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "activity_close_exit"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_activity_to_next_close_exit:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "task_open_enter"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_enter:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "task_open_exit"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_exit:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "task_close_enter"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_enter:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "task_close_exit"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_exit:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "wallpaper_open_enter"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_wallpaper_close_enter:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "wallpaper_open_exit"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_wallpaper_close_exit:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "wallpaper_close_enter"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_enter:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v2, "wallpaper_close_exit"

    const-string v3, "anim"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_exit:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustMoveWindowBackupWindowFlag(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 184
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/MoveWindowService;->adjustBackupWindowFlag(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 187
    :cond_0
    return-void
.end method

.method static adjustMoveWindowInputWindow(ILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "viewVisibility"    # I
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 178
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/MoveWindowService;->adjustInputWindow(Lcom/android/server/wm/WindowState;I)V

    .line 181
    :cond_0
    return-void
.end method

.method static adjustMoveWindowOnOrientationChanged()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MoveWindowService;->adjustOnOrientationChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 164
    :cond_0
    return-void
.end method

.method static adjustMoveWindowWallpaperMoveWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 167
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MoveWindowService;->adjustWallpaperMoveWindow(Lcom/android/server/wm/WindowState;)V

    .line 170
    :cond_0
    return-void
.end method

.method static applyDarkStatusBarTheme()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Lcom/android/server/wm/InjectorWMS;->applyDarkStatusBarTheme(Lcom/android/server/wm/WindowState;)V

    .line 195
    :cond_0
    return-void
.end method

.method private static applyDarkStatusBarTheme(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "currentFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 199
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p0}, Landroid/view/WindowManagerPolicy;->shouldWindowAffectDarkStatusBarIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p0, v2, v2}, Landroid/view/WindowManagerPolicy;->setStatusBarDarkTheme(Landroid/view/WindowManagerPolicy$WindowState;ZZ)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p0, v3, v2}, Landroid/view/WindowManagerPolicy;->setStatusBarDarkTheme(Landroid/view/WindowManagerPolicy$WindowState;ZZ)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p0, p0}, Lcom/android/server/wm/WindowState;->getVisibleWindowUnderMe(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 207
    .local v0, "underCurrentFous":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    .line 211
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p0, v2, v2}, Landroid/view/WindowManagerPolicy;->setStatusBarDarkTheme(Landroid/view/WindowManagerPolicy$WindowState;ZZ)V

    goto :goto_0

    .line 213
    :cond_3
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p0, v3, v2}, Landroid/view/WindowManagerPolicy;->setStatusBarDarkTheme(Landroid/view/WindowManagerPolicy$WindowState;ZZ)V

    goto :goto_0
.end method

.method static endDragLw()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 129
    :cond_0
    return-void
.end method

.method static hookOnInputEvent(Landroid/view/InputEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v0, 0x1

    .line 109
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->mzIsDragAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    .end local p0    # "event":Landroid/view/InputEvent;
    :goto_0
    return v0

    .line 113
    .restart local p0    # "event":Landroid/view/InputEvent;
    :cond_0
    check-cast p0, Landroid/view/MotionEvent;

    .end local p0    # "event":Landroid/view/InputEvent;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 114
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->mzUnRegisterReceivers()V

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 73
    invoke-static {p1}, Lcom/android/server/wm/InjectorWMS;->mzOverlayAnim(I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static mzInsertMultipleWindow()V
    .locals 9

    .prologue
    .line 134
    sget-object v6, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 135
    .local v0, "N":I
    sget-object v6, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 136
    .local v3, "list":Lcom/android/server/wm/WindowList;
    const/4 v4, 0x0

    .line 137
    .local v4, "specialWindow":Lcom/android/server/wm/WindowState;
    const/4 v1, -0x1

    .line 138
    .local v1, "insertPos":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_2

    .line 139
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 140
    .local v5, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_0

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7fb

    if-ne v6, v7, :cond_0

    .line 142
    move-object v4, v5

    .line 144
    :cond_0
    if-eqz v4, :cond_1

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v6, :cond_1

    iget v6, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v7, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v6, v7, :cond_1

    .line 146
    move v1, v2

    .line 138
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 149
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    if-eqz v4, :cond_3

    .line 150
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 152
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert window="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    return-void
.end method

.method private static mzOverlayAnim(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 77
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mAnimArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 81
    .local v0, "overlayId":I
    if-lez v0, :cond_0

    .line 84
    .end local v0    # "overlayId":I
    :goto_0
    return v0

    .restart local v0    # "overlayId":I
    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method static mzSetInputFocusLw(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "newWindow"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 96
    .local v0, "dragBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-boolean v1, v1, Lcom/android/server/wm/DragState;->mMzOnTouching:Z

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->mzCancelDragLw()V

    .line 101
    .end local v0    # "dragBinder":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method static registerDragStateRegister()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->mzRegisterReceivers()V

    .line 123
    :cond_0
    return-void
.end method

.method static resetMoveWindowOnWindowChanged(ILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "viewVisibility"    # I
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMoveWindowService:Lcom/android/server/wm/MoveWindowService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/MoveWindowService;->resetOnWindowChanged(ILcom/android/server/wm/WindowState;)V

    .line 175
    :cond_0
    return-void
.end method

.method static setInitXandY(FFFF)V
    .locals 2
    .param p0, "touchX"    # F
    .param p1, "touchY"    # F
    .param p2, "thumbCenterX"    # F
    .param p3, "thumbCenterY"    # F

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    sub-float v1, p0, p2

    iput v1, v0, Lcom/android/server/wm/DragState;->mMzInitX:F

    .line 105
    sget-object v0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    sub-float v1, p1, p3

    iput v1, v0, Lcom/android/server/wm/DragState;->mMzInitY:F

    .line 106
    return-void
.end method

.method static setup(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 69
    sput-object p0, Lcom/android/server/wm/InjectorWMS;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 70
    return-void
.end method
