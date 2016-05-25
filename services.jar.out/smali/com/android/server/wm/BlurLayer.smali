.class public Lcom/android/server/wm/BlurLayer;
.super Ljava/lang/Object;
.source "BlurLayer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BlurLayer"


# instance fields
.field mBlur:F

.field mBlurSurface:Landroid/view/SurfaceControl;

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mLastBounds:Landroid/graphics/Rect;

.field mLayer:I

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field mStartBlur:F

.field mStartTime:J

.field mTargetBlur:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    .line 45
    iput v0, p0, Lcom/android/server/wm/BlurLayer;->mLayer:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurLayer;->mLastBounds:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BlurLayer;->mShowing:Z

    .line 57
    iput v1, p0, Lcom/android/server/wm/BlurLayer;->mStartBlur:F

    .line 60
    iput v1, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    .line 72
    iput-object p2, p0, Lcom/android/server/wm/BlurLayer;->mStack:Lcom/android/server/wm/TaskStack;

    .line 73
    iput-object p3, p0, Lcom/android/server/wm/BlurLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 76
    .local v7, "displayId":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 84
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "BlurLayer"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x10004

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 97
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v8

    .line 93
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Blur surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/BlurLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/BlurLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBlur(F)V
    .locals 3
    .param p1, "blur"    # F

    .prologue
    const/4 v2, 0x0

    .line 125
    iget v1, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setBlur(F)V

    .line 129
    cmpl-float v1, p1, v2

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/BlurLayer;->mShowing:Z

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/BlurLayer;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    .line 143
    :cond_1
    return-void

    .line 133
    :cond_2
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/BlurLayer;->mShowing:Z

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/BlurLayer;->mShowing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BlurLayer"

    const-string v2, "Failure setting blur immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method adjustBounds()V
    .locals 7

    .prologue
    .line 148
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 150
    .local v1, "dw":I
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 151
    .local v0, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v5

    .line 152
    .local v3, "xPos":F
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v4, v5

    .line 162
    .local v4, "yPos":F
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 163
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v1, v0}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 164
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    return-void

    .line 155
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v3    # "xPos":F
    .end local v4    # "yPos":F
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/BlurLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 156
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v1, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 157
    .restart local v1    # "dw":I
    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 158
    .restart local v0    # "dh":I
    const/4 v3, 0x0

    .line 159
    .restart local v3    # "xPos":F
    const/4 v4, 0x0

    .restart local v4    # "yPos":F
    goto :goto_0
.end method

.method destroySurface()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    .line 302
    :cond_0
    return-void
.end method

.method getLayer()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mLayer:I

    return v0
.end method

.method getTargetBlur()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    return v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/server/wm/BlurLayer;->mShowing:Z

    if-eqz v0, :cond_0

    .line 248
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BlurLayer;->hide(J)V

    .line 250
    :cond_0
    return-void
.end method

.method hide(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-boolean v0, p0, Lcom/android/server/wm/BlurLayer;->mShowing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BlurLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mLayer:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/BlurLayer;->show(IFJ)V

    .line 263
    :cond_1
    return-void
.end method

.method isAnimating()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    iget v1, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBlurring()Z
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 305
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBlurSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 306
    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 307
    const-string v0, " mBlur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 308
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    const-string v0, " mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    const-string v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/BlurLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 312
    const-string v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/BlurLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 313
    const-string v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 314
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mStartBlur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mStartBlur:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 315
    const-string v0, " mTargetBlur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 316
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "inTransaction"    # Z

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/BlurLayer;->isBlurring()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/BlurLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    if-nez p2, :cond_0

    .line 172
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BlurLayer;->adjustBounds()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-nez p2, :cond_1

    .line 179
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "BlurLayer"

    const-string v2, "Failure setting size"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-nez p2, :cond_1

    .line 179
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-nez p2, :cond_2

    .line 179
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_2
    throw v1
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mLayer:I

    if-eq v0, p1, :cond_0

    .line 115
    iput p1, p0, Lcom/android/server/wm/BlurLayer;->mLayer:I

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 118
    :cond_0
    return-void
.end method

.method show()V
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/BlurLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/BlurLayer;->show(IFJ)V

    .line 200
    :cond_0
    return-void
.end method

.method show(IFJ)V
    .locals 7
    .param p1, "layer"    # I
    .param p2, "blur"    # F
    .param p3, "duration"    # J

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 214
    const-string v1, "BlurLayer"

    const-string v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    iput v1, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    .line 241
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BlurLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/BlurLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wm/BlurLayer;->adjustBounds()V

    .line 223
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BlurLayer;->setLayer(I)V

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 226
    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/BlurLayer;->isAnimating()Z

    move-result v0

    .line 227
    .local v0, "animating":Z
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/BlurLayer;->durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-nez v0, :cond_4

    iget v1, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_4

    .line 229
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_5

    .line 231
    invoke-direct {p0, p2}, Lcom/android/server/wm/BlurLayer;->setBlur(F)V

    .line 240
    :cond_4
    :goto_1
    iput p2, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    goto :goto_0

    .line 234
    :cond_5
    iget v1, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    iput v1, p0, Lcom/android/server/wm/BlurLayer;->mStartBlur:F

    .line 235
    iput-wide v2, p0, Lcom/android/server/wm/BlurLayer;->mStartTime:J

    .line 236
    iput-wide p3, p0, Lcom/android/server/wm/BlurLayer;->mDuration:J

    goto :goto_1
.end method

.method stepAnimation()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 272
    iget-object v4, p0, Lcom/android/server/wm/BlurLayer;->mBlurSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_0

    .line 273
    const-string v4, "BlurLayer"

    const-string v5, "stepAnimation: null Surface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput v8, p0, Lcom/android/server/wm/BlurLayer;->mBlur:F

    iput v8, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    .line 276
    const/4 v4, 0x0

    .line 292
    :goto_0
    return v4

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BlurLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 281
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    iget v5, p0, Lcom/android/server/wm/BlurLayer;->mStartBlur:F

    sub-float v1, v4, v5

    .line 282
    .local v1, "blurDelta":F
    iget v4, p0, Lcom/android/server/wm/BlurLayer;->mStartBlur:F

    iget-wide v6, p0, Lcom/android/server/wm/BlurLayer;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/BlurLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 283
    .local v0, "blur":F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpg-float v4, v1, v8

    if-gez v4, :cond_3

    iget v4, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .line 286
    :cond_2
    iget v0, p0, Lcom/android/server/wm/BlurLayer;->mTargetBlur:F

    .line 289
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wm/BlurLayer;->setBlur(F)V

    .line 292
    .end local v0    # "blur":F
    .end local v1    # "blurDelta":F
    .end local v2    # "curTime":J
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/BlurLayer;->isAnimating()Z

    move-result v4

    goto :goto_0
.end method
