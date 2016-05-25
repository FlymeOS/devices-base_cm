.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .locals 23
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "tokens"    # [Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 63
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .line 64
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .local v10, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    .line 68
    .local v18, "len":I
    and-int/lit8 v18, v18, -0x2

    .line 69
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 71
    .local v11, "c1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 72
    .local v12, "c2":I
    const/16 v3, 0x61

    if-lt v11, v3, :cond_0

    const/16 v3, 0x66

    if-gt v11, v3, :cond_0

    add-int/lit8 v3, v11, -0x61

    add-int/lit8 v11, v3, 0xa

    .line 75
    :goto_1
    const/16 v3, 0x61

    if-lt v12, v3, :cond_2

    const/16 v3, 0x66

    if-gt v12, v3, :cond_2

    add-int/lit8 v3, v12, -0x61

    add-int/lit8 v12, v3, 0xa

    .line 78
    :goto_2
    mul-int/lit8 v3, v11, 0x10

    add-int/2addr v3, v12

    rsub-int v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v17, v17, 0x2

    goto :goto_0

    .line 73
    :cond_0
    const/16 v3, 0x41

    if-lt v11, v3, :cond_1

    const/16 v3, 0x46

    if-gt v11, v3, :cond_1

    add-int/lit8 v3, v11, -0x41

    add-int/lit8 v11, v3, 0xa

    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v11, v11, -0x30

    goto :goto_1

    .line 76
    :cond_2
    const/16 v3, 0x41

    if-lt v12, v3, :cond_3

    const/16 v3, 0x46

    if-gt v12, v3, :cond_3

    add-int/lit8 v3, v12, -0x41

    add-int/lit8 v12, v3, 0xa

    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v12, v12, -0x30

    goto :goto_2

    .line 81
    .end local v11    # "c1":I
    .end local v12    # "c2":I
    :cond_4
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v9

    .line 83
    .local v9, "appendDisplayVersion":I
    if-eqz v9, :cond_5

    .line 84
    const-string v3, " - "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "ro.cm.display.version"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 93
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x14

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v16

    .line 96
    .local v16, "fontSize":I
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    .line 101
    .local v15, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 102
    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 104
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 106
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    mul-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 108
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, -0x50000000

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v19

    .line 110
    .local v19, "shadowColor":I
    const/4 v3, 0x5

    const/4 v4, 0x0

    const v5, 0x60ffffff

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v13

    .line 112
    .local v13, "color":I
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v22

    .line 114
    .local v22, "shadowRadius":I
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    .line 116
    .local v20, "shadowDx":I
    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v21

    .line 119
    .local v21, "shadowDy":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 122
    const/4 v14, 0x0

    .line 124
    .local v14, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v4, "WatermarkSurface"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x3

    const/4 v8, 0x4

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v14    # "ctrl":Landroid/view/SurfaceControl;
    .local v2, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 127
    const v3, 0xf4240

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 128
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 129
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 134
    return-void

    .line 131
    .end local v2    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v14    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v3

    move-object v2, v14

    .end local v14    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v2    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 146
    iget-boolean v11, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v11, :cond_6

    .line 147
    iget v6, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 148
    .local v6, "dw":I
    iget v3, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 150
    .local v3, "dh":I
    iput-boolean v12, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 151
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v12, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v4, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 154
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    if-eqz v0, :cond_6

    .line 159
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    iget v11, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    if-nez v11, :cond_0

    iget v11, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    if-eqz v11, :cond_4

    .line 162
    :cond_0
    iget v1, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 163
    .local v1, "deltaX":I
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 167
    .local v2, "deltaY":I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    div-int v5, v11, v1

    .line 168
    .local v5, "div":I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    mul-int v12, v5, v1

    sub-int v8, v11, v12

    .line 169
    .local v8, "rem":I
    div-int/lit8 v7, v1, 0x4

    .line 170
    .local v7, "qdelta":I
    if-lt v8, v7, :cond_1

    sub-int v11, v1, v7

    if-le v8, v11, :cond_2

    .line 171
    :cond_1
    div-int/lit8 v11, v1, 0x3

    add-int/2addr v1, v11

    .line 174
    :cond_2
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v10, v11

    .line 175
    .local v10, "y":I
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v9, v11

    .line 176
    .local v9, "x":I
    :cond_3
    :goto_1
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v11, v3

    if-ge v10, v11, :cond_5

    .line 177
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v9

    int-to-float v13, v10

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    add-int/2addr v9, v1

    .line 179
    if-lt v9, v6, :cond_3

    .line 180
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    sub-int/2addr v9, v11

    .line 181
    add-int/2addr v10, v2

    goto :goto_1

    .line 185
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    .end local v5    # "div":I
    .end local v7    # "qdelta":I
    .end local v8    # "rem":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_4
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    iget v12, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    sub-int v12, v6, v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    mul-int/lit8 v13, v13, 0x4

    sub-int v13, v3, v13

    int-to-float v13, v13

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    :cond_5
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 191
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v3    # "dh":I
    .end local v4    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "dw":I
    :cond_6
    return-void

    .line 156
    .restart local v0    # "c":Landroid/graphics/Canvas;
    .restart local v3    # "dh":I
    .restart local v4    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "dw":I
    :catch_0
    move-exception v11

    goto :goto_0

    .line 155
    :catch_1
    move-exception v11

    goto :goto_0
.end method

.method positionSurface(II)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    .line 137
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    .line 138
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 139
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 143
    :cond_1
    return-void
.end method
