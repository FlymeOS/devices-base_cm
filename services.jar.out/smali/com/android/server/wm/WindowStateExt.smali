.class Lcom/android/server/wm/WindowStateExt;
.super Ljava/lang/Object;
.source "WindowStateExt.java"


# static fields
.field public static DEBUG_MOVEWIN:Z


# instance fields
.field public mBackupFlags:I

.field mFrameOffsetX:I

.field mFrameOffsetY:I

.field private mIsInMoveMode:Z

.field private mIsMovingFinished:Z

.field mMovedX:I

.field mMovedY:I

.field mPreMovedShowX:I

.field mPreMovedShowY:I

.field mShownOffsetX:F

.field mShownOffsetY:F

.field mWindowState:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    sget-boolean v0, Lcom/android/server/wm/MoveWindowService;->DEBUG_MOVEWIN:Z

    sput-boolean v0, Lcom/android/server/wm/WindowStateExt;->DEBUG_MOVEWIN:Z

    .line 5
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateExt;->mIsInMoveMode:Z

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateExt;->mIsMovingFinished:Z

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateExt;->mBackupFlags:I

    .line 16
    iput-object p1, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    .line 17
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateExt;->resetPosition()V

    .line 15
    return-void
.end method

.method private resetPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/android/server/wm/WindowStateExt;->mMovedX:I

    .line 83
    iput v0, p0, Lcom/android/server/wm/WindowStateExt;->mMovedY:I

    .line 84
    iput v0, p0, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowX:I

    .line 85
    iput v0, p0, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowY:I

    .line 81
    return-void
.end method


# virtual methods
.method public getFrameOffsetX()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetX:I

    return v0
.end method

.method public getFrameOffsetY()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetY:I

    return v0
.end method

.method public getMovedX()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/wm/WindowStateExt;->mMovedX:I

    return v0
.end method

.method public getMovedY()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/wm/WindowStateExt;->mMovedY:I

    return v0
.end method

.method public getShownOffsetX()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/wm/WindowStateExt;->mShownOffsetX:F

    return v0
.end method

.method public getShownOffsetY()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/wm/WindowStateExt;->mShownOffsetY:F

    return v0
.end method

.method public isInMovedMode()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateExt;->mIsInMoveMode:Z

    return v0
.end method

.method public isMovingFinished()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateExt;->mIsMovingFinished:Z

    return v0
.end method

.method public moveFrameForSubDisplay()V
    .locals 10

    .prologue
    .line 135
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    .line 136
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetX:I

    add-int v2, v8, v9

    .line 137
    .local v2, "frameX":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetY:I

    add-int v3, v8, v9

    .line 138
    .local v3, "frameY":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 140
    .end local v2    # "frameX":I
    .end local v3    # "frameY":I
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    if-eqz v8, :cond_1

    .line 141
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetX:I

    add-int v0, v8, v9

    .line 142
    .local v0, "contentFrameX":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetY:I

    add-int v1, v8, v9

    .line 143
    .local v1, "contentFrameY":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 145
    .end local v0    # "contentFrameX":I
    .end local v1    # "contentFrameY":I
    :cond_1
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v8, :cond_2

    .line 146
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetX:I

    add-int v6, v8, v9

    .line 147
    .local v6, "visibleFrameX":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetY:I

    add-int v7, v8, v9

    .line 148
    .local v7, "visibleFrameY":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 150
    .end local v6    # "visibleFrameX":I
    .end local v7    # "visibleFrameY":I
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    if-eqz v8, :cond_3

    .line 151
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetX:I

    add-int v4, v8, v9

    .line 152
    .local v4, "overscanFrameX":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetY:I

    add-int v5, v8, v9

    .line 153
    .local v5, "overscanFrameY":I
    iget-object v8, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 134
    .end local v4    # "overscanFrameX":I
    .end local v5    # "overscanFrameY":I
    :cond_3
    return-void
.end method

.method public moveShownFrame()V
    .locals 5

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    .line 75
    iget v2, p0, Lcom/android/server/wm/WindowStateExt;->mMovedX:I

    iget v3, p0, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowX:I

    sub-int v0, v2, v3

    .line 76
    .local v0, "offsetX":I
    iget v2, p0, Lcom/android/server/wm/WindowStateExt;->mMovedY:I

    iget v3, p0, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowY:I

    sub-int v1, v2, v3

    .line 77
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 71
    .end local v0    # "offsetX":I
    .end local v1    # "offsetY":I
    :cond_0
    return-void
.end method

.method public moveShownFrameForSubDisplay()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/server/wm/WindowStateExt;->mShownOffsetX:F

    add-float v0, v2, v3

    .line 129
    .local v0, "shownFrameX":F
    iget-object v2, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/server/wm/WindowStateExt;->mShownOffsetY:F

    add-float v1, v2, v3

    .line 130
    .local v1, "shownFrameY":F
    iget-object v2, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 126
    .end local v0    # "shownFrameX":F
    .end local v1    # "shownFrameY":F
    :cond_0
    return-void
.end method

.method public resetMoveWin()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 54
    sget-boolean v0, Lcom/android/server/wm/WindowStateExt;->DEBUG_MOVEWIN:Z

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "Move_Win"

    const-string/jumbo v1, "resetMoveWin() called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateExt;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowStateExt;->setIsInMovedMode(Z)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateExt;->setIsMovingFinished(Z)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowStateExt;->setMovedX(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowStateExt;->setMovedY(I)V

    .line 62
    iput v2, p0, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowX:I

    .line 63
    iput v2, p0, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowY:I

    .line 64
    iget v0, p0, Lcom/android/server/wm/WindowStateExt;->mBackupFlags:I

    if-eq v0, v3, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/WindowStateExt;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/wm/WindowStateExt;->mBackupFlags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 66
    iput v3, p0, Lcom/android/server/wm/WindowStateExt;->mBackupFlags:I

    .line 51
    :cond_1
    return-void
.end method

.method public setFrameOffsetX(I)V
    .locals 0
    .param p1, "offsetX"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetX:I

    .line 110
    return-void
.end method

.method public setFrameOffsetY(I)V
    .locals 0
    .param p1, "offsetY"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/wm/WindowStateExt;->mFrameOffsetY:I

    .line 114
    return-void
.end method

.method public setIsInMovedMode(Z)V
    .locals 0
    .param p1, "isInMoveMode"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateExt;->mIsInMoveMode:Z

    .line 35
    return-void
.end method

.method public setIsMovingFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateExt;->mIsMovingFinished:Z

    .line 40
    return-void
.end method

.method public setMovedX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/android/server/wm/WindowStateExt;->mMovedX:I

    .line 19
    return-void
.end method

.method public setMovedY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/wm/WindowStateExt;->mMovedY:I

    .line 24
    return-void
.end method

.method public setShownOffsetX(F)V
    .locals 0
    .param p1, "offsetX"    # F

    .prologue
    .line 95
    iput p1, p0, Lcom/android/server/wm/WindowStateExt;->mShownOffsetX:F

    .line 94
    return-void
.end method

.method public setShownOffsetY(F)V
    .locals 0
    .param p1, "offsetY"    # F

    .prologue
    .line 99
    iput p1, p0, Lcom/android/server/wm/WindowStateExt;->mShownOffsetY:F

    .line 98
    return-void
.end method
