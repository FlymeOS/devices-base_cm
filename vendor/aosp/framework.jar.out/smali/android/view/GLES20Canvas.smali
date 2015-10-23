.class Landroid/view/GLES20Canvas;
.super Landroid/view/HardwareCanvas;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Canvas$CanvasFinalizer;
    }
.end annotation


# static fields
.field private static sIsAvailable:Z


# instance fields
.field private mClipBounds:Landroid/graphics/Rect;

.field private mFilter:Landroid/graphics/DrawFilter;

.field private mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

.field private mHeight:I

.field private mLine:[F

.field private final mOpaque:Z

.field private mPathBounds:Landroid/graphics/RectF;

.field private mPoint:[F

.field protected mRenderer:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/view/GLES20Canvas;->nIsAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/view/HardwareCanvas;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    .line 81
    invoke-static {}, Landroid/view/GLES20Canvas;->nCreateDisplayListRenderer()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    .line 82
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->setupFinalizer()V

    .line 83
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 43
    invoke-static {p0, p1}, Landroid/view/GLES20Canvas;->nDestroyRenderer(J)V

    return-void
.end method

.method private getInternalClipBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getLineStorage()[F
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    return-object v0
.end method

.method private getPathBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPathBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPathBounds:Landroid/graphics/RectF;

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPathBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getPointStorage()[F
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    return-object v0
.end method

.method static isAvailable()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return v0
.end method

.method private static native nCallDrawGLFunction(JJ)I
.end method

.method private static native nClipPath(JJI)Z
.end method

.method private static native nClipRect(JFFFFI)Z
.end method

.method private static native nClipRect(JIIIII)Z
.end method

.method private static native nClipRegion(JJI)Z
.end method

.method private static native nConcatMatrix(JJ)V
.end method

.method private static native nCreateDisplayListRenderer()J
.end method

.method private static native nDestroyRenderer(J)V
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
.end method

.method private static native nDrawBitmap(JJFFFFFFFFJ)V
.end method

.method private static native nDrawBitmap(JJFFJ)V
.end method

.method private static native nDrawBitmap(JJJJ)V
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native nDrawBitmapMesh(JJII[FI[IIJ)V
.end method

.method private static native nDrawCircle(JFFFJ)V
.end method

.method private static native nDrawCircle(JJJJJ)V
.end method

.method private static native nDrawColor(JII)V
.end method

.method private static native nDrawLayer(JJFF)V
.end method

.method private static native nDrawLines(J[FIIJ)V
.end method

.method private static native nDrawOval(JFFFFJ)V
.end method

.method private static native nDrawPatch(JJJFFFFJ)V
.end method

.method private static native nDrawPath(JJJ)V
.end method

.method private static native nDrawPoints(J[FIIJ)V
.end method

.method private static native nDrawRect(JFFFFJ)V
.end method

.method private static native nDrawRects(JJJ)V
.end method

.method private static native nDrawRenderNode(JJLandroid/graphics/Rect;I)I
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJJ)V
.end method

.method private static native nDrawText(J[CIIFFIJJ)V
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;IIJFFIJJ)V
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJJ)V
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native nFinish(J)V
.end method

.method protected static native nFinishRecording(J)J
.end method

.method private static native nGetClipBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native nGetMatrix(JJ)V
.end method

.method private static native nGetMaximumTextureHeight()I
.end method

.method private static native nGetMaximumTextureWidth()I
.end method

.method private static native nGetSaveCount(J)I
.end method

.method private static native nInsertReorderBarrier(JZ)V
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nPrepare(JZ)I
.end method

.method private static native nPrepareDirty(JIIIIZ)I
.end method

.method private static native nQuickReject(JFFFF)Z
.end method

.method private static native nResetDisplayListRenderer(J)V
.end method

.method private static native nResetPaintFilter(J)V
.end method

.method private static native nRestore(J)V
.end method

.method private static native nRestoreToCount(JI)V
.end method

.method private static native nRotate(JF)V
.end method

.method private static native nSave(JI)I
.end method

.method private static native nSaveLayer(JFFFFJI)I
.end method

.method private static native nSaveLayer(JJI)I
.end method

.method private static native nSaveLayerAlpha(JFFFFII)I
.end method

.method private static native nSaveLayerAlpha(JII)I
.end method

.method private static native nScale(JFF)V
.end method

.method private static native nSetHighContrastText(JZ)V
.end method

.method private static native nSetMatrix(JJ)V
.end method

.method private static native nSetProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nSetViewport(JII)V
.end method

.method private static native nSetupPaintFilter(JII)V
.end method

.method private static native nSkew(JFF)V
.end method

.method private static native nTranslate(JFF)V
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p0, p1}, Landroid/view/GLES20Canvas;->nSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private setupFinalizer()V
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create GLES20Canvas renderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    new-instance v0, Landroid/view/GLES20Canvas$CanvasFinalizer;

    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-direct {v0, v2, v3}, Landroid/view/GLES20Canvas$CanvasFinalizer;-><init>(J)V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

    .line 91
    return-void
.end method


# virtual methods
.method public callDrawGLFunction2(J)I
    .locals 3
    .param p1, "drawGLFunction"    # J

    .prologue
    .line 220
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/GLES20Canvas;->nCallDrawGLFunction(JJ)I

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .locals 5
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 281
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v4, v4, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/GLES20Canvas;->nClipPath(JJI)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 286
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/GLES20Canvas;->nClipPath(JJI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFF)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 293
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 301
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 306
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nClipRect(JIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 314
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nClipRect(JIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 320
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nClipRect(JIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 325
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 331
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 336
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v4, v4, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/GLES20Canvas;->nClipRegion(JJI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 341
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/GLES20Canvas;->nClipRegion(JJI)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 423
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/GLES20Canvas;->nConcatMatrix(JJ)V

    .line 424
    :cond_0
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 553
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 554
    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 543
    iget-wide v1, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p8

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativePaint:J

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v11}, Landroid/view/GLES20Canvas;->nDrawArc(JFFFFFFZJ)V

    .line 545
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 579
    invoke-static {p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 580
    if-nez p4, :cond_0

    const-wide/16 v6, 0x0

    .line 581
    .local v6, "nativePaint":J
    :goto_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawBitmap(JJFFJ)V

    .line 582
    return-void

    .line 580
    .end local v6    # "nativePaint":J
    :cond_0
    iget-wide v6, p4, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 589
    invoke-static {p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 590
    if-nez p3, :cond_0

    const-wide/16 v6, 0x0

    .line 591
    .local v6, "nativePaint":J
    :goto_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativeBitmap:J

    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawBitmap(JJJJ)V

    .line 592
    return-void

    .line 590
    .end local v6    # "nativePaint":J
    :cond_0
    iget-wide v6, p3, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 20
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 599
    invoke-static/range {p1 .. p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 600
    if-nez p4, :cond_0

    const-wide/16 v14, 0x0

    .line 603
    .local v14, "nativePaint":J
    :goto_0
    if-nez p2, :cond_1

    .line 604
    const/16 v19, 0x0

    .local v19, "top":I
    move/from16 v17, v19

    .line 605
    .local v17, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 606
    .local v18, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 614
    .local v16, "bottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v7, v0

    move/from16 v0, v18

    int-to-float v8, v0

    move/from16 v0, v16

    int-to-float v9, v0

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-static/range {v2 .. v15}, Landroid/view/GLES20Canvas;->nDrawBitmap(JJFFFFFFFFJ)V

    .line 616
    return-void

    .line 600
    .end local v14    # "nativePaint":J
    .end local v16    # "bottom":I
    .end local v17    # "left":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    :cond_0
    move-object/from16 v0, p4

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0

    .line 608
    .restart local v14    # "nativePaint":J
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 609
    .restart local v17    # "left":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 610
    .restart local v18    # "right":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 611
    .restart local v19    # "top":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .restart local v16    # "bottom":I
    goto :goto_1
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 620
    invoke-static/range {p1 .. p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 621
    if-nez p4, :cond_0

    const-wide/16 v14, 0x0

    .line 624
    .local v14, "nativePaint":J
    :goto_0
    if-nez p2, :cond_1

    .line 625
    const/4 v7, 0x0

    .local v7, "top":F
    move v6, v7

    .line 626
    .local v6, "left":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v8, v2

    .line 627
    .local v8, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v9, v2

    .line 635
    .local v9, "bottom":F
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v2 .. v15}, Landroid/view/GLES20Canvas;->nDrawBitmap(JJFFFFFFFFJ)V

    .line 637
    return-void

    .line 621
    .end local v6    # "left":F
    .end local v7    # "top":F
    .end local v8    # "right":F
    .end local v9    # "bottom":F
    .end local v14    # "nativePaint":J
    :cond_0
    move-object/from16 v0, p4

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0

    .line 629
    .restart local v14    # "nativePaint":J
    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    .line 630
    .restart local v6    # "left":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    .line 631
    .restart local v8    # "right":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    .line 632
    .restart local v7    # "top":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v2

    .restart local v9    # "bottom":F
    goto :goto_1
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 646
    if-gez p6, :cond_0

    .line 647
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_0
    if-gez p7, :cond_1

    .line 651
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 654
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    .line 655
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    :cond_2
    add-int/lit8 v2, p7, -0x1

    mul-int v2, v2, p3

    add-int v14, p2, v2

    .line 659
    .local v14, "lastScanline":I
    move-object/from16 v0, p1

    array-length v15, v0

    .line 661
    .local v15, "length":I
    if-ltz p2, :cond_3

    add-int v2, p2, p6

    if-gt v2, v15, :cond_3

    if-ltz v14, :cond_3

    add-int v2, v14, p6

    if-le v2, v15, :cond_4

    .line 663
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 666
    :cond_4
    if-nez p9, :cond_5

    const-wide/16 v12, 0x0

    .line 667
    .local v12, "nativePaint":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 669
    return-void

    .line 666
    .end local v12    # "nativePaint":J
    :cond_5
    move-object/from16 v0, p9

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 677
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 678
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 683
    invoke-static/range {p1 .. p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 684
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p5, :cond_0

    if-gez p7, :cond_1

    .line 685
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 688
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 702
    :cond_2
    :goto_0
    return-void

    .line 692
    :cond_3
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    mul-int v14, v2, v3

    .line 693
    .local v14, "count":I
    move-object/from16 v0, p4

    array-length v2, v0

    mul-int/lit8 v3, v14, 0x2

    move/from16 v0, p5

    invoke-static {v2, v0, v3}, Landroid/view/GLES20Canvas;->checkRange(III)V

    .line 695
    if-eqz p6, :cond_4

    .line 696
    move-object/from16 v0, p6

    array-length v2, v0

    move/from16 v0, p7

    invoke-static {v2, v0, v14}, Landroid/view/GLES20Canvas;->checkRange(III)V

    .line 699
    :cond_4
    if-nez p8, :cond_5

    const-wide/16 v12, 0x0

    .line 700
    .local v12, "nativePaint":J
    :goto_1
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    goto :goto_0

    .line 699
    .end local v12    # "nativePaint":J
    :cond_5
    move-object/from16 v0, p8

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_1
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 710
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v5, p4, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nDrawCircle(JFFFJ)V

    .line 711
    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Landroid/view/GLES20Canvas;->nDrawCircle(JJJJJ)V

    .line 721
    return-void
.end method

.method public drawColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 741
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/view/GLES20Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 742
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 746
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/view/GLES20Canvas;->nDrawColor(JII)V

    .line 747
    return-void
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 244
    invoke-virtual {p1, p4}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 245
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getLayerHandle()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawLayer(JJFF)V

    .line 246
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 3
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 753
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getLineStorage()[F

    move-result-object v0

    .line 754
    .local v0, "line":[F
    aput p1, v0, v2

    .line 755
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 756
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 757
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 758
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1, p5}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 759
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 763
    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 765
    :cond_0
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lines array must contain 4 elements per line."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_2
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v5, p4, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nDrawLines(J[FIIJ)V

    goto :goto_0
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 776
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 777
    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 781
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v6, p5, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawOval(JFFFFJ)V

    .line 782
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 789
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getInternalClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 790
    .local v6, "r":Landroid/graphics/Rect;
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, v6}, Landroid/view/GLES20Canvas;->nGetClipBounds(JLandroid/graphics/Rect;)Z

    .line 791
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 792
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 15
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 559
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v14}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 560
    if-nez p3, :cond_0

    const-wide/16 v12, 0x0

    .line 561
    .local v12, "nativePaint":J
    :goto_0
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v4, v14, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawPatch(JJJFFFFJ)V

    .line 563
    return-void

    .line 560
    .end local v12    # "nativePaint":J
    :cond_0
    move-object/from16 v0, p3

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 15
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 568
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v14}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 569
    if-nez p3, :cond_0

    const-wide/16 v12, 0x0

    .line 570
    .local v12, "nativePaint":J
    :goto_0
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v4, v14, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawPatch(JJJFFFFJ)V

    .line 572
    return-void

    .line 569
    .end local v12    # "nativePaint":J
    :cond_0
    move-object/from16 v0, p3

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 796
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    .line 798
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v4, p2, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawRects(JJJ)V

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v4, p2, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawPath(JJJ)V

    goto :goto_0
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 810
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 812
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 816
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getPointStorage()[F

    move-result-object v0

    .line 817
    .local v0, "point":[F
    aput p1, v0, v2

    .line 818
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 819
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1, p3}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 820
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 829
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v5, p4, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nDrawPoints(J[FIIJ)V

    goto :goto_0
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 824
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 825
    return-void
.end method

.method public drawRGB(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 860
    const/high16 v0, -0x1000000

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 861
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 841
    cmpl-float v0, p1, p3

    if-eqz v0, :cond_0

    cmpl-float v0, p2, p4

    if-nez v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v6, p5, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawRect(JFFFFJ)V

    goto :goto_0
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 850
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 851
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 855
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 856
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;Landroid/graphics/Rect;I)I
    .locals 6
    .param p1, "renderNode"    # Landroid/view/RenderNode;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    .line 233
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawRenderNode(JJLandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 866
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p7

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativePaint:J

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v11}, Landroid/view/GLES20Canvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 867
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v14

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v16

    invoke-static/range {v2 .. v17}, Landroid/view/GLES20Canvas;->nDrawRoundRect(JJJJJJJJ)V

    .line 734
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 887
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 888
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 890
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_2

    .line 892
    :cond_1
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    .line 903
    :goto_0
    return-void

    .line 894
    :cond_2
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 895
    check-cast v2, Landroid/text/GraphicsOperations;

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 897
    :cond_3
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v4

    .line 898
    .local v4, "buf":[C
    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p1, v0, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 899
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    const/4 v5, 0x0

    sub-int v6, p3, p2

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawText(J[CIIFFIJJ)V

    .line 901
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 920
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p4

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    .line 922
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 907
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 908
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 911
    :cond_0
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    .line 913
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 874
    or-int v2, p2, p3

    add-int v3, p2, p3

    or-int/2addr v2, v3

    array-length v3, p1

    sub-int v3, v3, p2

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 875
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 878
    :cond_0
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawText(J[CIIFFIJJ)V

    .line 880
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 941
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Landroid/graphics/Path;->mNativePath:J

    move-object/from16 v0, p5

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p5

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p5

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static/range {v2 .. v15}, Landroid/view/GLES20Canvas;->nDrawTextOnPath(JLjava/lang/String;IIJFFIJJ)V

    goto :goto_0
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 927
    if-ltz p2, :cond_0

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 928
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 931
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p4

    iget-wide v7, v0, Landroid/graphics/Path;->mNativePath:J

    move-object/from16 v0, p7

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p7

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p7

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v15}, Landroid/view/GLES20Canvas;->nDrawTextOnPath(J[CIIJFFIJJ)V

    .line 933
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 968
    or-int v4, p2, p3

    sub-int v5, p3, p2

    or-int/2addr v4, v5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v5, v5, p3

    or-int/2addr v4, v5

    if-gez v4, :cond_0

    .line 969
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 972
    :cond_0
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannedString;

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannableString;

    if-eqz v4, :cond_2

    .line 974
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v4 .. v17}, Landroid/view/GLES20Canvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    .line 988
    :goto_0
    return-void

    .line 976
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/GraphicsOperations;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    .line 977
    check-cast v4, Landroid/text/GraphicsOperations;

    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v4 .. v13}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 980
    :cond_3
    sub-int v10, p5, p4

    .line 981
    .local v10, "contextLen":I
    sub-int v8, p3, p2

    .line 982
    .local v8, "len":I
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v6

    .line 983
    .local v6, "buf":[C
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v6, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 984
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    sub-int v7, p2, p4

    const/4 v9, 0x0

    move-object/from16 v0, p9

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v4 .. v17}, Landroid/view/GLES20Canvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 986
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 954
    or-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, p2

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 955
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 958
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/GLES20Canvas;->mRenderer:J

    move-object/from16 v0, p9

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p9

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v2 .. v15}, Landroid/view/GLES20Canvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 960
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 998
    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 348
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1}, Landroid/view/GLES20Canvas;->nGetClipBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/view/GLES20Canvas;->mHeight:I

    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 416
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/GLES20Canvas;->nGetMatrix(JJ)V

    .line 417
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Landroid/view/GLES20Canvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Landroid/view/GLES20Canvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method getRenderer()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    return-wide v0
.end method

.method public getSaveCount()I
    .locals 2

    .prologue
    .line 508
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nGetSaveCount(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/view/GLES20Canvas;->mWidth:I

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 3

    .prologue
    .line 188
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nInsertReorderBarrier(JZ)V

    .line 189
    return-void
.end method

.method public insertReorderBarrier()V
    .locals 3

    .prologue
    .line 183
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nInsertReorderBarrier(JZ)V

    .line 184
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    return v0
.end method

.method public onPostDraw()V
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nFinish(J)V

    .line 210
    return-void
.end method

.method public onPreDraw(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v6, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nPrepareDirty(JIIIIZ)I

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget-boolean v2, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nPrepare(JZ)I

    move-result v0

    goto :goto_0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 355
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getPathBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 364
    .local v6, "pathBounds":Landroid/graphics/RectF;
    const/4 v0, 0x1

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 365
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 371
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nRestore(J)V

    .line 495
    return-void
.end method

.method public restoreToCount(I)V
    .locals 2
    .param p1, "saveCount"    # I

    .prologue
    .line 501
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1}, Landroid/view/GLES20Canvas;->nRestoreToCount(JI)V

    .line 502
    return-void
.end method

.method public rotate(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    .line 394
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1}, Landroid/view/GLES20Canvas;->nRotate(JF)V

    .line 395
    return-void
.end method

.method public save()I
    .locals 3

    .prologue
    .line 434
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .locals 2
    .param p1, "saveFlags"    # I

    .prologue
    .line 439
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1}, Landroid/view/GLES20Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "saveFlags"    # I

    .prologue
    .line 459
    cmpg-float v0, p1, p3

    if-gez v0, :cond_1

    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    .line 460
    if-nez p5, :cond_0

    const-wide/16 v6, 0x0

    .line 461
    .local v6, "nativePaint":J
    :goto_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nSaveLayer(JFFFFJI)I

    move-result v0

    .line 463
    .end local v6    # "nativePaint":J
    :goto_1
    return v0

    .line 460
    :cond_0
    iget-wide v6, p5, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v0

    goto :goto_1
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "saveFlags"    # I

    .prologue
    .line 446
    if-eqz p1, :cond_0

    .line 447
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 451
    :goto_0
    return v0

    .line 450
    :cond_0
    if-nez p2, :cond_1

    const-wide/16 v8, 0x0

    .line 451
    .local v8, "nativePaint":J
    :goto_1
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, v8, v9, p3}, Landroid/view/GLES20Canvas;->nSaveLayer(JJI)I

    move-result v0

    goto :goto_0

    .line 450
    .end local v8    # "nativePaint":J
    :cond_1
    iget-wide v8, p2, Landroid/graphics/Paint;->mNativePaint:J

    goto :goto_1
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I
    .param p6, "saveFlags"    # I

    .prologue
    .line 483
    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    cmpg-float v0, p2, p4

    if-gez v0, :cond_0

    .line 484
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nSaveLayerAlpha(JFFFFII)I

    move-result v0

    .line 486
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v0

    goto :goto_0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I
    .param p3, "saveFlags"    # I

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 472
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    .line 475
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p2, p3}, Landroid/view/GLES20Canvas;->nSaveLayerAlpha(JII)I

    move-result v0

    goto :goto_0
.end method

.method public scale(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 401
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/GLES20Canvas;->nScale(JFF)V

    .line 402
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    .prologue
    .line 519
    iput-object p1, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    .line 520
    if-nez p1, :cond_1

    .line 521
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v2, v3}, Landroid/view/GLES20Canvas;->nResetPaintFilter(J)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    instance-of v1, p1, Landroid/graphics/PaintFlagsDrawFilter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 523
    check-cast v0, Landroid/graphics/PaintFlagsDrawFilter;

    .line 524
    .local v0, "flagsFilter":Landroid/graphics/PaintFlagsDrawFilter;
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    iget v1, v0, Landroid/graphics/PaintFlagsDrawFilter;->clearBits:I

    iget v4, v0, Landroid/graphics/PaintFlagsDrawFilter;->setBits:I

    invoke-static {v2, v3, v1, v4}, Landroid/view/GLES20Canvas;->nSetupPaintFilter(JII)V

    goto :goto_0
.end method

.method public setHighContrastText(Z)V
    .locals 2
    .param p1, "highContrastText"    # Z

    .prologue
    .line 176
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1}, Landroid/view/GLES20Canvas;->nSetHighContrastText(JZ)V

    .line 177
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 408
    iget-wide v2, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/view/GLES20Canvas;->nSetMatrix(JJ)V

    .line 409
    return-void

    .line 408
    :cond_0
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_0
.end method

.method public setViewport(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 165
    iput p1, p0, Landroid/view/GLES20Canvas;->mWidth:I

    .line 166
    iput p2, p0, Landroid/view/GLES20Canvas;->mHeight:I

    .line 168
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/GLES20Canvas;->nSetViewport(JII)V

    .line 169
    return-void
.end method

.method public skew(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 387
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/GLES20Canvas;->nSkew(JFF)V

    .line 388
    return-void
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x0

    .line 380
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas;->mRenderer:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/GLES20Canvas;->nTranslate(JFF)V

    .line 381
    :cond_1
    return-void
.end method
